using System.ComponentModel;
using Vacation.WPF.Infrastructure;

namespace Vacation.WPF.Models;
public class Person : INotifyPropertyChanged
{
    #region Properties
    public Guid PersonGuid { get; init; }
    public string FirstName { get; set; }
    public string LastName { get; set; }
    public int NumberOfVacationDays { get; set; }
    public ICollectionView VacationPeriods =>
       DataContext.GetVacationsByPerson(PersonGuid);
    private int _remainingVacationDays;
    public int RemainingVacationDays
    {
        get
        {
            int takenDays = VacationPeriods
                .Cast<VacationPeriod>()
                .Sum(vacation => vacation.DurationInWorkingDays);

            return NumberOfVacationDays - takenDays;
        }
        set
        {
            if (_remainingVacationDays != value)
            {
                _remainingVacationDays = value;
                OnPropertyChanged(nameof(RemainingVacationDays));
            }
        }
    }
    public event PropertyChangedEventHandler? PropertyChanged;

    #endregion

    #region Constructors
    public Person(Guid personGuid, string firstName, string lastName, int numberOfVacationDays)
    {
        PersonGuid = personGuid;
        FirstName = firstName;
        LastName = lastName;
        NumberOfVacationDays = numberOfVacationDays;
    }

    #endregion

    #region Methods
    public int CalculateRemainingVacationDays()
    {
        var vacations = DataContext.GetVacationsByPerson(PersonGuid);

        int usedVacationDays = 0;
        foreach (VacationPeriod vacation in vacations)
        {
            usedVacationDays += vacation.DurationInWorkingDays;
        }

        return NumberOfVacationDays - usedVacationDays;
    }
    protected virtual void OnPropertyChanged(string propertyName)
    {
        PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
    }
    #endregion
}
