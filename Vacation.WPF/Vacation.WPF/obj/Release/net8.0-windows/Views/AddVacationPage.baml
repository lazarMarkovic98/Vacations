   M S B A M L   `   `   `  ����   Vacation.WPF(    "Vacation.WPF.Views.AddVacationPage   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml       N� Title$  Add Vacation Page�� N� 
Background �#F0F2F5.��� $��20q� � RowDefinitions �� $
��Auto ��� $
��Auto ��� $��* ��� $
��Auto �.+��� 
����������#CDCDCD$��1q� �� CornerRadius$ 5��$
��0,10q� �� Padding$ 10q�._��� -   $��UserComboBox��$��Stretch=�$	��5,0q� �� DisplayMemberPath$ 	FirstName��$��14(�$��SemiBold"����� *People+ �� SelectedItem �� *SelectedPerson+�� $��1�� �� Orientation$ 
Horizontal=�$��10q�$��Stretch=�.+��� 
����������#CDCDCD$��1q�$ 5��$ 5q�$��	0,10,10,0q�._��� $ 
Horizontal=�.+��� $��
Start Date��$��Center=�$��80��$��SemiBold"�(  "System.Windows.Controls.DatePicker  -   $��StartDatePicker��$��Center=�$	��120��$��30��   SelectedDate �� *	StartDate+�� 
����������#CDCDCD$��1q�$ 5��$ 5q�$��	0,10,10,0q�$��43��._��� $ 
Horizontal=�.+��� $��End Date��$��Center=�$��80��$��SemiBold"�  -   $��EndDatePicker��$��Center=�$	��120��$��30�� �� *	EndDate+�� $
��Save��$��3��$��Right=�$
��0,10q�$	��100��$��40�����#4CAF50
�������$
��Bold"�$��0q�$��Center=����� *SaveCommand+