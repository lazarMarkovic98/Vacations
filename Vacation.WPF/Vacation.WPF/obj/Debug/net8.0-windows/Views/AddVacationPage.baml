   M S B A M L   `   `   `  ����  Vacation.WPF(    "Vacation.WPF.Views.AddVacationPage   5      W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5        N� Title$  Add Vacation Page��5       N� 
Background �#F0F2F5.��5      � $��20q�6    � RowDefinitions 5   
   �� 5	      $
��Auto �6   �� 5
      $
��Auto �6   �� 5      $��* �6   �� 5      $
��Auto �6   .+�5   
   �� 
����������#CDCDCD$��1q�5       �� CornerRadius$ 5��5      $
��0,10q�5       �� Padding$ 10q�5      ._�5      �� -   5        $��UserComboBox��5      $��Stretch=�5      $	��5,0q�5      $��14(�5      $��SemiBold"�5      ��5      �� *People+ �� SelectedItem 5      �� *SelectedPerson+��5      �� 5      .R�5      �� �� 5       �6"   �� *	FirstName+ �� 5!      $� ��6"    �� 5"      �6"   �� *
LastName+5#      5$      5&      5'      �� 5*   
   $��1��6    �� Orientation$ 
Horizontal=�6"   $��10q�6;   $��Stretch=�6G   .+�5+      �� 
����������#CDCDCD$��1q�5-      $ 5��5.      $ 5q�5/      $��	0,10,10,0q�50      ._�51      �� $ 
Horizontal=�6   .+�52      �� $��
Start Date��6   $��Center=�61   $��80��6L   $��SemiBold"�53      (  "System.Windows.Controls.DatePicker  54      -   5        $��StartDatePicker��54   !   $��Center=�56   !   $	��120��57   !   $��30��58   !      SelectedDate 55   !   �� *	StartDate+58   !   59      5:      �� 5<      
����������#CDCDCD$��1q�5>      $ 5��5?      $ 5q�5@      $��	0,10,10,0q�5A      $��43��6(   ._�5B      �� $ 
Horizontal=�6   .+�5C      �� $��End Date��6   $��Center=�6/   $��80��6J   $��SemiBold"�5D        5E      -   5        $��EndDatePicker��5E   !   $��Center=�5G   !   $	��120��5H   !   $��30��5I   !    5F   !   �� *	EndDate+5I   !   5J      5K      5L      �� 5O   
   $
��Save��6   $��3��5P      $��Right=�5Q      $
��0,10q�5R      $	��100��5S      $��40��5T      ���#4CAF50
�������$
��Bold"�5X      $��0q�5Y      $��Center=�5Z      ��5U      �� *SaveCommand+5Z      5[      5\      