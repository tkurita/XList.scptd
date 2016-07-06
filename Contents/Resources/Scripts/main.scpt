FasdUAS 1.101.10   ��   ��    k             j     �� 
�� 
pnam  m        � 	 	 
 X L i s t   
  
 j    �� 
�� 
vers  m       �    1 . 7      l     ��������  ��  ��        x    ��  ��    1      ��
�� 
ascr  �� ��
�� 
minv  m         �    2 . 3��        x    �� ����    2   ��
�� 
osax��        x    ,�� ���� 0 xtext XText  4   & *�� 
�� 
scpt  m   ( )   �     
 X T e x t��     ! " ! l     ��������  ��  ��   "  # $ # l      �� % &��   % 7 1!@references
XText || help:openbook='XText Help'
    & � ' ' b ! @ r e f e r e n c e s 
 X T e x t   | |   h e l p : o p e n b o o k = ' X T e x t   H e l p ' 
 $  ( ) ( l     ��������  ��  ��   )  * + * l      �� , -��   ,��!@title XList Reference
* Version : 1.7b
* Author : Tetsuro KURITA ((<tkurita@mac.com>))
* Repository : ((<https://github.com/tkurita/XList.scptd>))

XList provides a wrapper object for AppleScript's list data to enable functions of Iterator, Queue, Stack. 
Many missing feature of AppleScript's list are covered.

Also XList will contribute pefermance of the script. 
The AppleScript have a characteristics that fast accessing list items must be thorugh a reference of a list. 
XList can hide such complications, and give simple codes with best performance.

== Example
@example
use XList : script "XList"(* Iterator *)set an_iterator to XList's make_with({"a", "b", "c"})repeat while an_iterator's has_next()	set an_item to next() of an_iterator	log an_itemend repeat(* Queue *)set a_queue to make XLista_queue's unshift("a")a_queue's unshift("b")log a_queue's shift() -- result : "b"log a_queue's shift() -- result : "a"(* Stack *)set a_stack to make XLista_queue's push("a")a_queue's push("b")log a_queue's pop() -- result : "b"log a_queue's pop() -- result : "a"(* Accessing list elements *)set a_list to XList's make_with({"a", "b", "c"})log a_list's item_counts() -- 3log a_list's item_at(2) -- "b"log a_list's has_item("b") --truelog a_list's has_item("d") --falselog a_list's index_of("b") -- 2log a_list's index_of("d") -- 0log a_list's delete_at(2) -- "b"log (set_item of a_list for "e" at 2) -- "e"log a_list's list_ref() -- {"a", "e"}(* Conversion to Text *)log a_list's as_unicode_with(", ") -- "a, e"(* Accessing all items with a closure *)script scriptA	on do(x, sender)		if x is "b" then			tell sender				set_item_at("d", current_index()) -- change an item of a list			end tell		end if		return true	end doend scriptan_iterator's enumerate(scriptA)log an_iterator's all_items() -- result : {"a", "d", "c"}script scriptB	on do(x)		return x & "a"	end doend scriptlog an_iterator's map_as_list(scriptB) -- result : {"aa", "da", "ca"}
    - � . .� ! @ t i t l e   X L i s t   R e f e r e n c e 
 *   V e r s i o n   :   1 . 7 b 
 *   A u t h o r   :   T e t s u r o   K U R I T A   ( ( < t k u r i t a @ m a c . c o m > ) ) 
 *   R e p o s i t o r y   :   ( ( < h t t p s : / / g i t h u b . c o m / t k u r i t a / X L i s t . s c p t d > ) ) 
 
 X L i s t   p r o v i d e s   a   w r a p p e r   o b j e c t   f o r   A p p l e S c r i p t ' s   l i s t   d a t a   t o   e n a b l e   f u n c t i o n s   o f   I t e r a t o r ,   Q u e u e ,   S t a c k .   
 M a n y   m i s s i n g   f e a t u r e   o f   A p p l e S c r i p t ' s   l i s t   a r e   c o v e r e d . 
 
 A l s o   X L i s t   w i l l   c o n t r i b u t e   p e f e r m a n c e   o f   t h e   s c r i p t .   
 T h e   A p p l e S c r i p t   h a v e   a   c h a r a c t e r i s t i c s   t h a t   f a s t   a c c e s s i n g   l i s t   i t e m s   m u s t   b e   t h o r u g h   a   r e f e r e n c e   o f   a   l i s t .   
 X L i s t   c a n   h i d e   s u c h   c o m p l i c a t i o n s ,   a n d   g i v e   s i m p l e   c o d e s   w i t h   b e s t   p e r f o r m a n c e . 
 
 = =   E x a m p l e 
 @ e x a m p l e 
 u s e   X L i s t   :   s c r i p t   " X L i s t "   ( *   I t e r a t o r   * )  s e t   a n _ i t e r a t o r   t o   X L i s t ' s   m a k e _ w i t h ( { " a " ,   " b " ,   " c " } )   r e p e a t   w h i l e   a n _ i t e r a t o r ' s   h a s _ n e x t ( )  	 s e t   a n _ i t e m   t o   n e x t ( )   o f   a n _ i t e r a t o r  	 l o g   a n _ i t e m  e n d   r e p e a t   ( *   Q u e u e   * )  s e t   a _ q u e u e   t o   m a k e   X L i s t  a _ q u e u e ' s   u n s h i f t ( " a " )  a _ q u e u e ' s   u n s h i f t ( " b " )  l o g   a _ q u e u e ' s   s h i f t ( )   - -   r e s u l t   :   " b "  l o g   a _ q u e u e ' s   s h i f t ( )   - -   r e s u l t   :   " a "   ( *   S t a c k   * )  s e t   a _ s t a c k   t o   m a k e   X L i s t  a _ q u e u e ' s   p u s h ( " a " )  a _ q u e u e ' s   p u s h ( " b " )  l o g   a _ q u e u e ' s   p o p ( )   - -   r e s u l t   :   " b "  l o g   a _ q u e u e ' s   p o p ( )   - -   r e s u l t   :   " a "   ( *   A c c e s s i n g   l i s t   e l e m e n t s   * )  s e t   a _ l i s t   t o   X L i s t ' s   m a k e _ w i t h ( { " a " ,   " b " ,   " c " } )  l o g   a _ l i s t ' s   i t e m _ c o u n t s ( )   - -   3  l o g   a _ l i s t ' s   i t e m _ a t ( 2 )   - -   " b "  l o g   a _ l i s t ' s   h a s _ i t e m ( " b " )   - - t r u e  l o g   a _ l i s t ' s   h a s _ i t e m ( " d " )   - - f a l s e  l o g   a _ l i s t ' s   i n d e x _ o f ( " b " )   - -   2  l o g   a _ l i s t ' s   i n d e x _ o f ( " d " )   - -   0  l o g   a _ l i s t ' s   d e l e t e _ a t ( 2 )   - -   " b "  l o g   ( s e t _ i t e m   o f   a _ l i s t   f o r   " e "   a t   2 )   - -   " e "  l o g   a _ l i s t ' s   l i s t _ r e f ( )   - -   { " a " ,   " e " }   ( *   C o n v e r s i o n   t o   T e x t   * )  l o g   a _ l i s t ' s   a s _ u n i c o d e _ w i t h ( " ,   " )   - -   " a ,   e "   ( *   A c c e s s i n g   a l l   i t e m s   w i t h   a   c l o s u r e   * )  s c r i p t   s c r i p t A  	 o n   d o ( x ,   s e n d e r )  	 	 i f   x   i s   " b "   t h e n  	 	 	 t e l l   s e n d e r  	 	 	 	 s e t _ i t e m _ a t ( " d " ,   c u r r e n t _ i n d e x ( ) )   - -   c h a n g e   a n   i t e m   o f   a   l i s t  	 	 	 e n d   t e l l  	 	 e n d   i f  	 	 r e t u r n   t r u e  	 e n d   d o  e n d   s c r i p t   a n _ i t e r a t o r ' s   e n u m e r a t e ( s c r i p t A )  l o g   a n _ i t e r a t o r ' s   a l l _ i t e m s ( )   - -   r e s u l t   :   { " a " ,   " d " ,   " c " }    s c r i p t   s c r i p t B  	 o n   d o ( x )  	 	 r e t u r n   x   &   " a "  	 e n d   d o  e n d   s c r i p t   l o g   a n _ i t e r a t o r ' s   m a p _ a s _ l i s t ( s c r i p t B )   - -   r e s u l t   :   { " a a " ,   " d a " ,   " c a " }  
 +  / 0 / l     ��������  ��  ��   0  1 2 1 l      �� 3 4��   3 ! !@group Constructor Method     4 � 5 5 6 ! @ g r o u p   C o n s t r u c t o r   M e t h o d   2  6 7 6 l     ��������  ��  ��   7  8 9 8 l      �� : ;��   : a [!
@abstruct 
Meke an instance of empty XList.
@result script object : a new XList instance
    ; � < < � ! 
 @ a b s t r u c t   
 M e k e   a n   i n s t a n c e   o f   e m p t y   X L i s t . 
 @ r e s u l t   s c r i p t   o b j e c t   :   a   n e w   X L i s t   i n s t a n c e 
 9  = > = i   - 0 ? @ ? I     ������
�� .corecrel****      � null��  ��   @ L      A A I     �� B���� 0 	make_with   B  C�� C J    ����  ��  ��   >  D E D l     ��������  ��  ��   E  F G F l      �� H I��   H � �!
@abstruct 
Meke an instance of XList with given an AppleScript's  list object.
@param�@a_list (list)
@result script object : a new XList instance
    I � J J& ! 
 @ a b s t r u c t   
 M e k e   a n   i n s t a n c e   o f   X L i s t   w i t h   g i v e n   a n   A p p l e S c r i p t ' s     l i s t   o b j e c t . 
 @ p a r a m0  a _ l i s t   ( l i s t ) 
 @ r e s u l t   s c r i p t   o b j e c t   :   a   n e w   X L i s t   i n s t a n c e 
 G  K L K i   1 4 M N M I      �� O���� 0 	make_with   O  P�� P o      ���� 
0 a_list  ��  ��   N k      Q Q  R S R r      T U T  f      U o      ���� 0 a_parent   S  V W V h    �� X�� 0 xlist XList X k       Y Y  Z [ Z j     �� \
�� 
pare \ o     ���� 0 a_parent   [  ] ^ ] j   	 �� _�� 0 	_contents   _ o   	 ���� 
0 a_list   ^  ` a ` j    �� b�� 0 _length   b I   �� c��
�� .corecnte****       **** c o    ���� 
0 a_list  ��   a  d�� d j    �� e�� 0 _n   e m    ���� ��   W  f g f l   ��������  ��  ��   g  h�� h L     i i o    ���� 0 xlist XList��   L  j k j l     ��������  ��  ��   k  l m l l      �� n o��   n � �!
@abstruct
A synonym of ((<make_with>))
@description
Meke an instance of XList with given an AppleScript's  list object.
@param�@a_list (list)
@result script object : a new XList instance
    o � p px ! 
 @ a b s t r u c t 
 A   s y n o n y m   o f   ( ( < m a k e _ w i t h > ) ) 
 @ d e s c r i p t i o n 
 M e k e   a n   i n s t a n c e   o f   X L i s t   w i t h   g i v e n   a n   A p p l e S c r i p t ' s     l i s t   o b j e c t . 
 @ p a r a m0  a _ l i s t   ( l i s t ) 
 @ r e s u l t   s c r i p t   o b j e c t   :   a   n e w   X L i s t   i n s t a n c e 
 m  q r q i   5 8 s t s I      �� u���� 0 make_with_list   u  v�� v o      ���� 
0 a_list  ��  ��   t L      w w I     �� x���� 0 	make_with   x  y�� y o    ���� 
0 a_list  ��  ��   r  z { z l     ��������  ��  ��   {  | } | l      �� ~ ��   ~ � �!
@abstruct 
Meke an instance of XList with from a list splitting a text with a delimiter.
@param�@a_text (Unicode or string)
@param a_delimiter (Unicode or string)
@result script object : a new XList instance
     � � �� ! 
 @ a b s t r u c t   
 M e k e   a n   i n s t a n c e   o f   X L i s t   w i t h   f r o m   a   l i s t   s p l i t t i n g   a   t e x t   w i t h   a   d e l i m i t e r . 
 @ p a r a m0  a _ t e x t   ( U n i c o d e   o r   s t r i n g ) 
 @ p a r a m   a _ d e l i m i t e r   ( U n i c o d e   o r   s t r i n g ) 
 @ r e s u l t   s c r i p t   o b j e c t   :   a   n e w   X L i s t   i n s t a n c e 
 }  � � � i   9 < � � � I      �� ����� 0 make_with_text   �  � � � o      ���� 
0 a_text   �  ��� � o      ���� 0 a_delimiter  ��  ��   � k      � �  � � � r      � � � n     � � � 1    ��
�� 
txdl � 1     ��
�� 
ascr � o      ���� 0 	pre_delim   �  � � � r     � � � o    ���� 0 a_delimiter   � n      � � � 1    
��
�� 
txdl � 1    ��
�� 
ascr �  � � � r     � � � n     � � � 2    ��
�� 
citm � o    ���� 
0 a_text   � o      ���� 
0 a_list   �  � � � r     � � � o    ���� 0 	pre_delim   � n      � � � 1    ��
�� 
txdl � 1    ��
�� 
ascr �  ��� � L     � � I    �� ����� 0 	make_with   �  ��� � o    ���� 
0 a_list  ��  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l      �� � ���   � $ !@group  Methods for Iterator     � � � � < ! @ g r o u p     M e t h o d s   f o r   I t e r a t o r   �  � � � l     ��������  ��  ��   �  � � � l      �� � ���   � � �!
@abstruct
return an item in the list next to the item obtained by previous ((<next>))()
@description
When the last item have been already returned, error number 1351 is raised.
@result anything
    � � � �� ! 
 @ a b s t r u c t 
 r e t u r n   a n   i t e m   i n   t h e   l i s t   n e x t   t o   t h e   i t e m   o b t a i n e d   b y   p r e v i o u s   ( ( < n e x t > ) ) ( ) 
 @ d e s c r i p t i o n 
 W h e n   t h e   l a s t   i t e m   h a v e   b e e n   a l r e a d y   r e t u r n e d ,   e r r o r   n u m b e r   1 3 5 1   i s   r a i s e d . 
 @ r e s u l t   a n y t h i n g 
 �  � � � i   = @ � � � I      �������� 0 next  ��  ��   � k     < � �  � � � Q     / � � � � r     � � � n     � � � 4    �� �
�� 
cobj � l    ����� � n    � � � o    
���� 0 _n   �  f    ��  ��   � n    � � � o    ���� 0 	_contents   �  f     � o      ���� 0 an_item   � R      �� � �
�� .ascrerr ****      � **** � o      ���� 0 msg   � �� ���
�� 
errn � d       � � m      �������   � Z    / � ��� � � ?     � � � n    � � � o    ���� 0 _n   �  f     � n    � � � o    ���� 0 _length   �  f     � R     &� � �
� .ascrerr ****      � **** � m   $ % � � � � �  N o   n e x t   i t e m . � �~ ��}
�~ 
errn � m   " #�|�|G�}  ��   � R   ) /�{ � �
�{ .ascrerr ****      � **** � o   - .�z�z 0 msg   � �y ��x
�y 
errn � m   + ,�w�w�@�x   �  � � � l  0 0�v�u�t�v  �u  �t   �  � � � r   0 9 � � � [   0 5 � � � l  0 3 ��s�r � n  0 3 � � � o   1 3�q�q 0 _n   �  f   0 1�s  �r   � m   3 4�p�p  � n      � � � o   6 8�o�o 0 _n   �  f   5 6 �  ��n � L   : < � � o   : ;�m�m 0 an_item  �n   �  � � � l     �l�k�j�l  �k  �j   �  � � � i   A D � � � I      �i�h�g�i 0 	next_item  �h  �g   � L      � � I     �f�e�d�f 0 next  �e  �d   �  � � � l     �c�b�a�c  �b  �a   �  � � � l      �` � ��`   � � �!
@abstruct
check whether ((<next>))() can return a next item or not
@description 
false should be returned, when the last item have been already returned with ((<next>))().
@result boolean
    � � � �| ! 
 @ a b s t r u c t 
 c h e c k   w h e t h e r   ( ( < n e x t > ) ) ( )   c a n   r e t u r n   a   n e x t   i t e m   o r   n o t 
 @ d e s c r i p t i o n   
 f a l s e   s h o u l d   b e   r e t u r n e d ,   w h e n   t h e   l a s t   i t e m   h a v e   b e e n   a l r e a d y   r e t u r n e d   w i t h   ( ( < n e x t > ) ) ( ) . 
 @ r e s u l t   b o o l e a n 
 �  � � � i   E H � � � I      �_�^�]�_ 0 has_next  �^  �]   � L      � � B     �  � n     o    �\�\ 0 _n    f       n    o    �[�[ 0 _length    f     �  l     �Z�Y�X�Z  �Y  �X    l      �W	
�W  	 [ U!
@abstruct
The item obtained by previous ((<next>))() is returned.
@result anything
   
 � � ! 
 @ a b s t r u c t 
 T h e   i t e m   o b t a i n e d   b y   p r e v i o u s   ( ( < n e x t > ) ) ( )   i s   r e t u r n e d . 
 @ r e s u l t   a n y t h i n g 
  i   I L I      �V�U�T�V 0 current_item  �U  �T   L      n      4    
�S
�S 
cobj l   	�R�Q \    	 l   �P�O n    o    �N�N 0 _n    f    �P  �O   m    �M�M �R  �Q   n     o    �L�L 0 	_contents    f       l     �K�J�I�K  �J  �I    l      �H !�H    l f!
@abstruct
An index number of an item obtained by previous ((<next>))() is returned.
@result integer
   ! �"" � ! 
 @ a b s t r u c t 
 A n   i n d e x   n u m b e r   o f   a n   i t e m   o b t a i n e d   b y   p r e v i o u s   ( ( < n e x t > ) ) ( )   i s   r e t u r n e d . 
 @ r e s u l t   i n t e g e r 
 #$# i   M P%&% I      �G�F�E�G 0 current_index  �F  �E  & L     '' \     ()( l    *�D�C* n    +,+ o    �B�B 0 _n  ,  f     �D  �C  ) m    �A�A $ -.- l     �@�?�>�@  �?  �>  . /0/ l      �=12�=  1 y s!
@abstruct�@
Decrements the index of the item obtained by ((<next>))(). i.e. same item can be obtained once more.
   2 �33 � ! 
 @ a b s t r u c t0  
 D e c r e m e n t s   t h e   i n d e x   o f   t h e   i t e m   o b t a i n e d   b y   ( ( < n e x t > ) ) ( ) .   i . e .   s a m e   i t e m   c a n   b e   o b t a i n e d   o n c e   m o r e . 
0 454 i   Q T676 I      �<�;�:�< 0 decrement_index  �;  �:  7 Z     89�9�88 ?     :;: n    <=< o    �7�7 0 _n  =  f     ; m    �6�6 9 r    >?> \    @A@ l   B�5�4B n   CDC o   	 �3�3 0 _n  D  f    	�5  �4  A m    �2�2 ? n     EFE o    �1�1 0 _n  F  f    �9  �8  5 GHG l     �0�/�.�0  �/  �.  H IJI l      �-KL�-  K ` Z!
@abstruct
Increments the index of the item obtained by ((<next>))(). i.e. skip an item.
   L �MM � ! 
 @ a b s t r u c t 
 I n c r e m e n t s   t h e   i n d e x   o f   t h e   i t e m   o b t a i n e d   b y   ( ( < n e x t > ) ) ( ) .   i . e .   s k i p   a n   i t e m . 
J NON i   U XPQP I      �,�+�*�, 0 increment_index  �+  �*  Q Z     RS�)�(R ?     TUT n    VWV o    �'�' 0 _n  W  f     U m    �&�& S r    XYX [    Z[Z l   \�%�$\ n   ]^] o   	 �#�# 0 _n  ^  f    	�%  �$  [ m    �"�" Y n     _`_ o    �!�! 0 _n  `  f    �)  �(  O aba l     � ���   �  �  b cdc l      �ef�  e H B!
@abstruct
Make ((<next>))() return items form first.
@result
me
   f �gg � ! 
 @ a b s t r u c t 
 M a k e   ( ( < n e x t > ) ) ( )   r e t u r n   i t e m s   f o r m   f i r s t . 
 @ r e s u l t 
 m e 
d hih i   Y \jkj I      ���� 	0 reset  �  �  k k     ll mnm r     opo m     �� p n     qrq o    �� 0 _n  r  f    n s�s L    tt  f    �  i uvu l     ����  �  �  v wxw l      �yz�  y  !@group Stack and Quene    z �{{ 0 ! @ g r o u p   S t a c k   a n d   Q u e n e  x |}| l     ����  �  �  } ~~ l      ����  � u o!
@abstruct
Append an item at the end of the list.
@param an_item(anything) : 
an item to append into the list
   � ��� � ! 
 @ a b s t r u c t 
 A p p e n d   a n   i t e m   a t   t h e   e n d   o f   t h e   l i s t . 
 @ p a r a m   a n _ i t e m ( a n y t h i n g )   :   
 a n   i t e m   t o   a p p e n d   i n t o   t h e   l i s t 
 ��� i   ] `��� I      ���� 0 push  � ��� o      �� 0 an_item  �  �  � k     �� ��� r     ��� o     �
�
 0 an_item  � n      ���  ;    � n   ��� o    �	�	 0 	_contents  �  f    � ��� r    ��� [    ��� l   
���� n   
��� o    
�� 0 _length  �  f    �  �  � m   
 �� � n     ��� o    �� 0 _length  �  f    �  � ��� l     ��� �  �  �   � ��� l      ������  � v p!
@abstruct
Obtain last item in the stored list, and remove the item.
@result anything : 
last item in the list
   � ��� � ! 
 @ a b s t r u c t 
 O b t a i n   l a s t   i t e m   i n   t h e   s t o r e d   l i s t ,   a n d   r e m o v e   t h e   i t e m . 
 @ r e s u l t   a n y t h i n g   :   
 l a s t   i t e m   i n   t h e   l i s t 
� ��� i   a d��� I      �������� 0 pop  ��  ��  � k     E�� ��� Q     ���� r    ��� n    	��� 4   	���
�� 
cobj� m    ������� n   ��� o    ���� 0 	_contents  �  f    � o      ���� 0 a_result  � R      ������
�� .ascrerr ****      � ****��  ��  � L    �� m    ��
�� 
msng� ��� l   ��������  ��  ��  � ��� Q    8���� r    *��� n    &��� 7   &����
�� 
cobj� m     "���� � m   # %������� n   ��� o    ���� 0 	_contents  �  f    � n     ��� o   ' )���� 0 	_contents  �  f   & '� R      ������
�� .ascrerr ****      � ****��  ��  � r   2 8��� J   2 4����  � n     ��� o   5 7���� 0 	_contents  �  f   4 5� ��� l  9 9��������  ��  ��  � ��� r   9 B��� \   9 >��� l  9 <������ n  9 <��� o   : <���� 0 _length  �  f   9 :��  ��  � m   < =���� � n     ��� o   ? A���� 0 _length  �  f   > ?� ���� L   C E�� o   C D���� 0 a_result  ��  � ��� l     ��������  ��  ��  � ��� l      ������  � q k!
@abstruct
Append an item at the beginning of the list.
@param an_item(anything) :
an item to be appended
   � ��� � ! 
 @ a b s t r u c t 
 A p p e n d   a n   i t e m   a t   t h e   b e g i n n i n g   o f   t h e   l i s t . 
 @ p a r a m   a n _ i t e m ( a n y t h i n g )   : 
 a n   i t e m   t o   b e   a p p e n d e d 
� ��� i   e h��� I      ������� 0 unshift  � ���� o      ���� 0 an_item  ��  ��  � k     �� ��� r     ��� o     ���� 0 an_item  � n      ���  :    � n   ��� o    ���� 0 	_contents  �  f    � ��� I    �������� 0 increment_index  ��  ��  � ��� r    ��� [    ��� l   ������ n   ��� o    ���� 0 _length  �  f    ��  ��  � m    ���� � n     ��� o    ���� 0 _length  �  f    � ���� L    ��  f    ��  � ��� l     ��������  ��  ��  �    l      ����   j d!
@abstruct
Obtain first item in the list and remove it.
@result anything : 
first item in the list
    � � ! 
 @ a b s t r u c t 
 O b t a i n   f i r s t   i t e m   i n   t h e   l i s t   a n d   r e m o v e   i t . 
 @ r e s u l t   a n y t h i n g   :   
 f i r s t   i t e m   i n   t h e   l i s t 
  i   i l I      �������� 	0 shift  ��  ��   k     2		 

 Q      r     n    	 4   	��
�� 
cobj m    ����  n    o    ���� 0 	_contents    f     o      ���� 0 a_result   R      ������
�� .ascrerr ****      � ****��  ��   L     m    ��
�� 
msng  l   ��������  ��  ��    r     n     1    ��
�� 
rest n     o    ���� 0 	_contents     f     n     !"! o    ���� 0 	_contents  "  f     #$# I     %�������� 0 decrement_index  ��  ��  $ %&% r   & /'(' \   & +)*) l  & )+����+ n  & ),-, o   ' )���� 0 _length  -  f   & '��  ��  * m   ) *���� ( n     ./. o   , .���� 0 _length  /  f   + ,& 0��0 L   0 211 o   0 1���� 0 a_result  ��   232 l     ��������  ��  ��  3 454 l     ��������  ��  ��  5 676 l      ��89��  8 # !@group Accessing List Items    9 �:: : ! @ g r o u p   A c c e s s i n g   L i s t   I t e m s  7 ;<; l      ��=>��  = < 6!
@abstruct
Return number of elements
@result integer
   > �?? l ! 
 @ a b s t r u c t 
 R e t u r n   n u m b e r   o f   e l e m e n t s 
 @ r e s u l t   i n t e g e r 
< @A@ i   m pBCB I      �������� 0 count_items  ��  ��  C L     DD I    ��E��
�� .corecnte****       ****E n    FGF o    ���� 0 	_contents  G  f     ��  A HIH l     ��������  ��  ��  I JKJ i   q tLML I      �������� 0 item_counts  ��  ��  M L     NN I    ��O��
�� .corecnte****       ****O n    PQP o    ���� 0 	_contents  Q  f     ��  K RSR l     ��������  ��  ��  S TUT i   u xVWV I     ������
�� .corecnte****       ****��  ��  W L     XX I    ��Y��
�� .corecnte****       ****Y n    Z[Z o    ���� 0 	_contents  [  f     ��  U \]\ l     ��������  ��  ��  ] ^_^ l      ��`a��  ` � �!
@abstruct
Delete an item specified with an index number.
@param indexes(integer or list of interger) :
an index number or list of indexes of items to delete
@result list : 
a list of deleted items form the XList contents
   a �bb� ! 
 @ a b s t r u c t 
 D e l e t e   a n   i t e m   s p e c i f i e d   w i t h   a n   i n d e x   n u m b e r . 
 @ p a r a m   i n d e x e s ( i n t e g e r   o r   l i s t   o f   i n t e r g e r )   : 
 a n   i n d e x   n u m b e r   o r   l i s t   o f   i n d e x e s   o f   i t e m s   t o   d e l e t e 
 @ r e s u l t   l i s t   :   
 a   l i s t   o f   d e l e t e d   i t e m s   f o r m   t h e   X L i s t   c o n t e n t s 
_ cdc i   y |efe I      ��g���� 0 	delete_at  g h��h o      ���� 0 indexes  ��  ��  f k     �ii jkj r     lml c     non o     ���� 0 indexes  o m    ��
�� 
listm o      ���� 0 indexes  k pqp r    
rsr J    ��  s o      �~�~ 
0 a_list  q tut l   �}�|�{�}  �|  �{  u vwv Y    �x�zyz�yx k    �{{ |}| r    ~~ n    ��� 4    �x�
�x 
cobj� o    �w�w 0 n  � o    �v�v 0 indexes   o      �u�u 0 an_index  } ��� l   �t���t  �  log "start delete_item"   � ��� . l o g   " s t a r t   d e l e t e _ i t e m "� ��� r    (��� n    %��� 4   " %�s�
�s 
cobj� o   # $�r�r 0 an_index  � n   "��� o     "�q�q 0 	_contents  �  f     � n      ���  ;   & '� o   % &�p�p 
0 a_list  � ��� Z   ) }����� =  ) ,��� o   ) *�o�o 0 an_index  � m   * +�n�n � r   / 8��� n   / 4��� 1   2 4�m
�m 
rest� n  / 2��� o   0 2�l�l 0 	_contents  �  f   / 0� n     ��� o   5 7�k�k 0 	_contents  �  f   4 5� ��� E  ; C��� J   ; A�� ��� n  ; >��� o   < >�j�j 0 _length  �  f   ; <� ��i� m   > ?�h�h���i  � o   A B�g�g 0 an_index  � ��f� r   F W��� n   F S��� 7  I S�e��
�e 
cobj� m   M O�d�d � m   P R�c�c��� n  F I��� o   G I�b�b 0 	_contents  �  f   F G� n     ��� o   T V�a�a 0 	_contents  �  f   S T�f  � r   Z }��� b   Z y��� l  Z i��`�_� n   Z i��� 7  ] i�^��
�^ 
cobj� m   a c�]�] � l  d h��\�[� \   d h��� o   e f�Z�Z 0 an_index  � m   f g�Y�Y �\  �[  � n  Z ]��� o   [ ]�X�X 0 	_contents  �  f   Z [�`  �_  � l  i x��W�V� n   i x��� 7  l x�U��
�U 
cobj� l  p t��T�S� [   p t��� o   q r�R�R 0 an_index  � m   r s�Q�Q �T  �S  � m   u w�P�P��� n  i l��� o   j l�O�O 0 	_contents  �  f   i j�W  �V  � n     ��� o   z |�N�N 0 	_contents  �  f   y z� ��� l  ~ ~�M�L�K�M  �L  �K  � ��� Z   ~ ����J�I� l  ~ ���H�G� ?   ~ ���� n  ~ ���� o    ��F�F 0 _n  �  f   ~ � o   � ��E�E 0 an_index  �H  �G  � r   � ���� [   � ���� l  � ���D�C� n  � ���� o   � ��B�B 0 _n  �  f   � ��D  �C  � m   � ��A�A � n     ��� o   � ��@�@ 0 _n  �  f   � ��J  �I  � ��� l  � ��?�>�=�?  �>  �=  � ��<� r   � ���� \   � ���� l  � ���;�:� n  � ���� o   � ��9�9 0 _length  �  f   � ��;  �:  � m   � ��8�8 � n     ��� o   � ��7�7 0 _length  �  f   � ��<  �z 0 n  y m    �6�6 z n    ��� 1    �5
�5 
leng� o    �4�4 0 indexes  �y  w ��� l  � ��3���3  �  log "end delete_item"   � ��� * l o g   " e n d   d e l e t e _ i t e m "� ��2� L   � ��� o   � ��1�1 
0 a_list  �2  d ��� l     �0�/�.�0  �/  �.  � ��� l      �-� �-  �nh!
@abstruct
Obtain an item specified with an index number. When a list of indexes is passed as an argument, multiple items will be obtained.
@param an_index(integer or list of integer) : 
an index number or a list of indexes of the items to obtain
@result anything : 
Return an_index th item. error number -1728 will be rased when an item can not be obtained.
     �� ! 
 @ a b s t r u c t 
 O b t a i n   a n   i t e m   s p e c i f i e d   w i t h   a n   i n d e x   n u m b e r .   W h e n   a   l i s t   o f   i n d e x e s   i s   p a s s e d   a s   a n   a r g u m e n t ,   m u l t i p l e   i t e m s   w i l l   b e   o b t a i n e d . 
 @ p a r a m   a n _ i n d e x ( i n t e g e r   o r   l i s t   o f   i n t e g e r )   :   
 a n   i n d e x   n u m b e r   o r   a   l i s t   o f   i n d e x e s   o f   t h e   i t e m s   t o   o b t a i n 
 @ r e s u l t   a n y t h i n g   :   
 R e t u r n   a n _ i n d e x   t h   i t e m .   e r r o r   n u m b e r   - 1 7 2 8   w i l l   b e   r a s e d   w h e n   a n   i t e m   c a n   n o t   b e   o b t a i n e d . 
�  i   } � I      �,�+�, 0 item_at   �* o      �)�) 0 an_index  �*  �+   k     B 	
	 Z     �(�' >     n      m    �&
�& 
pcls o     �%�% 0 an_index   m    �$
�$ 
list L     n     4    �#
�# 
cobj o    �"�" 0 an_index   n    o   	 �!�! 0 	_contents    f    	�(  �'  
  l   � ���   �  �    r     J    ��   o      �� 
0 a_list    r    "  I     �!�� 0 	make_with  ! "�" o    �� 0 an_index  �  �    o      �� 0 
index_list   #$# V   # ?%&% r   - :'(' n   - 7)*) 4   0 7�+
� 
cobj+ l  1 6,��, n  1 6-.- I   2 6���� 0 next  �  �  . o   1 2�� 0 	inde_list  �  �  * n  - 0/0/ o   . 0�� 0 	_contents  0  f   - .( n      121  ;   8 92 o   7 8�� 
0 a_list  & n  ' ,343 I   ( ,���� 0 has_next  �  �  4 o   ' (�
�
 0 
index_list  $ 5�	5 L   @ B66 o   @ A�� 
0 a_list  �	   787 l     ����  �  �  8 9:9 l      �;<�  ; � �!
@abstruct
Obtain items between two indexes.
@param s_index(integer) : 
the first index number
@param e_index(integer) : 
the last index number
@result XList : 
An XList instance of elements from s_index to e_index
   < �==� ! 
 @ a b s t r u c t 
 O b t a i n   i t e m s   b e t w e e n   t w o   i n d e x e s . 
 @ p a r a m   s _ i n d e x ( i n t e g e r )   :   
 t h e   f i r s t   i n d e x   n u m b e r 
 @ p a r a m   e _ i n d e x ( i n t e g e r )   :   
 t h e   l a s t   i n d e x   n u m b e r 
 @ r e s u l t   X L i s t   :   
 A n   X L i s t   i n s t a n c e   o f   e l e m e n t s   f r o m   s _ i n d e x   t o   e _ i n d e x 
: >?> i   � �@A@ I      �B�� 0 items_in_range  B CDC o      �� 0 s_index  D E� E o      ���� 0 e_index  �   �  A L     FF I     ��G���� 0 	make_with  G H��H n    IJI 7   ��KL
�� 
cobjK o    
���� 0 s_index  L o    ���� 0 e_index  J n   MNM o    ���� 0 	_contents  N  f    ��  ��  ? OPO l     ��������  ��  ��  P QRQ l      ��ST��  S � �!
@abstruct
set an item at a specified index.
@description
A synonym of ((<set_item_at>)).
@param an_index(integer) : 
an index number of the item to set
   T �UU4 ! 
 @ a b s t r u c t 
 s e t   a n   i t e m   a t   a   s p e c i f i e d   i n d e x . 
 @ d e s c r i p t i o n 
 A   s y n o n y m   o f   ( ( < s e t _ i t e m _ a t > ) ) . 
 @ p a r a m   a n _ i n d e x ( i n t e g e r )   :   
 a n   i n d e x   n u m b e r   o f   t h e   i t e m   t o   s e t 
R VWV i   � �XYX I      ����Z�� 0 set_item  ��  Z ��[\
�� 
for [ o      ���� 0 a_value  \ ��]��
�� 
at  ] o      ���� 0 an_index  ��  Y r     ^_^ o     ���� 0 a_value  _ n      `a` 4    ��b
�� 
cobjb o    ���� 0 an_index  a n   cdc o    ���� 0 	_contents  d  f    W efe l     ��������  ��  ��  f ghg l      ��ij��  i � �!
@abstruct
set an item at a specified index.
@description
A synonym of ((<set_item>)).
@param an_index(integer) : 
an index number of the item to set
   j �kk. ! 
 @ a b s t r u c t 
 s e t   a n   i t e m   a t   a   s p e c i f i e d   i n d e x . 
 @ d e s c r i p t i o n 
 A   s y n o n y m   o f   ( ( < s e t _ i t e m > ) ) . 
 @ p a r a m   a n _ i n d e x ( i n t e g e r )   :   
 a n   i n d e x   n u m b e r   o f   t h e   i t e m   t o   s e t 
h lml i   � �non I      ��p���� 0 set_item_at  p qrq o      ���� 0 a_value  r s��s o      ���� 0 an_index  ��  ��  o r     tut o     ���� 0 a_value  u n      vwv 4    ��x
�� 
cobjx o    ���� 0 an_index  w n   yzy o    ���� 0 	_contents  z  f    m {|{ l     ��������  ��  ��  | }~} l      �����   � �!
@abstruct
Exchange items specified with indexes
@param index1(integer) : 
first index of an element to exchange
<!-- end locale -->
@param index2 (integer) : 
second index of an element to exchange
   � ���� ! 
 @ a b s t r u c t 
 E x c h a n g e   i t e m s   s p e c i f i e d   w i t h   i n d e x e s 
 @ p a r a m   i n d e x 1 ( i n t e g e r )   :   
 f i r s t   i n d e x   o f   a n   e l e m e n t   t o   e x c h a n g e 
 < ! - -   e n d   l o c a l e   - - > 
 @ p a r a m   i n d e x 2   ( i n t e g e r )   :   
 s e c o n d   i n d e x   o f   a n   e l e m e n t   t o   e x c h a n g e 
~ ��� i   � ���� I      ������� 0 exchange_items  � ��� o      ���� 
0 index1  � ���� o      ���� 
0 index2  ��  ��  � k     �� ��� r     ��� n     ��� 4    ���
�� 
cobj� o    ���� 
0 index1  � n    ��� o    ���� 0 	_contents  �  f     � o      ���� 
0 a_buff  � ��� r   	 ��� n   	 ��� 4    ���
�� 
cobj� o    ���� 
0 index2  � n  	 ��� o   
 ���� 0 	_contents  �  f   	 
� n      ��� 4    ���
�� 
cobj� o    ���� 
0 index1  � n   ��� o    ���� 0 	_contents  �  f    � ���� r    ��� o    ���� 
0 a_buff  � n      ��� 4    ���
�� 
cobj� o    ���� 
0 index2  � n   ��� o    ���� 0 	_contents  �  f    ��  � ��� l     ��������  ��  ��  � ��� l      ������  � � �!
@abstruct
Check whether the object "an_item" is included in the XList instance or not.
@param an_item(boolean)
@result anything : 
if an_item is in the XList instance, ture will be returned.
   � ���� ! 
 @ a b s t r u c t 
 C h e c k   w h e t h e r   t h e   o b j e c t   " a n _ i t e m "   i s   i n c l u d e d   i n   t h e   X L i s t   i n s t a n c e   o r   n o t . 
 @ p a r a m   a n _ i t e m ( b o o l e a n ) 
 @ r e s u l t   a n y t h i n g   :   
 i f   a n _ i t e m   i s   i n   t h e   X L i s t   i n s t a n c e ,   t u r e   w i l l   b e   r e t u r n e d . 
� ��� i   � ���� I      ������� 0 has_item  � ���� o      ���� 0 an_item  ��  ��  � L     �� E    ��� n    ��� o    ���� 0 	_contents  �  f     � o    ���� 0 an_item  � ��� l     ��������  ��  ��  � ��� l      ������  � � �!
@abstruct
Obtain an index number of the object "an_item" in the XList instance.
@param an_item(integer)
@result anything : 
an index number of an_item
   � ���2 ! 
 @ a b s t r u c t 
 O b t a i n   a n   i n d e x   n u m b e r   o f   t h e   o b j e c t   " a n _ i t e m "   i n   t h e   X L i s t   i n s t a n c e . 
 @ p a r a m   a n _ i t e m ( i n t e g e r ) 
 @ r e s u l t   a n y t h i n g   :   
 a n   i n d e x   n u m b e r   o f   a n _ i t e m 
� ��� i   � ���� I      ������� 0 index_of  � ���� o      ���� 0 an_item  ��  ��  � k     >�� ��� Z     ������� H     �� I     ������� 0 has_item  � ���� o    ���� 0 an_item  ��  ��  � L   
 �� m   
 ����  ��  ��  � ��� l   ��������  ��  ��  � ��� r    ��� m    ����  � o      ���� 0 an_index  � ��� Y    ;�������� Z   " 6������� =  " *��� n   " (��� 4   % (���
�� 
cobj� o   & '���� 0 n  � n  " %��� o   # %���� 0 	_contents  �  f   " #� o   ( )���� 0 an_item  � k   - 2�� ��� r   - 0��� o   - .���� 0 n  � o      ���� 0 an_index  � ����  S   1 2��  ��  ��  �� 0 n  � m    ���� � n   ��� o    ���� 0 _length  �  f    ��  � ��� l  < <��������  ��  ��  � ���� L   < >�� o   < =���� 0 an_index  ��  � ��� l     ��������  ��  ��  � ��� l      ������  � > 8!
@abstruct
return a copy of stored list.
@result list 
   � ��� p ! 
 @ a b s t r u c t 
 r e t u r n   a   c o p y   o f   s t o r e d   l i s t . 
 @ r e s u l t   l i s t   
� ��� i   � ���� I      �������� 0 	all_items  ��  ��  � k     	�� ��� s        n     o    ���� 0 	_contents    f      o      ���� 
0 a_list  � �� L    	 o    ���� 
0 a_list  ��  �  l     ��������  ��  ��   	 l      ��
��  
 � �!
@abstruct
return the stored list.
@description
Changing elements in retuend list means changing contents of the XList instance.
It is recommended not to use this method.
@result list 
    �t ! 
 @ a b s t r u c t 
 r e t u r n   t h e   s t o r e d   l i s t . 
 @ d e s c r i p t i o n 
 C h a n g i n g   e l e m e n t s   i n   r e t u e n d   l i s t   m e a n s   c h a n g i n g   c o n t e n t s   o f   t h e   X L i s t   i n s t a n c e . 
 I t   i s   r e c o m m e n d e d   n o t   t o   u s e   t h i s   m e t h o d . 
 @ r e s u l t   l i s t   
	  i   � � I      �������� 0 list_ref  ��  ��   L      n     o    ���� 0 	_contents    f       l     ����~��  �  �~    l      �}�}   } w!
@abstruct
Add each item contained passed list at end of the reciver's XList instance.
@param a_list(list)
@result me
    � � ! 
 @ a b s t r u c t 
 A d d   e a c h   i t e m   c o n t a i n e d   p a s s e d   l i s t   a t   e n d   o f   t h e   r e c i v e r ' s   X L i s t   i n s t a n c e . 
 @ p a r a m   a _ l i s t ( l i s t ) 
 @ r e s u l t   m e 
  i   � � I      �|�{�| 0 add_from_list    �z  o      �y�y 
0 a_list  �z  �{   k     !! "#" r     	$%$ b     &'& n    ()( o    �x�x 0 	_contents  )  f     ' o    �w�w 
0 a_list  % n     *+* o    �v�v 0 	_contents  +  f    # ,-, r   
 ./. [   
 010 l  
 2�u�t2 n  
 343 o    �s�s 0 _length  4  f   
 �u  �t  1 l   5�r�q5 I   �p6�o
�p .corecnte****       ****6 o    �n�n 
0 a_list  �o  �r  �q  / n     787 o    �m�m 0 _length  8  f    - 9�l9 L    ::  f    �l   ;<; l     �k�j�i�k  �j  �i  < =>= l      �h?@�h  ? ! !@group Conversion to Text    @ �AA 6 ! @ g r o u p   C o n v e r s i o n   t o   T e x t  > BCB l     �g�f�e�g  �f  �e  C DED l      �dFG�d  F � �!
@abstruct
Join every elements with given a delimiters as ((<XText>))
@param a_delimiter (string or Unicode text): 
text to be used as a delimiter to join text list
@result script object : a ((<XText>)) instance
   G �HH� ! 
 @ a b s t r u c t 
 J o i n   e v e r y   e l e m e n t s   w i t h   g i v e n   a   d e l i m i t e r s   a s   ( ( < X T e x t > ) ) 
 @ p a r a m   a _ d e l i m i t e r   ( s t r i n g   o r   U n i c o d e   t e x t ) :   
 t e x t   t o   b e   u s e d   a s   a   d e l i m i t e r   t o   j o i n   t e x t   l i s t 
 @ r e s u l t   s c r i p t   o b j e c t   :   a   ( ( < X T e x t > ) )   i n s t a n c e 
E IJI i   � �KLK I      �cM�b�c 0 as_xtext_with  M N�aN o      �`�` 0 a_delimiter  �a  �b  L k     OO PQP r     RSR I     �_T�^�_ 0 as_unicode_with  T U�]U o    �\�\ 0 a_delimiter  �]  �^  S o      �[�[ 
0 a_text  Q V�ZV L   	 WW n  	 XYX I    �YZ�X�Y 0 	make_with  Z [�W[ o    �V�V 
0 a_text  �W  �X  Y o   	 �U�U 0 xtext XText�Z  J \]\ l     �T�S�R�T  �S  �R  ] ^_^ l      �Q`a�Q  ` � �!
@abstruct
Join every elements with given a delimiters as Unicode text
@param a_delimiter (string or Unicode text): 
text to be used as a delimiter to join text list
@result Unicode text
   a �bbx ! 
 @ a b s t r u c t 
 J o i n   e v e r y   e l e m e n t s   w i t h   g i v e n   a   d e l i m i t e r s   a s   U n i c o d e   t e x t 
 @ p a r a m   a _ d e l i m i t e r   ( s t r i n g   o r   U n i c o d e   t e x t ) :   
 t e x t   t o   b e   u s e d   a s   a   d e l i m i t e r   t o   j o i n   t e x t   l i s t 
 @ r e s u l t   U n i c o d e   t e x t 
_ cdc i   � �efe I      �Pg�O�P 0 as_unicode_with  g h�Nh o      �M�M 0 a_delimiter  �N  �O  f k     #ii jkj O      lml k    nn opo I    �L�K�J�L 0 store_delimiters  �K  �J  p qrq r    sts I    �Iu�H�I 0 	join_list  u vwv n   xyx o    �G�G 0 	_contents  y  f    w z�Fz o    �E�E 0 a_delimiter  �F  �H  t o      �D�D 
0 a_text  r {�C{ I    �B�A�@�B 0 restore_delimiters  �A  �@  �C  m o     �?�? 0 xtext XTextk |�>| L   ! #}} o   ! "�=�= 
0 a_text  �>  d ~~ l     �<�;�:�<  �;  �:   ��� l      �9���9  � � �!
@abstruct
A synonym of ((<as_unicode_with>)). Join every elements with given a delimiters as Unicode text.
@param a_delimiter (string or Unicode text): 
text to be used as a delimiter to join text list
@result Unicode text
   � ���� ! 
 @ a b s t r u c t 
 A   s y n o n y m   o f   ( ( < a s _ u n i c o d e _ w i t h > ) ) .   J o i n   e v e r y   e l e m e n t s   w i t h   g i v e n   a   d e l i m i t e r s   a s   U n i c o d e   t e x t . 
 @ p a r a m   a _ d e l i m i t e r   ( s t r i n g   o r   U n i c o d e   t e x t ) :   
 t e x t   t o   b e   u s e d   a s   a   d e l i m i t e r   t o   j o i n   t e x t   l i s t 
 @ r e s u l t   U n i c o d e   t e x t 
� ��� i   � ���� I      �8��7�8 0 as_text_with  � ��6� o      �5�5 0 a_delimiter  �6  �7  � L     �� I     �4��3�4 0 as_unicode_with  � ��2� o    �1�1 0 a_delimiter  �2  �3  � ��� l     �0�/�.�0  �/  �.  � ��� l      �-���-  � � �!
@abstruct
Join every elements with given a delimiters as string
@param a_delimiter (string or Unicode text): 
text to be used as a delimiter to join text list
@result string
   � ���` ! 
 @ a b s t r u c t 
 J o i n   e v e r y   e l e m e n t s   w i t h   g i v e n   a   d e l i m i t e r s   a s   s t r i n g 
 @ p a r a m   a _ d e l i m i t e r   ( s t r i n g   o r   U n i c o d e   t e x t ) :   
 t e x t   t o   b e   u s e d   a s   a   d e l i m i t e r   t o   j o i n   t e x t   l i s t 
 @ r e s u l t   s t r i n g 
� ��� i   � ���� I      �,��+�, 0 as_string_with  � ��*� o      �)�) 0 a_delimiter  �*  �+  � k     #�� ��� O      ��� k    �� ��� I    �(�'�&�( 0 store_delimiters  �'  �&  � ��� r    ��� I    �%��$�% 0 join_as_string  � ��� n   ��� o    �#�# 0 	_contents  �  f    � ��"� o    �!�! 0 a_delimiter  �"  �$  � o      � �  
0 a_text  � ��� I    ���� 0 restore_delimiters  �  �  �  � o     �� 0 xtext XText� ��� L   ! #�� o   ! "�� 
0 a_text  �  � ��� l     ����  �  �  � ��� l     ����  �  �  � ��� l      ����  � &  !@group Loop with Script Object    � ��� @ ! @ g r o u p   L o o p   w i t h   S c r i p t   O b j e c t  � ��� l     ����  �  �  � ��� l      ����  ���!
@abstruct 
Call do handler of given script object with passing a reference to each item in the XList as an argument.
@description 
a_script must have a�@do handler which require only argument. The do handler must return true or false. When the do handler return false, the process is stoped immediately.
@param
a_script(script object) : must have a do handler which require only argument. The do handler must return boolean.
   � ���T ! 
 @ a b s t r u c t   
 C a l l   d o   h a n d l e r   o f   g i v e n   s c r i p t   o b j e c t   w i t h   p a s s i n g   a   r e f e r e n c e   t o   e a c h   i t e m   i n   t h e   X L i s t   a s   a n   a r g u m e n t . 
 @ d e s c r i p t i o n   
 a _ s c r i p t   m u s t   h a v e   a0  d o   h a n d l e r   w h i c h   r e q u i r e   o n l y   a r g u m e n t .   T h e   d o   h a n d l e r   m u s t   r e t u r n   t r u e   o r   f a l s e .   W h e n   t h e   d o   h a n d l e r   r e t u r n   f a l s e ,   t h e   p r o c e s s   i s   s t o p e d   i m m e d i a t e l y . 
 @ p a r a m 
 a _ s c r i p t ( s c r i p t   o b j e c t )   :   m u s t   h a v e   a   d o   h a n d l e r   w h i c h   r e q u i r e   o n l y   a r g u m e n t .   T h e   d o   h a n d l e r   m u s t   r e t u r n   b o o l e a n . 
� ��� i   � ���� I      ���� 0 each  � ��� o      �
�
 0 a_script  �  �  � k     +�� ��� r     ��� I     �	���	 0 iterator  �  �  � o      �� 0 an_iter  � ��� V    +��� Z    &����� =   ��� n   ��� I    ���� 0 do  � �� � n   ��� I    �������� 0 next  ��  ��  � o    ���� 0 an_iter  �   �  � o    ���� 0 a_script  � m    ��
�� boovfals�  S   ! "�  �  � n   ��� I    �������� 0 has_next  ��  ��  � o    ���� 0 an_iter  �  � ��� l     ��������  ��  ��  � ��� l      ������  ���!
@abstruct 
Call do handler of given script object with each item in the XList as an argument.
@description 
The parameter &quot;a_script&quot; is a script object which must have a do handler.
The do handler must have two arguments. 

  on do(an_item, sender)
    -- do something
	return true
  end do

* item : an item in the target XList.
* sendr :  the target XList.

The do handler must return true or false. When the do handler return false, the processing enumerate handler is stoped immediately.

Calling this method will cause to reset the interator counter of the target.

@param
a_script(script object) : must have a do handler which require only argument. The do handler must return boolean.
   � ���� ! 
 @ a b s t r u c t   
 C a l l   d o   h a n d l e r   o f   g i v e n   s c r i p t   o b j e c t   w i t h   e a c h   i t e m   i n   t h e   X L i s t   a s   a n   a r g u m e n t . 
 @ d e s c r i p t i o n   
 T h e   p a r a m e t e r   & q u o t ; a _ s c r i p t & q u o t ;   i s   a   s c r i p t   o b j e c t   w h i c h   m u s t   h a v e   a   d o   h a n d l e r . 
 T h e   d o   h a n d l e r   m u s t   h a v e   t w o   a r g u m e n t s .   
 
     o n   d o ( a n _ i t e m ,   s e n d e r ) 
         - -   d o   s o m e t h i n g 
 	 r e t u r n   t r u e 
     e n d   d o 
 
 *   i t e m   :   a n   i t e m   i n   t h e   t a r g e t   X L i s t . 
 *   s e n d r   :     t h e   t a r g e t   X L i s t . 
 
 T h e   d o   h a n d l e r   m u s t   r e t u r n   t r u e   o r   f a l s e .   W h e n   t h e   d o   h a n d l e r   r e t u r n   f a l s e ,   t h e   p r o c e s s i n g   e n u m e r a t e   h a n d l e r   i s   s t o p e d   i m m e d i a t e l y . 
 
 C a l l i n g   t h i s   m e t h o d   w i l l   c a u s e   t o   r e s e t   t h e   i n t e r a t o r   c o u n t e r   o f   t h e   t a r g e t . 
 
 @ p a r a m 
 a _ s c r i p t ( s c r i p t   o b j e c t )   :   m u s t   h a v e   a   d o   h a n d l e r   w h i c h   r e q u i r e   o n l y   a r g u m e n t .   T h e   d o   h a n d l e r   m u s t   r e t u r n   b o o l e a n . 
� ��� i   � ���� I      ������� 0 	enumerate  � ���� o      ���� 0 a_script  ��  ��  � k     *�� ��� I     �������� 	0 reset  ��  ��  � ���� V    *��� Z    %������� =   ��� n   ��� I    ������� 0 do  � ��� I    �������� 0 next  ��  ��  � ����  f    ��  ��  � o    ���� 0 a_script  � m    ��
�� boovfals�  S     !��  ��  � I   
 �������� 0 has_next  ��  ��  ��  � ��� l     ��������  ��  ��  � ��� l      ������  ���!
@abstruct 
Call do handler of given script object with passing each element as an argument. 
A XList consisting of the results of do handler is returned.

@description 
A parameter &quot;a_script&quot; must have a do handler which require only argument.

Each element in the target XList will be passed to the do handler.

@param a_script(script object) :
must have a do handler which require only argument.
@result Instance of XList
   � ���h ! 
 @ a b s t r u c t   
 C a l l   d o   h a n d l e r   o f   g i v e n   s c r i p t   o b j e c t   w i t h   p a s s i n g   e a c h   e l e m e n t   a s   a n   a r g u m e n t .   
 A   X L i s t   c o n s i s t i n g   o f   t h e   r e s u l t s   o f   d o   h a n d l e r   i s   r e t u r n e d . 
 
 @ d e s c r i p t i o n   
 A   p a r a m e t e r   & q u o t ; a _ s c r i p t & q u o t ;   m u s t   h a v e   a   d o   h a n d l e r   w h i c h   r e q u i r e   o n l y   a r g u m e n t . 
 
 E a c h   e l e m e n t   i n   t h e   t a r g e t   X L i s t   w i l l   b e   p a s s e d   t o   t h e   d o   h a n d l e r . 
 
 @ p a r a m   a _ s c r i p t ( s c r i p t   o b j e c t )   : 
 m u s t   h a v e   a   d o   h a n d l e r   w h i c h   r e q u i r e   o n l y   a r g u m e n t . 
 @ r e s u l t   I n s t a n c e   o f   X L i s t 
� ��� i   � �   I      ������ 0 map   �� o      ���� 0 a_script  ��  ��   k       r      I     ��	���� 0 map_as_list  	 
��
 o    ���� 0 a_script  ��  ��   o      ���� 
0 a_list   �� L   	  I   	 ������ 0 make_with_list   �� o   
 ���� 
0 a_list  ��  ��  ��  �  l     ��������  ��  ��    l      ����  ��!@abstruct
Call do handler of given script object with passing each element as an argument.
An AppleScript's list of the results of do handler is returned.

@description 
A parameter &quot;a_script&quot; must have a do handler which require only argument.

Each elements in the target XList will be passed to the do handler.

@param a_script(script object) :
must have a do handler which require one argument.
@result list
    �N ! @ a b s t r u c t 
 C a l l   d o   h a n d l e r   o f   g i v e n   s c r i p t   o b j e c t   w i t h   p a s s i n g   e a c h   e l e m e n t   a s   a n   a r g u m e n t . 
 A n   A p p l e S c r i p t ' s   l i s t   o f   t h e   r e s u l t s   o f   d o   h a n d l e r   i s   r e t u r n e d . 
 
 @ d e s c r i p t i o n   
 A   p a r a m e t e r   & q u o t ; a _ s c r i p t & q u o t ;   m u s t   h a v e   a   d o   h a n d l e r   w h i c h   r e q u i r e   o n l y   a r g u m e n t . 
 
 E a c h   e l e m e n t s   i n   t h e   t a r g e t   X L i s t   w i l l   b e   p a s s e d   t o   t h e   d o   h a n d l e r . 
 
 @ p a r a m   a _ s c r i p t ( s c r i p t   o b j e c t )   : 
 m u s t   h a v e   a   d o   h a n d l e r   w h i c h   r e q u i r e   o n e   a r g u m e n t . 
 @ r e s u l t   l i s t 
  i   � � I      ������ 0 map_as_list   �� o      ���� 0 a_script  ��  ��   k     ,  r       J     ����    o      ���� 
0 a_list   !"! r    #$# I    
�������� 0 iterator  ��  ��  $ o      ���� 0 an_iter  " %&% V    )'(' r    $)*) l   !+����+ n   !,-, I    !��.���� 0 do  . /��/ n   010 I    �������� 0 next  ��  ��  1 o    ���� 0 an_iter  ��  ��  - o    ���� 0 a_script  ��  ��  * n      232  ;   " #3 o   ! "���� 
0 a_list  ( n   454 I    �������� 0 has_next  ��  ��  5 o    ���� 0 an_iter  & 6��6 L   * ,77 o   * +���� 
0 a_list  ��   898 l     ��������  ��  ��  9 :;: l      ��<=��  < * $!@group Make a copy of the instance    = �>> H ! @ g r o u p   M a k e   a   c o p y   o f   t h e   i n s t a n c e  ; ?@? l     ��������  ��  ��  @ ABA l      ��CD��  C � �!@abstruct
Make a new instance which share internal list with the original.
The internal counter for the iterator will be copied.
@result XList
   D �EE  ! @ a b s t r u c t 
 M a k e   a   n e w   i n s t a n c e   w h i c h   s h a r e   i n t e r n a l   l i s t   w i t h   t h e   o r i g i n a l . 
 T h e   i n t e r n a l   c o u n t e r   f o r   t h e   i t e r a t o r   w i l l   b e   c o p i e d . 
 @ r e s u l t   X L i s t 
B FGF i   � �HIH I      �������� 0 shallow_copy  ��  ��  I k     JJ KLK r     
MNM n    OPO I    ��Q���� 0 	make_with  Q R��R n   STS o    ���� 0 	_contents  T  f    ��  ��  P  f     N o      ���� 
0 x_list  L UVU r    WXW n   YZY o    ���� 0 _n  Z  f    X n     [\[ o    ���� 0 _n  \ o    ���� 
0 x_list  V ]��] L    ^^ o    ���� 
0 x_list  ��  G _`_ l     ��������  ��  ��  ` aba l      ��cd��  c f `!@abstruct
Make a new instance which have copied internal list from the original.
@result XList
   d �ee � ! @ a b s t r u c t 
 M a k e   a   n e w   i n s t a n c e   w h i c h   h a v e   c o p i e d   i n t e r n a l   l i s t   f r o m   t h e   o r i g i n a l . 
 @ r e s u l t   X L i s t 
b fgf i   � �hih I      �������� 0 	deep_copy  ��  ��  i k     jj klk r     mnm n    
opo I    
��q���� 0 	make_with  q r��r I    �������� 0 	all_items  ��  ��  ��  ��  p  f     n o      ���� 
0 x_list  l sts r    uvu n   wxw o    ���� 0 _n  x  f    v n     yzy o    ���� 0 _n  z o    ���� 
0 x_list  t {��{ L    || o    ���� 
0 x_list  ��  g }~} l     ��������  ��  ��  ~ � l      ������  � a [!@abstruct
Make a shallow copy with resetting the internal iterator counter.
@result XList
   � ��� � ! @ a b s t r u c t 
 M a k e   a   s h a l l o w   c o p y   w i t h   r e s e t t i n g   t h e   i n t e r n a l   i t e r a t o r   c o u n t e r . 
 @ r e s u l t   X L i s t 
� ��� i   � ���� I      ��~�}� 0 iterator  �~  �}  � L     	�� n    ��� I    �|��{�| 0 	make_with  � ��z� n   ��� o    �y�y 0 	_contents  �  f    �z  �{  �  f     � ��� l     �x�w�v�x  �w  �v  � ��� i   � ���� I     �u�t�s
�u .ascrcmnt****      � ****�t  �s  � O    ��� I   �r��q
�r .ascrcmnt****      � ****� l   	��p�o� n   	��� I    	�n�m�l�n 0 dump  �m  �l  �  f    �p  �o  �q  � 1     �k
�k 
ascr� ��� l     �j�i�h�j  �i  �h  � ��� i   � ���� I      �g�f�e�g 0 dump  �f  �e  � k     %�� ��� h     �d��d 0 xlistdumper XListDumper� k      �� ��� j     �c��c 0 an_index  � m     �b�b  � ��a� i    ��� I      �`��_�` 0 do  � ��^� o      �]�] 0 an_item  �^  �_  � k     6�� ��� r     ��� [     ��� o     �\�\ 0 an_index  � m    �[�[ � o      �Z�Z 0 an_index  � ��� r    ��� l   ��Y�X� c    ��� o    �W�W 0 an_index  � m    �V
�V 
utxt�Y  �X  � o      �U�U 
0 output  � ��� Z    /���T�� =   ��� n    ��� m    �S
�S 
pcls� o    �R�R 0 an_item  � m    �Q
�Q 
scpt� r     '��� n    %��� I   ! %�P�O�N�P 0 dump  �O  �N  � o     !�M�M 0 an_item  � o      �L�L 0 	dump_data  �T  � r   * /��� c   * -��� o   * +�K�K 0 an_item  � m   + ,�J
�J 
utxt� o      �I�I 0 	dump_data  � ��H� L   0 6�� b   0 5��� b   0 3��� o   0 1�G�G 
0 output  � 1   1 2�F
�F 
tab � o   3 4�E�E 0 	dump_data  �H  �a  � ��� r    ��� I    �D��C�D 0 map  � ��B� o   	 
�A�A 0 xlistdumper XListDumper�B  �C  � o      �@�@ 0 	dump_list  � ��� n   ��� I    �?��>�? 0 unshift  � ��=� b    ��� b    ��� m    �� ���  [� n   ��� 1    �<
�< 
pnam�  f    � m    �� ���  ]�=  �>  � o    �;�; 0 	dump_list  � ��:� L    %�� n   $��� I    $�9��8�9 0 as_unicode_with  � ��7� o     �6
�6 
ret �7  �8  � o    �5�5 0 	dump_list  �:  � ��� l     �4�3�2�4  �3  �2  � ��� l      �1���1  �  == private    � ���  = =   p r i v a t e  � ��� i   � ���� I      �0�/�.�0 	0 debug  �/  �.  � k     T�� ��� O     ��� k    ��    I    �-�,�- 
0 export   �+  f   	 
�+  �,    I   �*�)
�* .MoloBootscpt        scpt�)   �(�'
�( 
forM  f    �'   �& r    	
	 I   �%�$
�% .MololoMoscpt        TEXT m     �  T e s t�$  
 o      �#�# 0 test Test�&  � l    �"�! I    � ��
�  .MoloMKloscpt    ��� null�  �  �"  �!  �  r     + I     )��� 0 	make_with   � J   ! %  m   ! " �  a � m   " # �  b�  �  �   o      �� 
0 a_list    n  , 2  I   - 2�!�� 0 	delete_at  ! "�" m   - .�� �  �    o   , -�� 
0 a_list   #$# n  3 B%&% I   4 B�'�� 0 assert_true  ' ()( =  4 =*+* n  4 9,-, I   5 9���� 0 list_ref  �  �  - o   4 5�� 
0 a_list  + J   9 <.. /�/ m   9 :00 �11  b�  ) 2�2 m   = >33 �44 $ F a i l d   t o   d e l e t e _ a t�  �  & o   3 4�� 0 test Test$ 565 I  C H�
7�	
�
 .corecnte****       ****7 o   C D�� 
0 a_list  �	  6 8�8 n  I T9:9 I   J T�;�� 0 assert_true  ; <=< =  J M>?> 1   J K�
� 
rslt? m   K L�� = @�@ m   M PAA �BB  F a i l d   t o   c o u n t�  �  : o   I J�� 0 test Test�  � CDC l     � �����   ��  ��  D EFE i   � �GHG I     ������
�� .aevtoappnull  �   � ****��  ��  H k     II JKJ l     ��LM��  L  return debug()   M �NN  r e t u r n   d e b u g ( )K O��O Q     PQRP I   ��ST
�� .HBsushHBTEXT    ��� fileS l   U����U I   ��V��
�� .earsffdralis        afdrV  f    ��  ��  ��  T ��W��
�� 
rcIPW m   	 
��
�� boovtrue��  Q R      ��XY
�� .ascrerr ****      � ****X o      ���� 0 msg  Y ��Z��
�� 
errnZ o      ���� 	0 errno  ��  R I   ��[��
�� .sysodisAaleR        TEXT[ l   \����\ b    ]^] b    _`_ o    ���� 0 msg  ` o    ��
�� 
ret ^ o    ���� 	0 errno  ��  ��  ��  ��  F a��a l     ��������  ��  ��  ��       3��b  cdefghijklmnopqrstuvwxyz{|}~��������������������  b 1��������������������������������������������������������������������������������������������������
�� 
pnam
�� 
vers
�� 
pimr�� 0 xtext XText
�� .corecrel****      � null�� 0 	make_with  �� 0 make_with_list  �� 0 make_with_text  �� 0 next  �� 0 	next_item  �� 0 has_next  �� 0 current_item  �� 0 current_index  �� 0 decrement_index  �� 0 increment_index  �� 	0 reset  �� 0 push  �� 0 pop  �� 0 unshift  �� 	0 shift  �� 0 count_items  �� 0 item_counts  
�� .corecnte****       ****�� 0 	delete_at  �� 0 item_at  �� 0 items_in_range  �� 0 set_item  �� 0 set_item_at  �� 0 exchange_items  �� 0 has_item  �� 0 index_of  �� 0 	all_items  �� 0 list_ref  �� 0 add_from_list  �� 0 as_xtext_with  �� 0 as_unicode_with  �� 0 as_text_with  �� 0 as_string_with  �� 0 each  �� 0 	enumerate  �� 0 map  �� 0 map_as_list  �� 0 shallow_copy  �� 0 	deep_copy  �� 0 iterator  
�� .ascrcmnt****      � ****�� 0 dump  �� 	0 debug  
�� .aevtoappnull  �   � ****c ����� �  ���� �� ��
�� 
vers��  � �����
�� 
cobj� ��   ��
�� 
osax��  � �����
�� 
cobj� ��   �� 
�� 
scpt��  d ��   �� 
�� 
scpte �� @��������
�� .corecrel****      � null��  ��  �  � ���� 0 	make_with  �� 	*jvk+  f �� N���������� 0 	make_with  �� ����� �  ���� 
0 a_list  ��  � �������� 
0 a_list  �� 0 a_parent  �� 0 xlist XList� �� X��� 0 xlist XList� �����������
�� .ascrinit****      � ****� k     ��  Z��  ]��  `��  d����  ��  ��  � ��������
�� 
pare�� 0 	_contents  �� 0 _length  �� 0 _n  � ����������
�� 
pare�� 0 	_contents  
�� .corecnte****       ****�� 0 _length  �� 0 _n  �� b  N  Ob   �Ob   j �Ok��� )E�O��K S�O�g �� t���������� 0 make_with_list  �� ����� �  ���� 
0 a_list  ��  � ���� 
0 a_list  � ���� 0 	make_with  �� *�k+  h � ��~�}���|� 0 make_with_text  �~ �{��{ �  �z�y�z 
0 a_text  �y 0 a_delimiter  �}  � �x�w�v�u�x 
0 a_text  �w 0 a_delimiter  �v 0 	pre_delim  �u 
0 a_list  � �t�s�r�q
�t 
ascr
�s 
txdl
�r 
citm�q 0 	make_with  �|  ��,E�O���,FO��-E�O���,FO*�k+ i �p ��o�n���m�p 0 next  �o  �n  � �l�k�l 0 an_item  �k 0 msg  � 
�j�i�h�g��f�e�d ��c�j 0 	_contents  
�i 
cobj�h 0 _n  �g 0 msg  � �b�a�`
�b 
errn�a�@�`  �f 0 _length  
�e 
errn�dG�c�@�m = )�,�)�,E/E�W  X  )�,)�, )��l�Y )��l�O)�,k)�,FO�j �_ ��^�]���\�_ 0 	next_item  �^  �]  �  � �[�[ 0 next  �\ *j+  k �Z ��Y�X���W�Z 0 has_next  �Y  �X  �  � �V�U�V 0 _n  �U 0 _length  �W 	)�,)�,l �T�S�R���Q�T 0 current_item  �S  �R  �  � �P�O�N�P 0 	_contents  
�O 
cobj�N 0 _n  �Q )�,�)�,k/Em �M&�L�K���J�M 0 current_index  �L  �K  �  � �I�I 0 _n  �J )�,kn �H7�G�F���E�H 0 decrement_index  �G  �F  �  � �D�D 0 _n  �E )�,k )�,k)�,FY ho �CQ�B�A���@�C 0 increment_index  �B  �A  �  � �?�? 0 _n  �@ )�,k )�,k)�,FY hp �>k�=�<���;�> 	0 reset  �=  �<  �  � �:�: 0 _n  �; 	k)�,FO)q �9��8�7���6�9 0 push  �8 �5��5 �  �4�4 0 an_item  �7  � �3�3 0 an_item  � �2�1�2 0 	_contents  �1 0 _length  �6 �)�,6FO)�,k)�,Fr �0��/�.���-�0 0 pop  �/  �.  � �,�, 0 a_result  � �+�*�)�(�'�&�%�+ 0 	_contents  
�* 
cobj�)  �(  
�' 
msng�&���% 0 _length  �- F )�,�i/E�W 	X  �O )�,[�\[Zk\Z�2)�,FW X  jv)�,FO)�,k)�,FO�s �$��#�"���!�$ 0 unshift  �# � ��  �  �� 0 an_item  �"  � �� 0 an_item  � ���� 0 	_contents  � 0 increment_index  � 0 _length  �! �)�,5FO*j+ O)�,k)�,FO)t ������� 	0 shift  �  �  � �� 0 a_result  � ��������� 0 	_contents  
� 
cobj�  �  
� 
msng
� 
rest� 0 decrement_index  � 0 _length  � 3 )�,�k/E�W 	X  �O)�,�,)�,FO*j+ O)�,k)�,FO�u �C�����
� 0 count_items  �  �  �  � �	��	 0 	_contents  
� .corecnte****       ****�
 	)�,j v �M������ 0 item_counts  �  �  �  � ��� 0 	_contents  
� .corecnte****       ****� 	)�,j w �W� ������
� .corecnte****       ****�   ��  �  � ������ 0 	_contents  
�� .corecnte****       ****�� 	)�,j x ��f���������� 0 	delete_at  �� ����� �  ���� 0 indexes  ��  � ���������� 0 indexes  �� 
0 a_list  �� 0 n  �� 0 an_index  � ����������������
�� 
list
�� 
leng
�� 
cobj�� 0 	_contents  
�� 
rest�� 0 _length  ������ 0 _n  �� ���&E�OjvE�O �k��,Ekh ��/E�O)�,�/�6FO�k  )�,�,)�,FY D)�,ilv� )�,[�\[Zk\Z�2)�,FY %)�,[�\[Zk\Z�k2)�,[�\[Z�k\Zi2%)�,FO)�,� )�,k)�,FY hO)�,k)�,F[OY�uO�y ������������ 0 item_at  �� ����� �  ���� 0 an_index  ��  � ���������� 0 an_index  �� 
0 a_list  �� 0 
index_list  �� 0 	inde_list  � ��������������
�� 
pcls
�� 
list�� 0 	_contents  
�� 
cobj�� 0 	make_with  �� 0 has_next  �� 0 next  �� C��,� )�,�/EY hOjvE�O*�k+ E�O h�j+ )�,�j+ /�6F[OY��O�z ��A���������� 0 items_in_range  �� ����� �  ������ 0 s_index  �� 0 e_index  ��  � ������ 0 s_index  �� 0 e_index  � �������� 0 	_contents  
�� 
cobj�� 0 	make_with  �� *)�,[�\[Z�\Z�2k+ { ��Y���������� 0 set_item  ��  �� �����
�� 
for �� 0 a_value  � ������
�� 
at  �� 0 an_index  ��  � ������ 0 a_value  �� 0 an_index  � ������ 0 	_contents  
�� 
cobj�� 	�)�,�/F| ��o���������� 0 set_item_at  �� ����� �  ������ 0 a_value  �� 0 an_index  ��  � ������ 0 a_value  �� 0 an_index  � ������ 0 	_contents  
�� 
cobj�� 	�)�,�/F} ������������� 0 exchange_items  �� ����� �  ������ 
0 index1  �� 
0 index2  ��  � �������� 
0 index1  �� 
0 index2  �� 
0 a_buff  � ������ 0 	_contents  
�� 
cobj��  )�,�/E�O)�,�/)�,�/FO�)�,�/F~ ������������� 0 has_item  �� ����� �  ���� 0 an_item  ��  � ���� 0 an_item  � ���� 0 	_contents  �� )�,� ������������� 0 index_of  �� ����� �  ���� 0 an_item  ��  � �������� 0 an_item  �� 0 an_index  �� 0 n  � ���������� 0 has_item  �� 0 _length  �� 0 	_contents  
�� 
cobj�� ?*�k+   jY hOjE�O %k)�,Ekh )�,�/�  
�E�OY h[OY��O�� ������������� 0 	all_items  ��  ��  � ���� 
0 a_list  � ���� 0 	_contents  �� 
)�,EQ�O�� ������������ 0 list_ref  ��  ��  �  � ���� 0 	_contents  �� )�,E� ������������ 0 add_from_list  �� ����� �  ���� 
0 a_list  ��  � ���� 
0 a_list  � ������� 0 	_contents  �� 0 _length  
� .corecnte****       ****�� )�,�%)�,FO)�,�j )�,FO)� �~L�}�|���{�~ 0 as_xtext_with  �} �z��z �  �y�y 0 a_delimiter  �|  � �x�w�x 0 a_delimiter  �w 
0 a_text  � �v�u�v 0 as_unicode_with  �u 0 	make_with  �{ *�k+  E�Ob  �k+ � �tf�s�r���q�t 0 as_unicode_with  �s �p��p �  �o�o 0 a_delimiter  �r  � �n�m�n 0 a_delimiter  �m 
0 a_text  � �l�k�j�i�l 0 store_delimiters  �k 0 	_contents  �j 0 	join_list  �i 0 restore_delimiters  �q $b   *j+  O*)�,�l+ E�O*j+ UO�� �h��g�f���e�h 0 as_text_with  �g �d��d �  �c�c 0 a_delimiter  �f  � �b�b 0 a_delimiter  � �a�a 0 as_unicode_with  �e *�k+  � �`��_�^���]�` 0 as_string_with  �_ �\��\ �  �[�[ 0 a_delimiter  �^  � �Z�Y�Z 0 a_delimiter  �Y 
0 a_text  � �X�W�V�U�X 0 store_delimiters  �W 0 	_contents  �V 0 join_as_string  �U 0 restore_delimiters  �] $b   *j+  O*)�,�l+ E�O*j+ UO�� �T��S�R���Q�T 0 each  �S �P��P �  �O�O 0 a_script  �R  � �N�M�N 0 a_script  �M 0 an_iter  � �L�K�J�I�L 0 iterator  �K 0 has_next  �J 0 next  �I 0 do  �Q ,*j+  E�O "h�j+ ��j+ k+ f  Y h[OY��� �H��G�F���E�H 0 	enumerate  �G �D��D �  �C�C 0 a_script  �F  � �B�B 0 a_script  � �A�@�?�>�A 	0 reset  �@ 0 has_next  �? 0 next  �> 0 do  �E +*j+  O #h*j+ �*j+ )l+ f  Y h[OY��� �=�<�; �:�= 0 map  �< �9�9   �8�8 0 a_script  �;    �7�6�7 0 a_script  �6 
0 a_list   �5�4�5 0 map_as_list  �4 0 make_with_list  �: *�k+  E�O*�k+ � �3�2�1�0�3 0 map_as_list  �2 �/�/   �.�. 0 a_script  �1   �-�,�+�- 0 a_script  �, 
0 a_list  �+ 0 an_iter   �*�)�(�'�* 0 iterator  �) 0 has_next  �( 0 next  �' 0 do  �0 -jvE�O*j+  E�O h�j+ ��j+ k+ �6F[OY��O�� �&I�%�$�#�& 0 shallow_copy  �%  �$   �"�" 
0 x_list   �!� ��! 0 	_contents  �  0 	make_with  � 0 _n  �# ))�,k+ E�O)�,��,FO�� �i��	�� 0 	deep_copy  �  �   �� 
0 x_list  	 ���� 0 	all_items  � 0 	make_with  � 0 _n  � )*j+  k+ E�O)�,��,FO�� ����
�� 0 iterator  �  �  
   ��� 0 	_contents  � 0 	make_with  � 
))�,k+ � �����
� .ascrcmnt****      � ****�  �     ���

� 
ascr� 0 dump  
�
 .ascrcmnt****      � ****� � )j+ j U� �	�����	 0 dump  �  �   ��� 0 xlistdumper XListDumper� 0 	dump_list   
������� ����� 0 xlistdumper XListDumper ��������
�� .ascrinit****      � **** k      � �����  ��  ��   ������ 0 an_index  �� 0 do   ���� 0 an_index   ����������� 0 do  �� ����   ���� 0 an_item  ��   �������� 0 an_item  �� 
0 output  �� 0 	dump_data   ����������
�� 
utxt
�� 
pcls
�� 
scpt�� 0 dump  
�� 
tab �� 7b   kEc   Ob   �&E�O��,�  �j+ E�Y ��&E�O��%�%�� j�OL � 0 map  
� 
pnam�  0 unshift  
�� 
ret �� 0 as_unicode_with  � &��K S�O*�k+ E�O��)�,%�%k+ O��k+ 	� ����������� 	0 debug  ��  ��   ������ 0 test Test�� 
0 a_list   ����������������03������A
�� .MoloMKloscpt    ��� null�� 
0 export  
�� 
forM
�� .MoloBootscpt        scpt
�� .MololoMoscpt        TEXT�� 0 	make_with  �� 0 	delete_at  �� 0 list_ref  �� 0 assert_true  
�� .corecnte****       ****
�� 
rslt�� U*j   *)k+ O*�)l O�j E�UO*��lvk+ E�O�kk+ 	O��j+ 
�kv �l+ O�j O��k a l+ � ��H������
�� .aevtoappnull  �   � ****��  ��   ������ 0 msg  �� 	0 errno   ������������
�� .earsffdralis        afdr
�� 
rcIP
�� .HBsushHBTEXT    ��� file�� 0 msg   ������
�� 
errn�� 	0 errno  ��  
�� 
ret 
�� .sysodisAaleR        TEXT��   )j  �el W X  ��%�%j  ascr  ��ޭ