using System.Windows.Controls;
using System.Windows.Input;
using Vacation.WPF.ViewModels;

namespace Vacation.WPF.Views;

/// <summary>
/// Interaction logic for HomePage.xaml
/// </summary>
public partial class HomePage : Page
{
    public HomePage()
    {
        InitializeComponent();
    }

    private void DoubleClick(object sender, MouseButtonEventArgs e)
    {
        var viewModel = DataContext as HomePageViewModel;
        viewModel!.NavigateToVacationDetailsPageCommand.Execute(null);
    }
}
