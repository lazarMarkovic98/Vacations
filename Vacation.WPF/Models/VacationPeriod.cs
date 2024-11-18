using System.ComponentModel;

namespace Vacation.WPF.Models;
public class VacationPeriod : INotifyPropertyChanged 
{
    #region Properties
    public Guid VacationPeriodGuid { get; init; }
    public Guid PersonGuid { get; init; }
    private DateTime _startDate;
    private DateTime _endDate;
    public DateTime StartDate
    {
        get { return _startDate; }
        set
        {
            if (_startDate != value)
            {
                _startDate = value;
                OnPropertyChanged(nameof(StartDate));
            }
        }
    }
    public DateTime EndDate
    {
        get { return _endDate; }
        set
        {
            if (_endDate != value)
            {
                _endDate = value;
                OnPropertyChanged(nameof(EndDate)); 
            }
        }
    }
    public int DurationInWorkingDays
    {
        get
        {
            int workingDays = 0;
            DateTime currentDate = StartDate;

            while (currentDate <= EndDate)
            {
                if (currentDate.DayOfWeek != DayOfWeek.Saturday && currentDate.DayOfWeek != DayOfWeek.Sunday)
                {
                    workingDays++;
                }
                currentDate = currentDate.AddDays(1);
            }

            return workingDays;
        }
    }
    public event PropertyChangedEventHandler? PropertyChanged;

    #endregion

    #region Constructors
    public VacationPeriod(Guid vacationGuid, Guid personGuid, DateTime startDate, DateTime endDate)
    {
        VacationPeriodGuid = vacationGuid;
        PersonGuid = personGuid;
        StartDate = startDate;
        EndDate = endDate;
    }

    #endregion
    #region Methods
    protected virtual void OnPropertyChanged(string propertyName)
    {
        PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
    }

    #endregion
}
