   M S B A M L   `   `   `  ����L  H3DModelViewerMVVM, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullC&clr-namespace:_3DModelViewerMVVM.Views_3DModelViewerMVVM.Views  5      W SPresentationCore, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35eDclr-namespace:System.Windows.Media.Media3D;assembly=PresentationCoreSystem.Windows.Media.Media3D 5      M+clr-namespace:_3DModelViewerMVVM.ViewModels_3DModelViewerMVVM.ViewModels  5      .    (_3DModelViewerMVVM.Views.ModelShowerView   5      \ XPresentationFramework, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      8local&clr-namespace:_3DModelViewerMVVM.Views     5      XMedia3DDclr-namespace:System.Windows.Media.Media3D;assembly=PresentationCore     5      ;vms+clr-namespace:_3DModelViewerMVVM.ViewModels     5      .��5      �   � ColumnDefinitions  5   
   �� 5      $	��600 �6   �� 5      $	��300 �6   .+�5   
   � ���#222222$��0��6$   .+�5      '�  '� Camera 5      =� 5       � Position$ 0,0,151�6$    � LookDirection$ 0,0,-15�66    � UpDirection$ 0,1,05�6M   .x�5      g�  g� Content 5      �� 5       �� Color$ #666666��6#   5      g� 5       5      t� 5      $ White��6+    t� 	Direction 69   �� *LightDirection+5!      g� 5"       5#      h� 5$      .��5%      �  � Geometry 5&      k� 5(   "   	 k� 	Positions!	 �   
 k� TriangleIndices.
 �$       5)   1    � Material 5+      u� 5-   "    u� Brush 5.   &   �� 5/   *    �� Color$	 Red��6:   51   #    j� 	Transform 53      �� 54   &    �� Path$ TransformGroup�6.   56      57      59      5:      5;      � 5<   
   
������$��1��6'    � RowDefinitions 5=      �� 5>      $
��auto �6    �� 5?      $
��auto �6    �� 5@      $
��auto �6    �� 5A      $
��auto �6    �� 5B      $
��auto �6    �� 5C      $
��auto �6    �� 5D      $
��auto �6    �� 5E      $
��auto �6    �� 5F      $
��auto �6    .+�5H      � $��0��6     5I      �� 5J      $
��auto �6'   �� 5K      $
��auto �6'   �� 5L      $
��auto �6'   .+�5N      �� $��Model��6   $��0��6)   5O      � 5P      $��2��6     5Q      �� 5R      $��87 �6'   �� 5S      $
��auto �6'   .+�5U      �� $��Model X axis��6   $��0��60   $��10 10 10 10q�6@   �� 5V       � Minimum$ 0Q�6    � Maximum$	 360Q�6%   $��Center=�6]   $��Center=�6x   $	��200��6�   $��1��6�   $��10 10 10 10q�6�    � Value 63   �� *
XAxisAngle+ �� Mode$ TwoWay=�6�   5W      � 5X      $��3��6     5Y      �� 5Z      $��87 �6'   �� 5[      $
��auto �6'   .+�5]      �� $��Model Y axis��6   $��0��60   $��10 10 10 10q�6@   �� 5^      $ 0Q�6   $	 360Q�6%   $��Center=�6]   $��Center=�6x   $	��200��6�   $��1��6�   $��10 10 10 10q�6�    63   �� *
YAxisAngle+$ TwoWay=�6�   5_      � 5`      $��4��6     5a      �� 5b      $��87 �6'   �� 5c      $
��auto �6'   .+�5e      �� $��Model Z axis��6   $��0��60   $��10 10 10 10q�6@   �� 5f      $ 0Q�6   $	 360Q�6%   $��Center=�6]   $��Center=�6x   $	��200��6�   $��1��6�   $��10 10 10 10q�6�    63   �� *
ZAxisAngle+$ TwoWay=�6�   5g      � 5h      $��5��6     5i      �� 5j      $��87 �6'   �� 5k      $
��auto �6'   .+�5m      �� $��Model scale��6   $��0��6/   $��10 10 10 10q�6?   �� 5n      $	 0.1Q�6   $ 2Q�6'   $��Center=�6]   $��Center=�6x   $	��200��6�   $��1��6�   $��10 10 10 10q�6�    63   �� *
ModelScale+$ TwoWay=�6�   5o      � 5p      $��6��6     5q      �� 5r      $��87 �6'   �� 5s      $
��auto �6'   .+�5u      �� $��Light X axis��6   $��0��60   $��10 10 10 10q�6@   �� 5v      $ -1Q�6   $ 1Q�6&   $��Center=�6e   $��Center=�6�   $	��200��6�   $��1��6�   $��10 10 10 10q�6�    62   �� *XLightLookDirection+$ TwoWay=�6�   5w      � 5x      $��7��6     5y      �� 5z      $��87 �6'   �� 5{      $
��auto �6'   .+�5}      �� $��Light Y axis��6   $��0��60   $��10 10 10 10q�6@   �� 5~      $ -1Q�6   $ 1Q�6&   $��Center=�6e   $��Center=�6�   $	��200��6�   $��1��6�   $��10 10 10 10q�6�    62   �� *YLightLookDirection+$ TwoWay=�6�   5      � 5�      $��8��6     5�      �� 5�      $	��150 �6'   �� 5�      $	��150 �6'   .+�5�      �� $��0��6   $	��100��6/   $	��100��6;   $��Center=�6H   $��Center=�6e    �� Interval$ 50��6�   
������ 
������ $��0 25 0 0q�6�   ��6�   �� *
RotateLeft+��5�      (� 5�      .��5�      �� $m��gC:\Users\Annabelle\OneDrive\My Documents\GitHub\3DModelViewerMVVM\3DModelViewerMVVM\UX Images\61007.png��6$   $
��Fill=�6�   5�      5�      �� 5�      $��1��6   $	��100��6/   $	��100��6;   $��Center=�6H   $��Center=�6e   $ 50��6�   
������ 
������ $��0 25 0 0q�6�   ��6�   �� *RotateRight+��5�      (� 5�      .��5�      �� $����C:\Users\Annabelle\OneDrive\My Documents\GitHub\3DModelViewerMVVM\3DModelViewerMVVM\UX Images\rotate-to-right-button_icon-icons.com_72597.png��6$   $
��Fill=�6�   5�      5�      5�      5�      5�      5�      