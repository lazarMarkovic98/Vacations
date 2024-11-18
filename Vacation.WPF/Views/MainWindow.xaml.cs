using System.Windows;
using Vacation.WPF.Infrastructure;
using Vacation.WPF.ViewModels;

namespace Vacation.WPF.Views;
/// <summary>
/// Interaction logic for Main.xaml
/// </summary>
public partial class MainWindow : Window
{
    public MainWindow()
    {
        InitializeComponent();

        var homePage = new HomePage();
        homePage.DataContext = new HomePageViewModel();
        NavigationService.Initialize(MainFrame);
        NavigationService.NavigateTo(homePage);
    }
}
