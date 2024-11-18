using CommunityToolkit.Mvvm.Input;
using System.Collections.ObjectModel;
using System.Windows.Input;
using Vacation.WPF.Infrastructure;
using Vacation.WPF.Models;
using Vacation.WPF.Views;


namespace Vacation.WPF.ViewModels;
public class HomePageViewModel
{
    #region Properties
    public ObservableCollection<Person> People { get; set; }
    public Person? SelectedPerson { get; set; }
    public ICommand NavigateToAddVacationPageCommand { get; set; }
    public ICommand NavigateToVacationDetailsPageCommand { get; set; }
    #endregion

    #region Constructors
    public HomePageViewModel()
    {
        People = DataContext.GetPeople();
        NavigateToAddVacationPageCommand = new RelayCommand(NavigateToAddVacationPage);
        NavigateToVacationDetailsPageCommand = new RelayCommand(NavigateToVacationDetailsPage);
    }
    #endregion

    #region Methods
    private void NavigateToAddVacationPage()
    {
        var addVacationPage = new AddVacationPage();
        var addVacationPageViewModel = new AddVacationPageViewModel();
        addVacationPage.DataContext = addVacationPageViewModel;

        NavigationService.NavigateTo(addVacationPage);
    }
    private void NavigateToVacationDetailsPage()
    {
        var vacationDetailsPage = new VacationDetailsPage();
        var vacationDetailsPageViewModel = new VacationDetailsPageViewModel(SelectedPerson!);
        vacationDetailsPage.DataContext = vacationDetailsPageViewModel;

        NavigationService.NavigateTo(vacationDetailsPage);
    }
    #endregion
}
