   M S B A M L   `   `   `  ����  Vacation.WPF!    Vacation.WPF.Views.HomePage   5      W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5        N� Title$  HomePage��5       N� 
Background �#F0F2F5.��5      � .+�5	   
   ��  �� Orientation$ 
Horizontal=�6   $��Right=�6.   $	��Top=�6J   $��	0,10,20,0q�6b   .+�5
      �� $��Add New Vacation��6   $	��150��5      $��40��6!   $��0,0,10,0q�5      ���#4CAF50
�������$
��Bold"�5      $��0q�5      $��Center=�5      $��Center=�5      ��5      �� *" NavigateToAddVacationPageCommand+5      5      �� 5   
   $��20,70,20,20q�6   
����������#CDCDCD$��1q�5       �� CornerRadius$ 10��5       �� Padding$ 10q�5      ._�5      �� -   5        $��UserList��5      $��0q�5      ��5      �� *People+ �� SelectedItem 5       �� *SelectedPerson+��5"      �� 5#       �� 
TargetType" ��6   .�5$      -   5        �� 5%       �� Property � �� �� Value$ 5q�64   �� 5&       � ��$ 2q�63   �� 5'       � ��
 �����67   �� 5(       � �� �#DDDDDD68   �� 5)       � ��$ 1q�6<   �� 5*       � ��$ Stretch=�6G   	 �� Triggers	 5+      P� 5,      
 P� Property
 �@��
IsSelected P� Value$
 True��6<   . �5-   "   ��  � �� �#E3F2FD6?   �� 5.   "    � �� �#4CAF506@   5/      51       �� View 54      �� 55      .P�56      �� $��
First Name��6)    �� Width$ 150px��6>    �� CellTemplate 57      �� 58   "   .R�59   &   �� $��Center=�5:   0   ��59   0   �� *	FirstName+5:   0   5;   #   5=      �� 5?      $��	Last Name��6)   $ 150px��6<    5@      �� 5A   "   .R�5B   &   �� $��Center=�5C   0   ��5B   0   �� *
LastName+5C   0   5D   #   5F      �� 5H      $��Total Vacation Days��6)   $ 150px��6F    5I      �� 5J   "   .R�5K   &   �� $��Center=�5L   0   ��5K   0   �� *NumberOfVacationDays+5L   0   5M   #   5O      �� 5Q      $��Remaining Days��6)   $ 150px��6A    5R      �� 5S   "   .R�5T   &   �� $��Center=�5U   0   ��5T   0   �� *RemainingVacationDays+5U   0   5V   #   5X      5Y      5[      5\      5]      5^      