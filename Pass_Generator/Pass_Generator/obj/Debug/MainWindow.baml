   M S B A M L   `   `   `  ����I  EPass_Generator, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null/clr-namespace:Pass_GeneratorPass_Generator  5   	       Pass_Generator.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   .localclr-namespace:Pass_Generator     5   	     � Title$#  Générateur de mots de passe��5   	   $��483.333��6-   $��314.444��6>   .��5	      � .+�5
   
   �� -   5         ��Name$ label��5
      $��Nombre de caractère :��6   $��1��6?   $
��Left=�6O   $��6,10,0,0q�6j   $	��Top=�6|   �� 5   
   -   5         ��Name$ tbNbChar��5      $
��Left=�6$   $��23��6?   $��
139,13,0,0q�6K    �� TextWrapping$
 Wrap=�6_   $�� ��6s   $	��Top=�6{   $��38��6�    �� TextAlignment$
 Left=�6�   6�   �� 5   
   -   5        $ label1��5      $��Nombres acceptés ?��6    $��1��6=   $
��Left=�6M   $��	10,57,0,0q�6h   $	��Top=�6{   �� 5   
   -   5        $ label2��5      $��Caractères spéciaux ?��6    $��1��6@   $
��Left=�6P   $��	10,99,0,0q�6k   $	��Top=�6~   	� 5   
   -   5         	�Name$ rbNumberYes��5   )    	� 	GroupName$ Number��6   $	��Oui��6>   $
��Left=�6L   $��
139,63,0,0q�6g   $	��Top=�6{    d� 	IsChecked$
 TrueY�6�   	� 5   
   -   5        $ 
rbNumberNo��5   )   $ Number��6   $	��Non��6=   $
��Left=�6K   $��
207,63,0,0q�6f   $	��Top=�6z   	� 5   
   -   5        $ 	rbSpecYes��5   '   $
 Char��6   $	��Oui��6:   $
��Left=�6H   $��139,105,0,0q�6c   $	��Top=�6x   $
 TrueY�6�   $��2��6�   	� 5   
   -   5        $ rbSpecNo��5   '   $
 Char��6   $	��Non��69   $
��Left=�6G   $��207,105,0,0q�6b   $	��Top=�6w   $��2��6�   �� 5   
   -	   5         ��Name$ btnGenerate��5      $��	Générer��6&   $
��Left=�68   $��102,151,0,0q�6S   $	��Top=�6h   $��75��6�   6�   �� 5   
   -
   5        $ 
tbPassword��5   $   	 �� 
IsReadOnly	 . $
��Left=�68   $��23��6S   $��
14,193,0,0q�6_   $
 Wrap=�6s   $�� ��6�   $	��Top=�6�   $	��282��6�   5      5      