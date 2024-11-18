namespace Vacation.WPF.Infrastructure;

public class ValidationException : Exception
{
    public ValidationException(string message) : base(message) { }
}
