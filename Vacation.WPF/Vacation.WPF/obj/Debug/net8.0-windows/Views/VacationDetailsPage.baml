   M S B A M L   `   `   `  ����G  CVacation.WPF, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:Vacation.WPF.ViewsVacation.WPF.Views  5      ,    &Vacation.WPF.Views.VacationDetailsPage   5      W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      2local clr-namespace:Vacation.WPF.Views     5        N� Title$  VacationDetailsPage��5	      .��5      � ���#F5F5F5.+�5   
   �� $��20,70,20,20q�6   
����������#CDCDCD$��1q�5   	    �� CornerRadius$ 10��5   	    �� Padding$ 10q�5   	   ._�5      �� -   5        $��VacationsList��5      $��0q�5      ��5      �� *	Vacations+��5      �� 5       �� 
TargetType" ��6   .�5      ��  �� Property � �� �� Value$ 5q�64   �� 5       � ��$ 2q�63   �� 5       � ��
 �����67   �� 5       � �� �#DDDDDD68   �� 5       � ��$ 1q�6<   �� 5       � ��$ Stretch=�6G    �� Triggers 5      P� 5        P� Property �@��
IsSelected P� Value$
 True��6<   . �5!   "   ��  � �� �#E3F2FD6?   �� 5"   "    � �� �#4CAF506@   5#      5%      	 �� View	 5(      �� 5)      .P�5+      �� $��	From date��6)   
 �� Width$
 150px��6<    �� CellTemplate 5,      �� 5-   "   .R�5.   &   �� $��Center=�5/   0   ��5.   0   �� *	StartDate+ �� StringFormat$ {0:dd.MM.yyyy}��5/   0   50   #   52      �� 55      $��To date��6)   $
 150px��6:    56      �� 57   "   .R�58   &   �� $��Center=�59   )   ��58   0   �� *	EndDate+$ {0:dd.MM.yyyy}��59   )   5:   #   5<      �� 5?      $��Number of working days��6)   $
 130px��6I    5@      �� 5A   "   .R�5B   &   �� $��Center=�5C   0   ��5B   0   �� *DurationInWorkingDays+5C   0   5D   #   5F      �� 5I      $��Delete��6)   $	
 110��69    5J      �� 5K   "   .R�5L   &   �� $��Delete��6-   $��Center=�5O   .   $��Center=�5P   .   ���#F44336
�������
������ $	��5,2q�5T   .   $
��Bold"�5U   .   ��5M   .   �� *,*DataContext.OpenDeleteVacationPopupCommand+ �� RelativeSource ��  �� AncestorType ListView��5N   .   �� 5U   .   5V   #   5X      �� 5[      $
��Edit��6)   $	
 110��67    5\      �� 5]   "   .R�5^   &   �� $
��Edit��6-   $��Center=�5a   .   $��Center=�5b   .   ���#4CAF50
�������
������ $	��5,2q�5f   .   $
��Bold"�5g   .   ��5_   .   �� */-DataContext.NavigateToEditVacationPageCommand+ ��  ListView��5`   .   �� 5g   .   5h   #   5j      5k      5m      5n      �� 5q   
   $��1��6   $��Bottom=�6"   $��Center=�6=    �� Orientation$ Vertical=�6Z   $��20q�6q   .+�5r      �� $ 
Horizontal=�6   $	��0,5q�62   .+�5s      �� $*��$Total Number of Vacation Days Used: ��6   $
��Bold"�6H   $��Center=�6Z   �� 5t      $��5,0,0,0q�6?   $��Center=�6P   ��6   �� *TakenVacationDays+6P   5u      �� 5w      $ 
Horizontal=�6   $	��0,5q�62   .+�5x      �� $/��)Total Number of Remaining Vacation Days: ��6   $
��Bold"�6M   $��Center=�6_   �� 5y      $��5,0,0,0q�6C   $��Center=�6T   ��6   �� *RemainingVacationDays+6T   5z      5{      5|      5}      