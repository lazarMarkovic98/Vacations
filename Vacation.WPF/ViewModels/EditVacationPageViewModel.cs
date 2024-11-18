using System.Collections.ObjectModel;
using System.Windows;
using System.Windows.Input;
using Vacation.WPF.Commands;
using Vacation.WPF.Infrastructure;
using Vacation.WPF.Models;

namespace Vacation.WPF.ViewModels;
public class EditVacationPageViewModel
{
    #region Properties
    public ObservableCollection<Person> People { get; set; }
    public Person? SelectedPerson { get; set; }
    public VacationPeriod SelectedVacation { get; set; }
    private DateTime? _startDate;
    public DateTime? StartDate
    {
        get => _startDate;
        set
        {
            if (value > EndDate)
            {
                MessageBox.Show("Start date cannot be later than the end date.");
                return;
            }
            _startDate = value;
        }
    }
    private DateTime? _endDate;
    public DateTime? EndDate
    {
        get => _endDate;
        set
        {
            if (value < StartDate)
            {
                MessageBox.Show("End date cannot be earlier than the start date.");
                return;
            }
            _endDate = value;
        }
    }
    public ICommand EditCommand { get; }
    #endregion

    #region Constructors
    public EditVacationPageViewModel(VacationPeriod vacationPeriod)
    {
        SelectedVacation = vacationPeriod;
        People = DataContext.GetPeople();
        SelectedPerson = DataContext.GetPerson(vacationPeriod.PersonGuid);
        StartDate = vacationPeriod.StartDate;
        EndDate = vacationPeriod.EndDate;

        EditCommand = new RelayCommand(EditVacation);

    }
    #endregion

    #region Methods
    private void EditVacation(object? parameter)
    {
        if (StartDate == null || EndDate == null)
        {
            MessageBox.Show("Please select valid start and end dates.");
            return;
        }
        try
        {
            DataContext.EditVacation(SelectedVacation.VacationPeriodGuid, StartDate.Value, EndDate.Value);
            MessageBox.Show("Vacation period updated.");
            NavigationService.GoBack();
        }
        catch (ValidationException ex)
        {
            MessageBox.Show(ex.Message);
        }

    }

    #endregion
}
