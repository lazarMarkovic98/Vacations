using System.Collections.ObjectModel;
using System.Windows;
using System.Windows.Input;
using Vacation.WPF.Commands;
using Vacation.WPF.Infrastructure;
using Vacation.WPF.Models;

namespace Vacation.WPF.ViewModels;
public class AddVacationPageViewModel
{
    #region Properties
    public ObservableCollection<Person> People { get; set; }
    public Person? SelectedPerson { get; set; }
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
    public ICommand SaveCommand { get; }

    #endregion

    #region Constructors
    public AddVacationPageViewModel()
    {
        SaveCommand = new RelayCommand(SaveVacation);
        People = DataContext.GetPeople();
    }
    #endregion

    #region Methods
    private void SaveVacation(object? parameter)
    {
        if (SelectedPerson == null || StartDate == null || EndDate == null)
        {
            MessageBox.Show("Please select a person and valid start and end dates.");
            return;
        }
        var newVacation = new VacationPeriod(Guid.NewGuid(), SelectedPerson.PersonGuid, StartDate.Value, EndDate.Value);
        try
        {
            DataContext.AddVacationPeriod(newVacation);
            MessageBox.Show("Vacation period saved.");
            NavigationService.GoBack();
        }
        catch (ValidationException ex)
        {
            MessageBox.Show(ex.Message);
        }


    }

    #endregion

}
