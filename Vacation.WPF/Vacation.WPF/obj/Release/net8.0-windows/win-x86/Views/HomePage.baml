   M S B A M L   `   `   `  ����   Vacation.WPF!    Vacation.WPF.Views.HomePage   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml       N� Title$  HomePage�� N� 
Background �#F0F2F5.��� .+���  �� Orientation$ 
Horizontal=�$��Right=�$	��Top=�$��	0,10,20,0q�.+��� $��Add New Vacation��$	��150��$��40��$��0,0,10,0q����#4CAF50
�������$
��Bold"�$��0q�$��Center=�$��Center=����� *" NavigateToAddVacationPageCommand+�� $��20,70,20,20q�
����������#CDCDCD$��1q� �� CornerRadius$ 10�� �� Padding$ 10q�._��� -   $��UserList��$��0q����� *People+ �� SelectedItem �� *SelectedPerson+����  �� 
TargetType" ��.�-   ��  �� Property � �� �� Value$ 5q���  � ��$ 2q���  � ��
 �������  � �� �#DDDDDD��  � ��$ 1q���  � ��$ Stretch=�	 �� Triggers	 P� 
 P� Property
 �@��
IsSelected P� Value$
 True��. ���  � �� �#E3F2FD��  � �� �#4CAF50 �� View �� .P��� $��
First Name�� �� CellTemplate �� .R��� $��Center=�$��150px������ *	FirstName+�� $��	Last Name�� �� .R��� $��Center=�$��150px������ *
LastName+�� $��Total Vacation Days�� �� .R��� $��Center=�$��150px������ *NumberOfVacationDays+�� $��Remaining Days�� �� .R��� $��Center=�$��150px������ *RemainingVacationDays+