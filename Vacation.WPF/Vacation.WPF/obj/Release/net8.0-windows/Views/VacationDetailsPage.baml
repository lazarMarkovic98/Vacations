   M S B A M L   `   `   `  ���� G  CVacation.WPF, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:Vacation.WPF.ViewsVacation.WPF.Views  ,    &Vacation.WPF.Views.VacationDetailsPage   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     2local clr-namespace:Vacation.WPF.Views       N� Title$  VacationDetailsPage��.��� ���#F5F5F5.+�� 
�������$��0��$��20,70,20,20q�.+��� -   $��VacationsList�����#CDCDCD$��0,0,0,25q�$��0q� �� SelectionMode$ Single=�$��Stretch=����� *	Vacations+ �� View �� .P��� $��
Start Date�� �� Width$
 Auto�� �� CellTemplate �� .R��� $��Center=����� *	StartDate+ �� StringFormat$ {0:dd.MM.yyyy}���� $��End Date��$
 Auto�� �� .R��� $��Center=����� *	EndDate+$ {0:dd.MM.yyyy}���� $��Number of Working Days��$
 Auto�� �� .R��� $��Center=����� *DurationInWorkingDays+�� $��Delete��$	 120�� �� .R��� $��Delete��$��Center=�$��Center=����#F44336
�������
������ $	��5,2q�$
��Bold"����� *,*DataContext.OpenDeleteVacationPopupCommand+ �� RelativeSource ��  �� AncestorType ListView���� �� $
��Edit��$	 120�� �� .R��� $
��Edit��$��Center=�$��Center=����#4CAF50
�������
������ $	��5,2q�$
��Bold"����� */-DataContext.NavigateToEditVacationPageCommand+ ��  ListView���� �� $��1��$��Bottom=�$��Center=� �� Orientation$ Vertical=�$��20q�.+��� $ 
Horizontal=�$	��0,5q�.+��� $*��$Total Number of Vacation Days Used: ��$
��Bold"�$��Center=��� $��5,0,0,0q�$��Center=����� *TakenVacationDays+�� $ 
Horizontal=�$	��0,5q�.+��� $/��)Total Number of Remaining Vacation Days: ��$
��Bold"�$��Center=��� $��5,0,0,0q�$��Center=����� *RemainingVacationDays+