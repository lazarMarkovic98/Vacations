using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Windows.Data;
using Vacation.WPF.Models;

namespace Vacation.WPF.Infrastructure;
public class DataContext
{
    #region Properties
    private static ObservableCollection<Person> _people { get; set; } = new ObservableCollection<Person>()
    {
        new Person(new Guid("a5c2001a-9b57-4b1e-9682-447991bda903"),"John","Doe",20),
        new Person(new Guid("967de5bc-53fe-4f04-9e0d-807ce5509b6a"),"Talia","Frye",24),
        new Person(new Guid("eba09bf7-7e29-4fdf-89d7-6dd7c3e08dc2"),"Lucca","Hill",22),
        new Person(new Guid("1bb1d9a5-9c5c-48c0-97f1-09ffa822bd22"),"Talia","Frye",29),
        new Person(new Guid("18d471bb-8d0a-4f1b-a1ac-4e750fd4d7ab"),"Abner ","Miranda",20),
        new Person(new Guid("3f27294f-fadc-42fc-88f7-cd4b5f16db2f"),"Melany ","Valentine",21),
        new Person(new Guid("aeff4b07-d1ca-4b87-a241-84ea2ba33877"),"Dakota ","Duncan",22),
        new Person(new Guid("62f27c74-5415-41ef-ad45-0ef594c27b1b"),"Lennon ","Woods",26),
    };
    private static ObservableCollection<VacationPeriod> _vacations { get; set; } = new ObservableCollection<VacationPeriod>()
    {
        new VacationPeriod(new Guid("6f87f9be-f919-4a6c-863d-04c7ee0abc2a"),new Guid("a5c2001a-9b57-4b1e-9682-447991bda903"),DateTime.Parse("12/13/2024"),DateTime.Parse("12/20/2024")),
        new VacationPeriod(new Guid("f95120e0-0d65-4fb6-acea-08eba5278b63"),new Guid("a5c2001a-9b57-4b1e-9682-447991bda903"),DateTime.Parse("12/04/2024"),DateTime.Parse("12/08/2024")),
        new VacationPeriod(new Guid("299098e6-ba49-4ca3-be25-2a094a5029ec"),new Guid("967de5bc-53fe-4f04-9e0d-807ce5509b6a"),DateTime.Parse("11/04/2024"),DateTime.Parse("11/08/2024"))


    };
    #endregion

    #region Methods
    public static ObservableCollection<Person> GetPeople()
    {
        return _people;
    }

    public static Person? GetPerson(Guid personGuid)
    {
        return _people.SingleOrDefault(x => x.PersonGuid == personGuid);
    }

    public static ICollectionView GetVacationsByPerson(Guid personGuid)
    {
        var collectionView = CollectionViewSource.GetDefaultView(_vacations);

        collectionView.Filter = obj =>
        {
            if (obj is VacationPeriod vacation)
            {
                return vacation.PersonGuid == personGuid;
            }
            return false;
        };
        return collectionView;
    }
    public static void AddVacationPeriod(VacationPeriod vacationPeriod)
    {
        var person = GetPerson(vacationPeriod.PersonGuid);

        if (person != null)
        {
            ValidateVacationRequest(vacationPeriod, _vacations.Where(x => x.PersonGuid == vacationPeriod.PersonGuid).ToList(), person.NumberOfVacationDays);

            _vacations.Add(vacationPeriod);

            person.RemainingVacationDays = person.CalculateRemainingVacationDays();
        }
    }
    public static void RemoveVacation(VacationPeriod vacationPeriod)
    {
        var person = GetPerson(vacationPeriod.PersonGuid);

        if (person != null)
        {
            _vacations.Remove(vacationPeriod);

            person.RemainingVacationDays = person.CalculateRemainingVacationDays();
        }
    }

    public static void EditVacation(Guid vacationPeriodGuid, DateTime startDate, DateTime endDate)
    {
        var vacationPeriod = _vacations.FirstOrDefault(x => x.VacationPeriodGuid == vacationPeriodGuid);
        var person = GetPerson(vacationPeriod!.PersonGuid);

        if (vacationPeriod is not null && person is not null)
        {
            var clonedVacationPeriod = new VacationPeriod(vacationPeriodGuid, vacationPeriod.PersonGuid, startDate, endDate);

            ValidateVacationRequest(clonedVacationPeriod,
                _vacations.Where(x => x.VacationPeriodGuid != vacationPeriodGuid && x.PersonGuid == clonedVacationPeriod.PersonGuid).ToList(),
                person.NumberOfVacationDays);

            vacationPeriod.StartDate = startDate;
            vacationPeriod.EndDate = endDate;

            person.RemainingVacationDays = person.CalculateRemainingVacationDays();

        }
    }

    private static bool IsVacationOverlapping(List<VacationPeriod> existingVacations, VacationPeriod vacationRequest)
    {
        foreach (var vacation in existingVacations)
        {
            if (vacationRequest.StartDate <= vacation.EndDate && vacationRequest.EndDate >= vacation.StartDate)
            {
                return true;
            }
        }
        return false;
    }
    private static void ValidateVacationRequest(VacationPeriod vacationRequest, List<VacationPeriod> existingVacations, int numberOfVacationDays)
    {
        if (vacationRequest.DurationInWorkingDays == 0)
            throw new ValidationException("Vacation should be at least one working day long.");

        if (vacationRequest.DurationInWorkingDays > 10)
            throw new ValidationException("Vacation should not last longer than 10 working days.");

        if (existingVacations.Sum(x => x.DurationInWorkingDays) + vacationRequest.DurationInWorkingDays > numberOfVacationDays)
            throw new ValidationException("Vacation should not exceed the employee's vacation limit.");

        if (IsVacationOverlapping(existingVacations, vacationRequest))
            throw new ValidationException("Requested vacation is overlapping with existing one.");

    }
    #endregion

}
