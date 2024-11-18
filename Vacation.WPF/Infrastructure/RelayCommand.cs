using System.Windows.Input;

namespace Vacation.WPF.Commands;
public class RelayCommand : ICommand
{
    #region Properties
    public event EventHandler? CanExecuteChanged;
    private Action<object?> _execute { get; set; }
    private Func<object?, bool> _canExecute { get; set; }
    #endregion

    #region Constructors
    public RelayCommand(Action<object?> execute, Func<object?, bool> canExecute = null!)
    {
        _execute = execute;
        _canExecute = canExecute;
    }
    #endregion

    #region Methods
    public bool CanExecute(object? parameter) => _canExecute == null || _canExecute(parameter);
    public void Execute(object? parameter) => _execute(parameter);
    public void RaiseCanExecuteChanged() => CanExecuteChanged?.Invoke(this, EventArgs.Empty);

    #endregion
}
