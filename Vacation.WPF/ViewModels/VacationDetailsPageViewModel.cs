using System.ComponentModel;
using System.Windows;
using System.Windows.Input;
using Vacation.WPF.Commands;
using Vacation.WPF.Infrastructure;
using Vacation.WPF.Models;
using Vacation.WPF.Views;

namespace Vacation.WPF.ViewModels;
public class VacationDetailsPageViewModel : INotifyPropertyChanged
{
    #region Properties
    public Person SelectedPerson { get; set; }
    private ICollectionView? _vacations { get; set; }
    public ICommand OpenDeleteVacationPopupCommand { get; set; }
    public ICommand NavigateToEditVacationPageCommand { get; set; }
    public ICollectionView? Vacations
    {
        get => _vacations;
        set
        {
            _vacations = value;
            OnPropertyChanged(nameof(_vacations));
        }
    }

    public event PropertyChangedEventHandler? PropertyChanged;
    public int TakenVacationDays { get; set; }
    public int RemainingVacationDays { get; set; }
    #endregion

    #region Constructors
    public VacationDetailsPageViewModel(Person person)
    {
        SelectedPerson = person;
        Vacations = DataContext.GetVacationsByPerson(SelectedPerson.PersonGuid);

        CalculateVacationDays();
        Vacations.CollectionChanged += (s, e) => CalculateVacationDays();

        NavigateToEditVacationPageCommand = new RelayCommand(NavigateToEditVacationPage);
        OpenDeleteVacationPopupCommand = new RelayCommand(OpenDeleteVacationPopup);

    }
    #endregion

    #region Methods
    private void NavigateToEditVacationPage(object? parameter)
    {
        if (parameter is VacationPeriod vacation)
        {
            var editVacationPage = new EditVacationPage();
            editVacationPage.DataContext = new EditVacationPageViewModel(vacation);
            NavigationService.NavigateTo(editVacationPage);
        }
    }
    private void OpenDeleteVacationPopup(object? parameter)
    {
        if (parameter is VacationPeriod vacation)
        {
            var result = MessageBox.Show("\"Are you sure you want to delete?",
                                         "Confirm Deletion",
                                         MessageBoxButton.YesNo,
                                         MessageBoxImage.Warning);

            if (result == MessageBoxResult.Yes)
            {
                DataContext.RemoveVacation(vacation);
            }
        }
    }

    private void CalculateVacationDays()
    {
        var vacationList = _vacations?.Cast<VacationPeriod>();

        if (vacationList != null)
        {
            TakenVacationDays = vacationList.Sum(x => x.DurationInWorkingDays);
            RemainingVacationDays = SelectedPerson.NumberOfVacationDays - TakenVacationDays;
            OnPropertyChanged(nameof(TakenVacationDays));
            OnPropertyChanged(nameof(RemainingVacationDays));

        }
    }
    protected virtual void OnPropertyChanged(string propertyName)
    {
        PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
    }

    #endregion
}
