   M S B A M L   `   `   `  ����G  CVacation.WPF, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:Vacation.WPF.ViewsVacation.WPF.Views  5      )    #Vacation.WPF.Views.EditVacationPage   5      W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      2local clr-namespace:Vacation.WPF.Views     5        N� Title$  EditVacationPage��5	      .��5      � ���#F5F5F5$��20q�6     � RowDefinitions 5   
   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $��* �6   �� 5      $
��Auto �6   .+�5   
   �� 
����������#CDCDCD$��1q�5       �� CornerRadius$ 5��5      $
��0,10q�5       �� Padding$ 10q�5      ._�5      �� -   5        $��UserComboBox��5      $��Stretch=�5      $	��5,0q�5      $��14(�5       $��SemiBold"�5!      ${�False��5"      ��5      �� *People+ �� SelectedItem 5      �� *SelectedPerson+��5#      �� 5$      .R�5%      �� �� 5&      �6"   �� *	FirstName+ �� 5'      $� ��6"    �� 5(      �6"   �� *
LastName+5)      5*      5,      5-      �� 50   
   $��1��6    �� Orientation$ 
Horizontal=�6"   $��10q�6;   $��Stretch=�6G   .+�51      �� 
����������#CDCDCD$��1q�53      $ 5��54      $ 5q�55      $��	0,10,10,0q�56      ._�57      �� $ 
Horizontal=�6   .+�58      �� $��
Start Date��6   $��Center=�61   $��80��6L   $��SemiBold"�59      (  "System.Windows.Controls.DatePicker  5:      -   5        $��StartDatePicker��5:   !   $��Center=�5<      $	��120��5=      $��30��5>         SelectedDate 5;      �� *	StartDate+5>      5?      5@      �� 5B      
����������#CDCDCD$��1q�5D      $ 5��5E      $ 5q�5F      $��	0,10,10,0q�5G      $��43��6    ._�5H      �� $ 
Horizontal=�6   .+�5I      �� $��End Date��6   $��Center=�6/   $��80��6J   $��SemiBold"�5J        5K      -   5        $��EndDatePicker��5K   !   $��Center=�5M      $	��120��5N      $��30��5O       5L      �� *	EndDate+5O      5P      5Q      5R      �� 5W   
   $
��Save��6   $��3��5X   
   $��Right=�5Y   
   $
��0,10q�5Z   
   $	��100��5[   
   $��40��5\   
   ���#4CAF50
�������$
��Bold"�5`   
   $��0q�5a   
   $��Center=�5b   
   ��5]   
   �� *EditCommand+5b   
   5c      5d      