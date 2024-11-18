using System.Windows.Controls;

namespace Vacation.WPF.Infrastructure;
public static class NavigationService
{
    private static Frame? _mainFrame;

    public static void Initialize(Frame mainFrame)
    {
        _mainFrame = mainFrame;
    }

    public static void NavigateTo(Page page)
    {
        _mainFrame?.Navigate(page);
    }

    public static void GoBack()
    {
        if (_mainFrame?.CanGoBack == true)
        {
            _mainFrame.GoBack();
        }
    }
}