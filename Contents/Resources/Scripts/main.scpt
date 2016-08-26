FasdUAS 1.101.10   ��   ��    k             j     �� 
�� 
pnam  m        � 	 	 
 X L i s t   
  
 l     ��������  ��  ��        x    
��  ��    1      ��
�� 
ascr  �� ��
�� 
minv  m         �    2 . 3��        x   
 �� ����    2   ��
�� 
osax��        x    )�� ���� 0 xtext XText  4   # '�� 
�� 
scpt  m   % &   �   
 X T e x t��        l     ��������  ��  ��        l      ��   !��     7 1!@references
XText || help:openbook='XText Help'
    ! � " " b ! @ r e f e r e n c e s 
 X T e x t   | |   h e l p : o p e n b o o k = ' X T e x t   H e l p ' 
   # $ # l     ��������  ��  ��   $  % & % l      �� ' (��   '��!@title XList Reference
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
    ( � ) )� ! @ t i t l e   X L i s t   R e f e r e n c e 
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
 &  * + * l     ��������  ��  ��   +  , - , l      �� . /��   . ! !@group Constructor Method     / � 0 0 6 ! @ g r o u p   C o n s t r u c t o r   M e t h o d   -  1 2 1 l     ��������  ��  ��   2  3 4 3 l      �� 5 6��   5 a [!
@abstruct 
Meke an instance of empty XList.
@result script object : a new XList instance
    6 � 7 7 � ! 
 @ a b s t r u c t   
 M e k e   a n   i n s t a n c e   o f   e m p t y   X L i s t . 
 @ r e s u l t   s c r i p t   o b j e c t   :   a   n e w   X L i s t   i n s t a n c e 
 4  8 9 8 i   * - : ; : I     ������
�� .corecrel****      � null��  ��   ; L      < < I     �� =���� 0 	make_with   =  >�� > J    ����  ��  ��   9  ? @ ? l     ��������  ��  ��   @  A B A l      �� C D��   C � �!
@abstruct 
Meke an instance of XList with given an AppleScript's  list object.
@param�@a_list (list)
@result script object : a new XList instance
    D � E E& ! 
 @ a b s t r u c t   
 M e k e   a n   i n s t a n c e   o f   X L i s t   w i t h   g i v e n   a n   A p p l e S c r i p t ' s     l i s t   o b j e c t . 
 @ p a r a m0  a _ l i s t   ( l i s t ) 
 @ r e s u l t   s c r i p t   o b j e c t   :   a   n e w   X L i s t   i n s t a n c e 
 B  F G F i   . 1 H I H I      �� J���� 0 	make_with   J  K�� K o      ���� 
0 a_list  ��  ��   I k      L L  M N M r      O P O  f      P o      ���� 0 a_parent   N  Q R Q h    �� S�� 0 xlist XList S k       T T  U V U j     �� W
�� 
pare W o     ���� 0 a_parent   V  X Y X j   	 �� Z�� 0 	_contents   Z o   	 ���� 
0 a_list   Y  [ \ [ j    �� ]�� 0 _length   ] I   �� ^��
�� .corecnte****       **** ^ o    ���� 
0 a_list  ��   \  _�� _ j    �� `�� 0 _n   ` m    ���� ��   R  a b a l   ��������  ��  ��   b  c�� c L     d d o    ���� 0 xlist XList��   G  e f e l     ��������  ��  ��   f  g h g l      �� i j��   i � �!
@abstruct
A synonym of ((<make_with>))
@description
Meke an instance of XList with given an AppleScript's  list object.
@param�@a_list (list)
@result script object : a new XList instance
    j � k kx ! 
 @ a b s t r u c t 
 A   s y n o n y m   o f   ( ( < m a k e _ w i t h > ) ) 
 @ d e s c r i p t i o n 
 M e k e   a n   i n s t a n c e   o f   X L i s t   w i t h   g i v e n   a n   A p p l e S c r i p t ' s     l i s t   o b j e c t . 
 @ p a r a m0  a _ l i s t   ( l i s t ) 
 @ r e s u l t   s c r i p t   o b j e c t   :   a   n e w   X L i s t   i n s t a n c e 
 h  l m l i   2 5 n o n I      �� p���� 0 make_with_list   p  q�� q o      ���� 
0 a_list  ��  ��   o L      r r I     �� s���� 0 	make_with   s  t�� t o    ���� 
0 a_list  ��  ��   m  u v u l     ��������  ��  ��   v  w x w l      �� y z��   y � �!
@abstruct 
Meke an instance of XList with from a list splitting a text with a delimiter.
@param�@a_text (Unicode or string)
@param a_delimiter (Unicode or string)
@result script object : a new XList instance
    z � { {� ! 
 @ a b s t r u c t   
 M e k e   a n   i n s t a n c e   o f   X L i s t   w i t h   f r o m   a   l i s t   s p l i t t i n g   a   t e x t   w i t h   a   d e l i m i t e r . 
 @ p a r a m0  a _ t e x t   ( U n i c o d e   o r   s t r i n g ) 
 @ p a r a m   a _ d e l i m i t e r   ( U n i c o d e   o r   s t r i n g ) 
 @ r e s u l t   s c r i p t   o b j e c t   :   a   n e w   X L i s t   i n s t a n c e 
 x  | } | i   6 9 ~  ~ I      �� ����� 0 make_with_text   �  � � � o      ���� 
0 a_text   �  ��� � o      ���� 0 a_delimiter  ��  ��    k      � �  � � � r      � � � n     � � � 1    ��
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
0 a_list  ��  ��  ��   }  � � � l     ��������  ��  ��   �  � � � l      �� � ���   � $ !@group  Methods for Iterator     � � � � < ! @ g r o u p     M e t h o d s   f o r   I t e r a t o r   �  � � � l     ��������  ��  ��   �  � � � l      �� � ���   � � �!
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
 �  � � � i   : = � � � I      �������� 0 next  ��  ��   � k     < � �  � � � Q     / � � � � r     � � � n     � � � 4    �� �
�� 
cobj � l    ����� � n    � � � o    
���� 0 _n   �  f    ��  ��   � n    � � � o    ���� 0 	_contents   �  f     � o      ���� 0 an_item   � R      �� � �
�� .ascrerr ****      � **** � o      ���� 0 msg   � �� ���
�� 
errn � d       � � m      �������   � Z    / � ��� � � ?     � � � n    � � � o    ���� 0 _n   �  f     � n    � � � o    ���� 0 _length   �  f     � R     &�� � �
�� .ascrerr ****      � **** � m   $ % � � � � �  N o   n e x t   i t e m . � � ��~
� 
errn � m   " #�}�}G�~  ��   � R   ) /�| � �
�| .ascrerr ****      � **** � o   - .�{�{ 0 msg   � �z ��y
�z 
errn � m   + ,�x�x�@�y   �  � � � l  0 0�w�v�u�w  �v  �u   �  � � � r   0 9 � � � [   0 5 � � � l  0 3 ��t�s � n  0 3 � � � o   1 3�r�r 0 _n   �  f   0 1�t  �s   � m   3 4�q�q  � n      � � � o   6 8�p�p 0 _n   �  f   5 6 �  ��o � L   : < � � o   : ;�n�n 0 an_item  �o   �  � � � l     �m�l�k�m  �l  �k   �  � � � i   > A � � � I      �j�i�h�j 0 	next_item  �i  �h   � L      � � I     �g�f�e�g 0 next  �f  �e   �  � � � l     �d�c�b�d  �c  �b   �  � � � l      �a � ��a   � � �!
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
 �  � � � i   B E � � � I      �`�_�^�` 0 has_next  �_  �^   � L      � � B     � � � n     � � � o    �]�] 0 _n   �  f      � n    � � � o    �\�\ 0 _length   �  f     �    l     �[�Z�Y�[  �Z  �Y    l      �X�X   [ U!
@abstruct
The item obtained by previous ((<next>))() is returned.
@result anything
    � � ! 
 @ a b s t r u c t 
 T h e   i t e m   o b t a i n e d   b y   p r e v i o u s   ( ( < n e x t > ) ) ( )   i s   r e t u r n e d . 
 @ r e s u l t   a n y t h i n g 
  i   F I	
	 I      �W�V�U�W 0 current_item  �V  �U  
 L      n      4    
�T
�T 
cobj l   	�S�R \    	 l   �Q�P n    o    �O�O 0 _n    f    �Q  �P   m    �N�N �S  �R   n     o    �M�M 0 	_contents    f       l     �L�K�J�L  �K  �J    l      �I�I   l f!
@abstruct
An index number of an item obtained by previous ((<next>))() is returned.
@result integer
    � � ! 
 @ a b s t r u c t 
 A n   i n d e x   n u m b e r   o f   a n   i t e m   o b t a i n e d   b y   p r e v i o u s   ( ( < n e x t > ) ) ( )   i s   r e t u r n e d . 
 @ r e s u l t   i n t e g e r 
  i   J M !  I      �H�G�F�H 0 current_index  �G  �F  ! L     "" \     #$# l    %�E�D% n    &'& o    �C�C 0 _n  '  f     �E  �D  $ m    �B�B  ()( l     �A�@�?�A  �@  �?  ) *+* l      �>,-�>  , y s!
@abstruct�@
Decrements the index of the item obtained by ((<next>))(). i.e. same item can be obtained once more.
   - �.. � ! 
 @ a b s t r u c t0  
 D e c r e m e n t s   t h e   i n d e x   o f   t h e   i t e m   o b t a i n e d   b y   ( ( < n e x t > ) ) ( ) .   i . e .   s a m e   i t e m   c a n   b e   o b t a i n e d   o n c e   m o r e . 
+ /0/ i   N Q121 I      �=�<�;�= 0 decrement_index  �<  �;  2 Z     34�:�93 ?     565 n    787 o    �8�8 0 _n  8  f     6 m    �7�7 4 r    9:9 \    ;<; l   =�6�5= n   >?> o   	 �4�4 0 _n  ?  f    	�6  �5  < m    �3�3 : n     @A@ o    �2�2 0 _n  A  f    �:  �9  0 BCB l     �1�0�/�1  �0  �/  C DED l      �.FG�.  F ` Z!
@abstruct
Increments the index of the item obtained by ((<next>))(). i.e. skip an item.
   G �HH � ! 
 @ a b s t r u c t 
 I n c r e m e n t s   t h e   i n d e x   o f   t h e   i t e m   o b t a i n e d   b y   ( ( < n e x t > ) ) ( ) .   i . e .   s k i p   a n   i t e m . 
E IJI i   R UKLK I      �-�,�+�- 0 increment_index  �,  �+  L Z     MN�*�)M ?     OPO n    QRQ o    �(�( 0 _n  R  f     P m    �'�' N r    STS [    UVU l   W�&�%W n   XYX o   	 �$�$ 0 _n  Y  f    	�&  �%  V m    �#�# T n     Z[Z o    �"�" 0 _n  [  f    �*  �)  J \]\ l     �!� ��!  �   �  ] ^_^ l      �`a�  ` H B!
@abstruct
Make ((<next>))() return items form first.
@result
me
   a �bb � ! 
 @ a b s t r u c t 
 M a k e   ( ( < n e x t > ) ) ( )   r e t u r n   i t e m s   f o r m   f i r s t . 
 @ r e s u l t 
 m e 
_ cdc i   V Yefe I      ���� 	0 reset  �  �  f k     gg hih r     jkj m     �� k n     lml o    �� 0 _n  m  f    i n�n L    oo  f    �  d pqp l     ����  �  �  q rsr l      �tu�  t  !@group Stack and Quene    u �vv 0 ! @ g r o u p   S t a c k   a n d   Q u e n e  s wxw l     ����  �  �  x yzy l      �{|�  { u o!
@abstruct
Append an item at the end of the list.
@param an_item(anything) : 
an item to append into the list
   | �}} � ! 
 @ a b s t r u c t 
 A p p e n d   a n   i t e m   a t   t h e   e n d   o f   t h e   l i s t . 
 @ p a r a m   a n _ i t e m ( a n y t h i n g )   :   
 a n   i t e m   t o   a p p e n d   i n t o   t h e   l i s t 
z ~~ i   Z ]��� I      ���� 0 push  � ��� o      �� 0 an_item  �  �  � k     �� ��� r     ��� o     �� 0 an_item  � n      ���  ;    � n   ��� o    �
�
 0 	_contents  �  f    � ��	� r    ��� [    ��� l   
���� n   
��� o    
�� 0 _length  �  f    �  �  � m   
 �� � n     ��� o    �� 0 _length  �  f    �	   ��� l     ����  �  �  � ��� l      � ���   � v p!
@abstruct
Obtain last item in the stored list, and remove the item.
@result anything : 
last item in the list
   � ��� � ! 
 @ a b s t r u c t 
 O b t a i n   l a s t   i t e m   i n   t h e   s t o r e d   l i s t ,   a n d   r e m o v e   t h e   i t e m . 
 @ r e s u l t   a n y t h i n g   :   
 l a s t   i t e m   i n   t h e   l i s t 
� ��� i   ^ a��� I      �������� 0 pop  ��  ��  � k     E�� ��� Q     ���� r    ��� n    	��� 4   	���
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
� ��� i   b e��� I      ������� 0 unshift  � ���� o      ���� 0 an_item  ��  ��  � k     �� ��� r     ��� o     ���� 0 an_item  � n      ���  :    � n   ��� o    ���� 0 	_contents  �  f    � ��� I    �������� 0 increment_index  ��  ��  � ��� r    ��� [    ��� l   ������ n   ��� o    ���� 0 _length  �  f    ��  ��  � m    ���� � n     ��� o    ���� 0 _length  �  f    � ���� L    ��  f    ��  � ��� l     ��������  ��  ��  � ��� l      ������  � j d!
@abstruct
Obtain first item in the list and remove it.
@result anything : 
first item in the list
   � ��� � ! 
 @ a b s t r u c t 
 O b t a i n   f i r s t   i t e m   i n   t h e   l i s t   a n d   r e m o v e   i t . 
 @ r e s u l t   a n y t h i n g   :   
 f i r s t   i t e m   i n   t h e   l i s t 
�    i   f i I      �������� 	0 shift  ��  ��   k     2  Q     	 r    

 n    	 4   	��
�� 
cobj m    ����  n    o    ���� 0 	_contents    f     o      ���� 0 a_result   R      ������
�� .ascrerr ****      � ****��  ��  	 L     m    ��
�� 
msng  l   ��������  ��  ��    r     n     1    ��
�� 
rest n    o    ���� 0 	_contents    f     n      o    ���� 0 	_contents    f      I     %�������� 0 decrement_index  ��  ��    !  r   & /"#" \   & +$%$ l  & )&����& n  & )'(' o   ' )���� 0 _length  (  f   & '��  ��  % m   ) *���� # n     )*) o   , .���� 0 _length  *  f   + ,! +��+ L   0 2,, o   0 1���� 0 a_result  ��   -.- l     ��������  ��  ��  . /0/ l     ��������  ��  ��  0 121 l      ��34��  3 # !@group Accessing List Items    4 �55 : ! @ g r o u p   A c c e s s i n g   L i s t   I t e m s  2 676 l      ��89��  8 < 6!
@abstruct
Return number of elements
@result integer
   9 �:: l ! 
 @ a b s t r u c t 
 R e t u r n   n u m b e r   o f   e l e m e n t s 
 @ r e s u l t   i n t e g e r 
7 ;<; i   j m=>= I      �������� 0 count_items  ��  ��  > L     ?? I    ��@��
�� .corecnte****       ****@ n    ABA o    ���� 0 	_contents  B  f     ��  < CDC l     ��������  ��  ��  D EFE i   n qGHG I      �������� 0 item_counts  ��  ��  H L     II I    ��J��
�� .corecnte****       ****J n    KLK o    ���� 0 	_contents  L  f     ��  F MNM l     ��������  ��  ��  N OPO i   r uQRQ I     ������
�� .corecnte****       ****��  ��  R L     SS I    ��T��
�� .corecnte****       ****T n    UVU o    ���� 0 	_contents  V  f     ��  P WXW l     ��������  ��  ��  X YZY l      ��[\��  [ � �!
@abstruct
Delete an item specified with an index number.
@param indexes(integer or list of interger) :
an index number or list of indexes of items to delete
@result list : 
a list of deleted items form the XList contents
   \ �]]� ! 
 @ a b s t r u c t 
 D e l e t e   a n   i t e m   s p e c i f i e d   w i t h   a n   i n d e x   n u m b e r . 
 @ p a r a m   i n d e x e s ( i n t e g e r   o r   l i s t   o f   i n t e r g e r )   : 
 a n   i n d e x   n u m b e r   o r   l i s t   o f   i n d e x e s   o f   i t e m s   t o   d e l e t e 
 @ r e s u l t   l i s t   :   
 a   l i s t   o f   d e l e t e d   i t e m s   f o r m   t h e   X L i s t   c o n t e n t s 
Z ^_^ i   v y`a` I      ��b���� 0 	delete_at  b c��c o      ���� 0 indexes  ��  ��  a k     �dd efe r     ghg c     iji o     ���� 0 indexes  j m    ��
�� 
listh o      ���� 0 indexes  f klk r    
mnm J    ����  n o      �� 
0 a_list  l opo l   �~�}�|�~  �}  �|  p qrq Y    �s�{tu�zs k    �vv wxw r    yzy n    {|{ 4    �y}
�y 
cobj} o    �x�x 0 n  | o    �w�w 0 indexes  z o      �v�v 0 an_index  x ~~ l   �u���u  �  log "start delete_item"   � ��� . l o g   " s t a r t   d e l e t e _ i t e m " ��� r    (��� n    %��� 4   " %�t�
�t 
cobj� o   # $�s�s 0 an_index  � n   "��� o     "�r�r 0 	_contents  �  f     � n      ���  ;   & '� o   % &�q�q 
0 a_list  � ��� Z   ) }����� =  ) ,��� o   ) *�p�p 0 an_index  � m   * +�o�o � r   / 8��� n   / 4��� 1   2 4�n
�n 
rest� n  / 2��� o   0 2�m�m 0 	_contents  �  f   / 0� n     ��� o   5 7�l�l 0 	_contents  �  f   4 5� ��� E  ; C��� J   ; A�� ��� n  ; >��� o   < >�k�k 0 _length  �  f   ; <� ��j� m   > ?�i�i���j  � o   A B�h�h 0 an_index  � ��g� r   F W��� n   F S��� 7  I S�f��
�f 
cobj� m   M O�e�e � m   P R�d�d��� n  F I��� o   G I�c�c 0 	_contents  �  f   F G� n     ��� o   T V�b�b 0 	_contents  �  f   S T�g  � r   Z }��� b   Z y��� l  Z i��a�`� n   Z i��� 7  ] i�_��
�_ 
cobj� m   a c�^�^ � l  d h��]�\� \   d h��� o   e f�[�[ 0 an_index  � m   f g�Z�Z �]  �\  � n  Z ]��� o   [ ]�Y�Y 0 	_contents  �  f   Z [�a  �`  � l  i x��X�W� n   i x��� 7  l x�V��
�V 
cobj� l  p t��U�T� [   p t��� o   q r�S�S 0 an_index  � m   r s�R�R �U  �T  � m   u w�Q�Q��� n  i l��� o   j l�P�P 0 	_contents  �  f   i j�X  �W  � n     ��� o   z |�O�O 0 	_contents  �  f   y z� ��� l  ~ ~�N�M�L�N  �M  �L  � ��� Z   ~ ����K�J� l  ~ ���I�H� ?   ~ ���� n  ~ ���� o    ��G�G 0 _n  �  f   ~ � o   � ��F�F 0 an_index  �I  �H  � r   � ���� [   � ���� l  � ���E�D� n  � ���� o   � ��C�C 0 _n  �  f   � ��E  �D  � m   � ��B�B � n     ��� o   � ��A�A 0 _n  �  f   � ��K  �J  � ��� l  � ��@�?�>�@  �?  �>  � ��=� r   � ���� \   � ���� l  � ���<�;� n  � ���� o   � ��:�: 0 _length  �  f   � ��<  �;  � m   � ��9�9 � n     ��� o   � ��8�8 0 _length  �  f   � ��=  �{ 0 n  t m    �7�7 u n    ��� 1    �6
�6 
leng� o    �5�5 0 indexes  �z  r ��� l  � ��4���4  �  log "end delete_item"   � ��� * l o g   " e n d   d e l e t e _ i t e m "� ��3� L   � ��� o   � ��2�2 
0 a_list  �3  _ ��� l     �1�0�/�1  �0  �/  � ��� l      �.���.  �nh!
@abstruct
Obtain an item specified with an index number. When a list of indexes is passed as an argument, multiple items will be obtained.
@param an_index(integer or list of integer) : 
an index number or a list of indexes of the items to obtain
@result anything : 
Return an_index th item. error number -1728 will be rased when an item can not be obtained.
   � ���� ! 
 @ a b s t r u c t 
 O b t a i n   a n   i t e m   s p e c i f i e d   w i t h   a n   i n d e x   n u m b e r .   W h e n   a   l i s t   o f   i n d e x e s   i s   p a s s e d   a s   a n   a r g u m e n t ,   m u l t i p l e   i t e m s   w i l l   b e   o b t a i n e d . 
 @ p a r a m   a n _ i n d e x ( i n t e g e r   o r   l i s t   o f   i n t e g e r )   :   
 a n   i n d e x   n u m b e r   o r   a   l i s t   o f   i n d e x e s   o f   t h e   i t e m s   t o   o b t a i n 
 @ r e s u l t   a n y t h i n g   :   
 R e t u r n   a n _ i n d e x   t h   i t e m .   e r r o r   n u m b e r   - 1 7 2 8   w i l l   b e   r a s e d   w h e n   a n   i t e m   c a n   n o t   b e   o b t a i n e d . 
� ��� i   z }� � I      �-�,�- 0 item_at   �+ o      �*�* 0 an_index  �+  �,    k     B  Z     �)�( >    	 n     

 m    �'
�' 
pcls o     �&�& 0 an_index  	 m    �%
�% 
list L     n     4    �$
�$ 
cobj o    �#�# 0 an_index   n    o   	 �"�" 0 	_contents    f    	�)  �(    l   �!� ��!  �   �    r     J    ��   o      �� 
0 a_list    r    " I     ��� 0 	make_with   � o    �� 0 an_index  �  �   o      �� 0 
index_list    V   # ? !  r   - :"#" n   - 7$%$ 4   0 7�&
� 
cobj& l  1 6'��' n  1 6()( I   2 6���� 0 next  �  �  ) o   1 2�� 0 	inde_list  �  �  % n  - 0*+* o   . 0�� 0 	_contents  +  f   - .# n      ,-,  ;   8 9- o   7 8�� 
0 a_list  ! n  ' ,./. I   ( ,���� 0 has_next  �  �  / o   ' (�� 0 
index_list   0�
0 L   @ B11 o   @ A�	�	 
0 a_list  �
  � 232 l     ����  �  �  3 454 l      �67�  6 � �!
@abstruct
Obtain items between two indexes.
@param s_index(integer) : 
the first index number
@param e_index(integer) : 
the last index number
@result XList : 
An XList instance of elements from s_index to e_index
   7 �88� ! 
 @ a b s t r u c t 
 O b t a i n   i t e m s   b e t w e e n   t w o   i n d e x e s . 
 @ p a r a m   s _ i n d e x ( i n t e g e r )   :   
 t h e   f i r s t   i n d e x   n u m b e r 
 @ p a r a m   e _ i n d e x ( i n t e g e r )   :   
 t h e   l a s t   i n d e x   n u m b e r 
 @ r e s u l t   X L i s t   :   
 A n   X L i s t   i n s t a n c e   o f   e l e m e n t s   f r o m   s _ i n d e x   t o   e _ i n d e x 
5 9:9 i   ~ �;<; I      �=�� 0 items_in_range  = >?> o      �� 0 s_index  ? @�@ o      � �  0 e_index  �  �  < L     AA I     ��B���� 0 	make_with  B C��C n    DED 7   ��FG
�� 
cobjF o    
���� 0 s_index  G o    ���� 0 e_index  E n   HIH o    ���� 0 	_contents  I  f    ��  ��  : JKJ l     ��������  ��  ��  K LML l      ��NO��  N � �!
@abstruct
set an item at a specified index.
@description
A synonym of ((<set_item_at>)).
@param an_index(integer) : 
an index number of the item to set
   O �PP4 ! 
 @ a b s t r u c t 
 s e t   a n   i t e m   a t   a   s p e c i f i e d   i n d e x . 
 @ d e s c r i p t i o n 
 A   s y n o n y m   o f   ( ( < s e t _ i t e m _ a t > ) ) . 
 @ p a r a m   a n _ i n d e x ( i n t e g e r )   :   
 a n   i n d e x   n u m b e r   o f   t h e   i t e m   t o   s e t 
M QRQ i   � �STS I      ����U�� 0 set_item  ��  U ��VW
�� 
for V o      ���� 0 a_value  W ��X��
�� 
at  X o      ���� 0 an_index  ��  T r     YZY o     ���� 0 a_value  Z n      [\[ 4    ��]
�� 
cobj] o    ���� 0 an_index  \ n   ^_^ o    ���� 0 	_contents  _  f    R `a` l     ��������  ��  ��  a bcb l      ��de��  d � �!
@abstruct
set an item at a specified index.
@description
A synonym of ((<set_item>)).
@param an_index(integer) : 
an index number of the item to set
   e �ff. ! 
 @ a b s t r u c t 
 s e t   a n   i t e m   a t   a   s p e c i f i e d   i n d e x . 
 @ d e s c r i p t i o n 
 A   s y n o n y m   o f   ( ( < s e t _ i t e m > ) ) . 
 @ p a r a m   a n _ i n d e x ( i n t e g e r )   :   
 a n   i n d e x   n u m b e r   o f   t h e   i t e m   t o   s e t 
c ghg i   � �iji I      ��k���� 0 set_item_at  k lml o      ���� 0 a_value  m n��n o      ���� 0 an_index  ��  ��  j r     opo o     ���� 0 a_value  p n      qrq 4    ��s
�� 
cobjs o    ���� 0 an_index  r n   tut o    ���� 0 	_contents  u  f    h vwv l     ��������  ��  ��  w xyx l      ��z{��  z � �!
@abstruct
Exchange items specified with indexes
@param index1(integer) : 
first index of an element to exchange
@param index2 (integer) : 
second index of an element to exchange
   { �||h ! 
 @ a b s t r u c t 
 E x c h a n g e   i t e m s   s p e c i f i e d   w i t h   i n d e x e s 
 @ p a r a m   i n d e x 1 ( i n t e g e r )   :   
 f i r s t   i n d e x   o f   a n   e l e m e n t   t o   e x c h a n g e 
 @ p a r a m   i n d e x 2   ( i n t e g e r )   :   
 s e c o n d   i n d e x   o f   a n   e l e m e n t   t o   e x c h a n g e 
y }~} i   � �� I      ������� 0 exchange_items  � ��� o      ���� 
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
0 index2  � n   ��� o    ���� 0 	_contents  �  f    ��  ~ ��� l     ��������  ��  ��  � ��� l      ������  � � �!
@abstruct
Check whether the object "an_item" is included in the XList instance or not.
@param an_item (boolean)
@result anything : 
if an_item is in the XList instance, ture will be returned.
   � ���� ! 
 @ a b s t r u c t 
 C h e c k   w h e t h e r   t h e   o b j e c t   " a n _ i t e m "   i s   i n c l u d e d   i n   t h e   X L i s t   i n s t a n c e   o r   n o t . 
 @ p a r a m   a n _ i t e m   ( b o o l e a n ) 
 @ r e s u l t   a n y t h i n g   :   
 i f   a n _ i t e m   i s   i n   t h e   X L i s t   i n s t a n c e ,   t u r e   w i l l   b e   r e t u r n e d . 
� ��� i   � ���� I      ������� 0 has_item  � ���� o      ���� 0 an_item  ��  ��  � L     �� E    ��� n    ��� o    ���� 0 	_contents  �  f     � o    ���� 0 an_item  � ��� l     ��������  ��  ��  � ��� l      ������  �!
@abstruct
Obtain an index number of the object &amp;quot;an_item&amp;quot; in the XList instance.
@param an_item (anything)
@result integer : 
An index number of &amp;quot;an_item&amp;quot;. 
If &amp;quot;an_item&amp;quot; is not in the target, 0 will be returned.
   � ��� ! 
 @ a b s t r u c t 
 O b t a i n   a n   i n d e x   n u m b e r   o f   t h e   o b j e c t   & a m p ; q u o t ; a n _ i t e m & a m p ; q u o t ;   i n   t h e   X L i s t   i n s t a n c e . 
 @ p a r a m   a n _ i t e m   ( a n y t h i n g ) 
 @ r e s u l t   i n t e g e r   :   
 A n   i n d e x   n u m b e r   o f   & a m p ; q u o t ; a n _ i t e m & a m p ; q u o t ; .   
 I f   & a m p ; q u o t ; a n _ i t e m & a m p ; q u o t ;   i s   n o t   i n   t h e   t a r g e t ,   0   w i l l   b e   r e t u r n e d . 
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
� ��� i   � ���� I      �������� 0 	all_items  ��  ��  � k     	�� ��� s     ��� n    ��� o    ���� 0 	_contents  �  f     � o      ���� 
0 a_list  � ���� L    	   o    ���� 
0 a_list  ��  �  l     ��������  ��  ��    l      ����   � �!
@abstruct
return the stored list.
@description
Changing elements in retuend list means changing contents of the XList instance.
It is recommended not to use this method.
@result list 
    �t ! 
 @ a b s t r u c t 
 r e t u r n   t h e   s t o r e d   l i s t . 
 @ d e s c r i p t i o n 
 C h a n g i n g   e l e m e n t s   i n   r e t u e n d   l i s t   m e a n s   c h a n g i n g   c o n t e n t s   o f   t h e   X L i s t   i n s t a n c e . 
 I t   i s   r e c o m m e n d e d   n o t   t o   u s e   t h i s   m e t h o d . 
 @ r e s u l t   l i s t   
 	 i   � �

 I      �������� 0 list_ref  ��  ��   L      n     o    ���� 0 	_contents    f     	  l     �������  ��  �    l      �~�~   } w!
@abstruct
Add each item contained passed list at end of the reciver's XList instance.
@param a_list(list)
@result me
    � � ! 
 @ a b s t r u c t 
 A d d   e a c h   i t e m   c o n t a i n e d   p a s s e d   l i s t   a t   e n d   o f   t h e   r e c i v e r ' s   X L i s t   i n s t a n c e . 
 @ p a r a m   a _ l i s t ( l i s t ) 
 @ r e s u l t   m e 
  i   � � I      �}�|�} 0 add_from_list   �{ o      �z�z 
0 a_list  �{  �|   k       r     	  b     !"! n    #$# o    �y�y 0 	_contents  $  f     " o    �x�x 
0 a_list    n     %&% o    �w�w 0 	_contents  &  f     '(' r   
 )*) [   
 +,+ l  
 -�v�u- n  
 ./. o    �t�t 0 _length  /  f   
 �v  �u  , l   0�s�r0 I   �q1�p
�q .corecnte****       ****1 o    �o�o 
0 a_list  �p  �s  �r  * n     232 o    �n�n 0 _length  3  f    ( 4�m4 L    55  f    �m   676 l     �l�k�j�l  �k  �j  7 898 l      �i:;�i  : ! !@group Conversion to Text    ; �<< 6 ! @ g r o u p   C o n v e r s i o n   t o   T e x t  9 =>= l     �h�g�f�h  �g  �f  > ?@? l      �eAB�e  A � �!
@abstruct
Join every elements with given a delimiters as ((<XText>))
@param a_delimiter (string or Unicode text): 
text to be used as a delimiter to join text list
@result script object : a ((<XText>)) instance
   B �CC� ! 
 @ a b s t r u c t 
 J o i n   e v e r y   e l e m e n t s   w i t h   g i v e n   a   d e l i m i t e r s   a s   ( ( < X T e x t > ) ) 
 @ p a r a m   a _ d e l i m i t e r   ( s t r i n g   o r   U n i c o d e   t e x t ) :   
 t e x t   t o   b e   u s e d   a s   a   d e l i m i t e r   t o   j o i n   t e x t   l i s t 
 @ r e s u l t   s c r i p t   o b j e c t   :   a   ( ( < X T e x t > ) )   i n s t a n c e 
@ DED i   � �FGF I      �dH�c�d 0 as_xtext_with  H I�bI o      �a�a 0 a_delimiter  �b  �c  G k     JJ KLK r     MNM I     �`O�_�` 0 as_unicode_with  O P�^P o    �]�] 0 a_delimiter  �^  �_  N o      �\�\ 
0 a_text  L Q�[Q L   	 RR n  	 STS I    �ZU�Y�Z 0 	make_with  U V�XV o    �W�W 
0 a_text  �X  �Y  T o   	 �V�V 0 xtext XText�[  E WXW l     �U�T�S�U  �T  �S  X YZY l      �R[\�R  [ � �!
@abstruct
Join every elements with given a delimiters as Unicode text
@param a_delimiter (string or Unicode text): 
text to be used as a delimiter to join text list
@result Unicode text
   \ �]]x ! 
 @ a b s t r u c t 
 J o i n   e v e r y   e l e m e n t s   w i t h   g i v e n   a   d e l i m i t e r s   a s   U n i c o d e   t e x t 
 @ p a r a m   a _ d e l i m i t e r   ( s t r i n g   o r   U n i c o d e   t e x t ) :   
 t e x t   t o   b e   u s e d   a s   a   d e l i m i t e r   t o   j o i n   t e x t   l i s t 
 @ r e s u l t   U n i c o d e   t e x t 
Z ^_^ i   � �`a` I      �Qb�P�Q 0 as_unicode_with  b c�Oc o      �N�N 0 a_delimiter  �O  �P  a k     #dd efe O      ghg k    ii jkj I    �M�L�K�M 0 store_delimiters  �L  �K  k lml r    non I    �Jp�I�J 0 	join_list  p qrq n   sts o    �H�H 0 	_contents  t  f    r u�Gu o    �F�F 0 a_delimiter  �G  �I  o o      �E�E 
0 a_text  m v�Dv I    �C�B�A�C 0 restore_delimiters  �B  �A  �D  h o     �@�@ 0 xtext XTextf w�?w L   ! #xx o   ! "�>�> 
0 a_text  �?  _ yzy l     �=�<�;�=  �<  �;  z {|{ l      �:}~�:  } � �!
@abstruct
A synonym of ((<as_unicode_with>)). Join every elements with given a delimiters as Unicode text.
@param a_delimiter (string or Unicode text): 
text to be used as a delimiter to join text list
@result Unicode text
   ~ �� ! 
 @ a b s t r u c t 
 A   s y n o n y m   o f   ( ( < a s _ u n i c o d e _ w i t h > ) ) .   J o i n   e v e r y   e l e m e n t s   w i t h   g i v e n   a   d e l i m i t e r s   a s   U n i c o d e   t e x t . 
 @ p a r a m   a _ d e l i m i t e r   ( s t r i n g   o r   U n i c o d e   t e x t ) :   
 t e x t   t o   b e   u s e d   a s   a   d e l i m i t e r   t o   j o i n   t e x t   l i s t 
 @ r e s u l t   U n i c o d e   t e x t 
| ��� i   � ���� I      �9��8�9 0 as_text_with  � ��7� o      �6�6 0 a_delimiter  �7  �8  � L     �� I     �5��4�5 0 as_unicode_with  � ��3� o    �2�2 0 a_delimiter  �3  �4  � ��� l     �1�0�/�1  �0  �/  � ��� l      �.���.  � � �!
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
� ��� i   � ���� I      �-��,�- 0 as_string_with  � ��+� o      �*�* 0 a_delimiter  �+  �,  � k     #�� ��� O      ��� k    �� ��� I    �)�(�'�) 0 store_delimiters  �(  �'  � ��� r    ��� I    �&��%�& 0 join_as_string  � ��� n   ��� o    �$�$ 0 	_contents  �  f    � ��#� o    �"�" 0 a_delimiter  �#  �%  � o      �!�! 
0 a_text  � �� � I    ���� 0 restore_delimiters  �  �  �   � o     �� 0 xtext XText� ��� L   ! #�� o   ! "�� 
0 a_text  �  � ��� l     ����  �  �  � ��� l     ����  �  �  � ��� l      ����  � &  !@group Loop with Script Object    � ��� @ ! @ g r o u p   L o o p   w i t h   S c r i p t   O b j e c t  � ��� l     ����  �  �  � ��� l      ����  ���!
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
� ��� i   � ���� I      ���� 0 each  � ��� o      �� 0 a_script  �  �  � k     +�� ��� r     ��� I     �
�	��
 0 iterator  �	  �  � o      �� 0 an_iter  � ��� V    +��� Z    &����� =   ��� n   ��� I    ���� 0 do  � ��� n   ��� I    � �����  0 next  ��  ��  � o    ���� 0 an_iter  �  �  � o    ���� 0 a_script  � m    ��
�� boovfals�  S   ! "�  �  � n   ��� I    �������� 0 has_next  ��  ��  � o    ���� 0 an_iter  �  � ��� l     ��������  ��  ��  � ��� l      ������  ���!
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
� ��� i   � ���� I      ������� 0 map  � ���� o      ���� 0 a_script  ��  ��  � k     ��    r      I     ������ 0 map_as_list   �� o    ���� 0 a_script  ��  ��   o      ���� 
0 a_list   �� L   	  I   	 ������ 0 make_with_list   	��	 o   
 ���� 
0 a_list  ��  ��  ��  � 

 l     ��������  ��  ��    l      ����  ��!@abstruct
Call do handler of given script object with passing each element as an argument.
An AppleScript's list of the results of do handler is returned.

@description 
A parameter &quot;a_script&quot; must have a do handler which require only argument.

Each elements in the target XList will be passed to the do handler.

@param a_script(script object) :
must have a do handler which require one argument.
@result list
    �N ! @ a b s t r u c t 
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
  i   � � I      ������ 0 map_as_list   �� o      ���� 0 a_script  ��  ��   k     ,  r      J     ����   o      ���� 
0 a_list    r     I    
�������� 0 iterator  ��  ��   o      ���� 0 an_iter    !  V    )"#" r    $$%$ l   !&����& n   !'(' I    !��)���� 0 do  ) *��* n   +,+ I    �������� 0 next  ��  ��  , o    ���� 0 an_iter  ��  ��  ( o    ���� 0 a_script  ��  ��  % n      -.-  ;   " #. o   ! "���� 
0 a_list  # n   /0/ I    �������� 0 has_next  ��  ��  0 o    ���� 0 an_iter  ! 1��1 L   * ,22 o   * +���� 
0 a_list  ��   343 l     ��������  ��  ��  4 565 l      ��78��  7 * $!@group Make a copy of the instance    8 �99 H ! @ g r o u p   M a k e   a   c o p y   o f   t h e   i n s t a n c e  6 :;: l     ��������  ��  ��  ; <=< l      ��>?��  > � �!@abstruct
Make a new instance which share internal list with the original.
The internal counter for the iterator will be copied.
@result XList
   ? �@@  ! @ a b s t r u c t 
 M a k e   a   n e w   i n s t a n c e   w h i c h   s h a r e   i n t e r n a l   l i s t   w i t h   t h e   o r i g i n a l . 
 T h e   i n t e r n a l   c o u n t e r   f o r   t h e   i t e r a t o r   w i l l   b e   c o p i e d . 
 @ r e s u l t   X L i s t 
= ABA i   � �CDC I      �������� 0 shallow_copy  ��  ��  D k     EE FGF r     
HIH n    JKJ I    ��L���� 0 	make_with  L M��M n   NON o    ���� 0 	_contents  O  f    ��  ��  K  f     I o      ���� 
0 x_list  G PQP r    RSR n   TUT o    ���� 0 _n  U  f    S n     VWV o    ���� 0 _n  W o    ���� 
0 x_list  Q X��X L    YY o    ���� 
0 x_list  ��  B Z[Z l     ��������  ��  ��  [ \]\ l      ��^_��  ^ f `!@abstruct
Make a new instance which have copied internal list from the original.
@result XList
   _ �`` � ! @ a b s t r u c t 
 M a k e   a   n e w   i n s t a n c e   w h i c h   h a v e   c o p i e d   i n t e r n a l   l i s t   f r o m   t h e   o r i g i n a l . 
 @ r e s u l t   X L i s t 
] aba i   � �cdc I      �������� 0 	deep_copy  ��  ��  d k     ee fgf r     hih n    
jkj I    
��l���� 0 	make_with  l m��m I    �������� 0 	all_items  ��  ��  ��  ��  k  f     i o      ���� 
0 x_list  g non r    pqp n   rsr o    ���� 0 _n  s  f    q n     tut o    ���� 0 _n  u o    ���� 
0 x_list  o v��v L    ww o    ���� 
0 x_list  ��  b xyx l     ��������  ��  ��  y z{z l      ��|}��  | a [!@abstruct
Make a shallow copy with resetting the internal iterator counter.
@result XList
   } �~~ � ! @ a b s t r u c t 
 M a k e   a   s h a l l o w   c o p y   w i t h   r e s e t t i n g   t h e   i n t e r n a l   i t e r a t o r   c o u n t e r . 
 @ r e s u l t   X L i s t 
{ � i   � ���� I      ����~�� 0 iterator  �  �~  � L     	�� n    ��� I    �}��|�} 0 	make_with  � ��{� n   ��� o    �z�z 0 	_contents  �  f    �{  �|  �  f     � ��� l     �y�x�w�y  �x  �w  � ��� i   � ���� I     �v�u�t
�v .ascrcmnt****      � ****�u  �t  � O    ��� I   �s��r
�s .ascrcmnt****      � ****� l   	��q�p� n   	��� I    	�o�n�m�o 0 dump  �n  �m  �  f    �q  �p  �r  � 1     �l
�l 
ascr� ��� l     �k�j�i�k  �j  �i  � ��� i   � ���� I      �h�g�f�h 0 dump  �g  �f  � k     %�� ��� h     �e��e 0 xlistdumper XListDumper� k      �� ��� j     �d��d 0 an_index  � m     �c�c  � ��b� i    ��� I      �a��`�a 0 do  � ��_� o      �^�^ 0 an_item  �_  �`  � k     6�� ��� r     ��� [     ��� o     �]�] 0 an_index  � m    �\�\ � o      �[�[ 0 an_index  � ��� r    ��� l   ��Z�Y� c    ��� o    �X�X 0 an_index  � m    �W
�W 
utxt�Z  �Y  � o      �V�V 
0 output  � ��� Z    /���U�� =   ��� n    ��� m    �T
�T 
pcls� o    �S�S 0 an_item  � m    �R
�R 
scpt� r     '��� n    %��� I   ! %�Q�P�O�Q 0 dump  �P  �O  � o     !�N�N 0 an_item  � o      �M�M 0 	dump_data  �U  � r   * /��� c   * -��� o   * +�L�L 0 an_item  � m   + ,�K
�K 
utxt� o      �J�J 0 	dump_data  � ��I� L   0 6�� b   0 5��� b   0 3��� o   0 1�H�H 
0 output  � 1   1 2�G
�G 
tab � o   3 4�F�F 0 	dump_data  �I  �b  � ��� r    ��� I    �E��D�E 0 map  � ��C� o   	 
�B�B 0 xlistdumper XListDumper�C  �D  � o      �A�A 0 	dump_list  � ��� n   ��� I    �@��?�@ 0 unshift  � ��>� b    ��� b    ��� m    �� ���  [� n   ��� 1    �=
�= 
pnam�  f    � m    �� ���  ]�>  �?  � o    �<�< 0 	dump_list  � ��;� L    %�� n   $��� I    $�:��9�: 0 as_unicode_with  � ��8� o     �7
�7 
ret �8  �9  � o    �6�6 0 	dump_list  �;  � ��� l     �5�4�3�5  �4  �3  � ��� l      �2���2  �  == private    � ���  = =   p r i v a t e  � ��� i   � ���� I      �1�0�/�1 	0 debug  �0  �/  � k     T�� ��� O     ��� k    �� ��� I    �.��-�. 
0 export  � ��,�  f   	 
�,  �-  � � � I   �+�*
�+ .MoloBootscpt        scpt�*   �)�(
�) 
forM  f    �(    �' r     I   �&�%
�& .MololoMoscpt        TEXT m     �  T e s t�%   o      �$�$ 0 test Test�'  � l    	�#�"	 I    �!� �
�! .MoloMKloscpt    ��� null�   �  �#  �"  � 

 r     + I     )��� 0 	make_with   � J   ! %  m   ! " �  a � m   " # �  b�  �  �   o      �� 
0 a_list    n  , 2 I   - 2��� 0 	delete_at   � m   - .�� �  �   o   , -�� 
0 a_list    n  3 B !  I   4 B�"�� 0 assert_true  " #$# =  4 =%&% n  4 9'(' I   5 9���� 0 list_ref  �  �  ( o   4 5�� 
0 a_list  & J   9 <)) *�* m   9 :++ �,,  b�  $ -�- m   = >.. �// $ F a i l d   t o   d e l e t e _ a t�  �  ! o   3 4�� 0 test Test 010 I  C H�2�

� .corecnte****       ****2 o   C D�	�	 
0 a_list  �
  1 3�3 n  I T454 I   J T�6�� 0 assert_true  6 787 =  J M9:9 1   J K�
� 
rslt: m   K L�� 8 ;�; m   M P<< �==  F a i l d   t o   c o u n t�  �  5 o   I J�� 0 test Test�  � >?> l     �� ���  �   ��  ? @A@ i   � �BCB I     ������
�� .aevtoappnull  �   � ****��  ��  C k     DD EFE l     ��GH��  G  return debug()   H �II  r e t u r n   d e b u g ( )F J��J Q     KLMK I   ��NO
�� .HBsushHBTEXT    ��� fileN l   P����P I   ��Q��
�� .earsffdralis        afdrQ  f    ��  ��  ��  O ��R��
�� 
rcIPR m   	 
��
�� boovtrue��  L R      ��ST
�� .ascrerr ****      � ****S o      ���� 0 msg  T ��U��
�� 
errnU o      ���� 	0 errno  ��  M I   ��V��
�� .sysodisAaleR        TEXTV l   W����W b    XYX b    Z[Z o    ���� 0 msg  [ o    ��
�� 
ret Y o    ���� 	0 errno  ��  ��  ��  ��  A \��\ l     ��������  ��  ��  ��       2��] ^_`abcdefghijklmnopqrstuvwxyz{|}~���������������  ] 0������������������������������������������������������������������������������������������������
�� 
pnam
�� 
pimr�� 0 xtext XText
�� .corecrel****      � null�� 0 	make_with  �� 0 make_with_list  �� 0 make_with_text  �� 0 next  �� 0 	next_item  �� 0 has_next  �� 0 current_item  �� 0 current_index  �� 0 decrement_index  �� 0 increment_index  �� 	0 reset  �� 0 push  �� 0 pop  �� 0 unshift  �� 	0 shift  �� 0 count_items  �� 0 item_counts  
�� .corecnte****       ****�� 0 	delete_at  �� 0 item_at  �� 0 items_in_range  �� 0 set_item  �� 0 set_item_at  �� 0 exchange_items  �� 0 has_item  �� 0 index_of  �� 0 	all_items  �� 0 list_ref  �� 0 add_from_list  �� 0 as_xtext_with  �� 0 as_unicode_with  �� 0 as_text_with  �� 0 as_string_with  �� 0 each  �� 0 	enumerate  �� 0 map  �� 0 map_as_list  �� 0 shallow_copy  �� 0 	deep_copy  �� 0 iterator  
�� .ascrcmnt****      � ****�� 0 dump  �� 	0 debug  
�� .aevtoappnull  �   � ****^ ����� �  ���� �� ��
�� 
vers��  � �����
�� 
cobj� ��   ��
�� 
osax��  � �����
�� 
cobj� ��   �� 
�� 
scpt��  _ ��   �� 
�� 
scpt` �� ;��������
�� .corecrel****      � null��  ��  �  � ���� 0 	make_with  �� 	*jvk+  a �� I���������� 0 	make_with  �� ����� �  ���� 
0 a_list  ��  � �������� 
0 a_list  �� 0 a_parent  �� 0 xlist XList� �� S��� 0 xlist XList� �����������
�� .ascrinit****      � ****� k     ��  U��  X��  [��  _����  ��  ��  � ��������
�� 
pare�� 0 	_contents  �� 0 _length  �� 0 _n  � ����������
�� 
pare�� 0 	_contents  
�� .corecnte****       ****�� 0 _length  �� 0 _n  �� b  N  Ob   �Ob   j �Ok��� )E�O��K S�O�b �� o���������� 0 make_with_list  �� ����� �  ���� 
0 a_list  ��  � ���� 
0 a_list  � ���� 0 	make_with  �� *�k+  c �� ������~�� 0 make_with_text  �� �}��} �  �|�{�| 
0 a_text  �{ 0 a_delimiter  �  � �z�y�x�w�z 
0 a_text  �y 0 a_delimiter  �x 0 	pre_delim  �w 
0 a_list  � �v�u�t�s
�v 
ascr
�u 
txdl
�t 
citm�s 0 	make_with  �~  ��,E�O���,FO��-E�O���,FO*�k+ d �r ��q�p���o�r 0 next  �q  �p  � �n�m�n 0 an_item  �m 0 msg  � 
�l�k�j�i��h�g�f ��e�l 0 	_contents  
�k 
cobj�j 0 _n  �i 0 msg  � �d�c�b
�d 
errn�c�@�b  �h 0 _length  
�g 
errn�fG�e�@�o = )�,�)�,E/E�W  X  )�,)�, )��l�Y )��l�O)�,k)�,FO�e �a ��`�_���^�a 0 	next_item  �`  �_  �  � �]�] 0 next  �^ *j+  f �\ ��[�Z���Y�\ 0 has_next  �[  �Z  �  � �X�W�X 0 _n  �W 0 _length  �Y 	)�,)�,g �V
�U�T���S�V 0 current_item  �U  �T  �  � �R�Q�P�R 0 	_contents  
�Q 
cobj�P 0 _n  �S )�,�)�,k/Eh �O!�N�M���L�O 0 current_index  �N  �M  �  � �K�K 0 _n  �L )�,ki �J2�I�H���G�J 0 decrement_index  �I  �H  �  � �F�F 0 _n  �G )�,k )�,k)�,FY hj �EL�D�C���B�E 0 increment_index  �D  �C  �  � �A�A 0 _n  �B )�,k )�,k)�,FY hk �@f�?�>���=�@ 	0 reset  �?  �>  �  � �<�< 0 _n  �= 	k)�,FO)l �;��:�9���8�; 0 push  �: �7��7 �  �6�6 0 an_item  �9  � �5�5 0 an_item  � �4�3�4 0 	_contents  �3 0 _length  �8 �)�,6FO)�,k)�,Fm �2��1�0���/�2 0 pop  �1  �0  � �.�. 0 a_result  � �-�,�+�*�)�(�'�- 0 	_contents  
�, 
cobj�+  �*  
�) 
msng�(���' 0 _length  �/ F )�,�i/E�W 	X  �O )�,[�\[Zk\Z�2)�,FW X  jv)�,FO)�,k)�,FO�n �&��%�$���#�& 0 unshift  �% �"��" �  �!�! 0 an_item  �$  � � �  0 an_item  � ���� 0 	_contents  � 0 increment_index  � 0 _length  �# �)�,5FO*j+ O)�,k)�,FO)o ������� 	0 shift  �  �  � �� 0 a_result  � ��������� 0 	_contents  
� 
cobj�  �  
� 
msng
� 
rest� 0 decrement_index  � 0 _length  � 3 )�,�k/E�W 	X  �O)�,�,)�,FO*j+ O)�,k)�,FO�p �>������ 0 count_items  �  �  �  � ��
� 0 	_contents  
�
 .corecnte****       ****� 	)�,j q �	H������	 0 item_counts  �  �  �  � ��� 0 	_contents  
� .corecnte****       ****� 	)�,j r �R����� 
� .corecnte****       ****�  �  �  � ������ 0 	_contents  
�� .corecnte****       ****�  	)�,j s ��a���������� 0 	delete_at  �� ����� �  ���� 0 indexes  ��  � ���������� 0 indexes  �� 
0 a_list  �� 0 n  �� 0 an_index  � ����������������
�� 
list
�� 
leng
�� 
cobj�� 0 	_contents  
�� 
rest�� 0 _length  ������ 0 _n  �� ���&E�OjvE�O �k��,Ekh ��/E�O)�,�/�6FO�k  )�,�,)�,FY D)�,ilv� )�,[�\[Zk\Z�2)�,FY %)�,[�\[Zk\Z�k2)�,[�\[Z�k\Zi2%)�,FO)�,� )�,k)�,FY hO)�,k)�,F[OY�uO�t �� ���������� 0 item_at  �� ����� �  ���� 0 an_index  ��  � ���������� 0 an_index  �� 
0 a_list  �� 0 
index_list  �� 0 	inde_list  � ��������������
�� 
pcls
�� 
list�� 0 	_contents  
�� 
cobj�� 0 	make_with  �� 0 has_next  �� 0 next  �� C��,� )�,�/EY hOjvE�O*�k+ E�O h�j+ )�,�j+ /�6F[OY��O�u ��<���������� 0 items_in_range  �� ����� �  ������ 0 s_index  �� 0 e_index  ��  � ������ 0 s_index  �� 0 e_index  � �������� 0 	_contents  
�� 
cobj�� 0 	make_with  �� *)�,[�\[Z�\Z�2k+ v ��T���������� 0 set_item  ��  �� �����
�� 
for �� 0 a_value  � ������
�� 
at  �� 0 an_index  ��  � ������ 0 a_value  �� 0 an_index  � ������ 0 	_contents  
�� 
cobj�� 	�)�,�/Fw ��j���������� 0 set_item_at  �� ����� �  ������ 0 a_value  �� 0 an_index  ��  � ������ 0 a_value  �� 0 an_index  � ������ 0 	_contents  
�� 
cobj�� 	�)�,�/Fx ������������� 0 exchange_items  �� ����� �  ������ 
0 index1  �� 
0 index2  ��  � �������� 
0 index1  �� 
0 index2  �� 
0 a_buff  � ������ 0 	_contents  
�� 
cobj��  )�,�/E�O)�,�/)�,�/FO�)�,�/Fy ������������� 0 has_item  �� ����� �  ���� 0 an_item  ��  � ���� 0 an_item  � ���� 0 	_contents  �� )�,�z ������������� 0 index_of  �� ����� �  ���� 0 an_item  ��  � �������� 0 an_item  �� 0 an_index  �� 0 n  � ���������� 0 has_item  �� 0 _length  �� 0 	_contents  
�� 
cobj�� ?*�k+   jY hOjE�O %k)�,Ekh )�,�/�  
�E�OY h[OY��O�{ ������������� 0 	all_items  ��  ��  � ���� 
0 a_list  � ���� 0 	_contents  �� 
)�,EQ�O�| ������������ 0 list_ref  ��  ��  �  � ���� 0 	_contents  �� )�,E} ������������ 0 add_from_list  �� ����� �  ���� 
0 a_list  ��  � ���� 
0 a_list  � �������� 0 	_contents  �� 0 _length  
�� .corecnte****       ****�� )�,�%)�,FO)�,�j )�,FO)~ ��G��~���}�� 0 as_xtext_with  � �|��| �  �{�{ 0 a_delimiter  �~  � �z�y�z 0 a_delimiter  �y 
0 a_text  � �x�w�x 0 as_unicode_with  �w 0 	make_with  �} *�k+  E�Ob  �k+  �va�u�t���s�v 0 as_unicode_with  �u �r��r �  �q�q 0 a_delimiter  �t  � �p�o�p 0 a_delimiter  �o 
0 a_text  � �n�m�l�k�n 0 store_delimiters  �m 0 	_contents  �l 0 	join_list  �k 0 restore_delimiters  �s $b   *j+  O*)�,�l+ E�O*j+ UO�� �j��i�h���g�j 0 as_text_with  �i �f��f �  �e�e 0 a_delimiter  �h  � �d�d 0 a_delimiter  � �c�c 0 as_unicode_with  �g *�k+  � �b��a�`���_�b 0 as_string_with  �a �^��^ �  �]�] 0 a_delimiter  �`  � �\�[�\ 0 a_delimiter  �[ 
0 a_text  � �Z�Y�X�W�Z 0 store_delimiters  �Y 0 	_contents  �X 0 join_as_string  �W 0 restore_delimiters  �_ $b   *j+  O*)�,�l+ E�O*j+ UO�� �V��U�T���S�V 0 each  �U �R��R �  �Q�Q 0 a_script  �T  � �P�O�P 0 a_script  �O 0 an_iter  � �N�M�L�K�N 0 iterator  �M 0 has_next  �L 0 next  �K 0 do  �S ,*j+  E�O "h�j+ ��j+ k+ f  Y h[OY��� �J��I�H���G�J 0 	enumerate  �I �F��F �  �E�E 0 a_script  �H  � �D�D 0 a_script  � �C�B�A�@�C 	0 reset  �B 0 has_next  �A 0 next  �@ 0 do  �G +*j+  O #h*j+ �*j+ )l+ f  Y h[OY��� �?��>�=���<�? 0 map  �> �;��; �  �:�: 0 a_script  �=  � �9�8�9 0 a_script  �8 
0 a_list  � �7�6�7 0 map_as_list  �6 0 make_with_list  �< *�k+  E�O*�k+ � �5�4�3���2�5 0 map_as_list  �4 �1 �1    �0�0 0 a_script  �3  � �/�.�-�/ 0 a_script  �. 
0 a_list  �- 0 an_iter  � �,�+�*�)�, 0 iterator  �+ 0 has_next  �* 0 next  �) 0 do  �2 -jvE�O*j+  E�O h�j+ ��j+ k+ �6F[OY��O�� �(D�'�&�%�( 0 shallow_copy  �'  �&   �$�$ 
0 x_list   �#�"�!�# 0 	_contents  �" 0 	make_with  �! 0 _n  �% ))�,k+ E�O)�,��,FO�� � d����  0 	deep_copy  �  �   �� 
0 x_list   ���� 0 	all_items  � 0 	make_with  � 0 _n  � )*j+  k+ E�O)�,��,FO�� ������ 0 iterator  �  �     ��� 0 	_contents  � 0 	make_with  � 
))�,k+ � �����
� .ascrcmnt****      � ****�  �     ���
� 
ascr� 0 dump  
� .ascrcmnt****      � ****� � )j+ j U� ���
�		
�� 0 dump  �
  �	  	 ��� 0 xlistdumper XListDumper� 0 	dump_list  
 
��������� � 0 xlistdumper XListDumper ��������
�� .ascrinit****      � **** k      � �����  ��  ��   ������ 0 an_index  �� 0 do   ���� 0 an_index   ����������� 0 do  �� ����   ���� 0 an_item  ��   �������� 0 an_item  �� 
0 output  �� 0 	dump_data   ����������
�� 
utxt
�� 
pcls
�� 
scpt�� 0 dump  
�� 
tab �� 7b   kEc   Ob   �&E�O��,�  �j+ E�Y ��&E�O��%�%�� j�OL � 0 map  
� 
pnam� 0 unshift  
� 
ret �  0 as_unicode_with  � &��K S�O*�k+ E�O��)�,%�%k+ O��k+ 	� ����������� 	0 debug  ��  ��   ������ 0 test Test�� 
0 a_list   ����������������+.������<
�� .MoloMKloscpt    ��� null�� 
0 export  
�� 
forM
�� .MoloBootscpt        scpt
�� .MololoMoscpt        TEXT�� 0 	make_with  �� 0 	delete_at  �� 0 list_ref  �� 0 assert_true  
�� .corecnte****       ****
�� 
rslt�� U*j   *)k+ O*�)l O�j E�UO*��lvk+ E�O�kk+ 	O��j+ 
�kv �l+ O�j O��k a l+ � ��C������
�� .aevtoappnull  �   � ****��  ��   ������ 0 msg  �� 	0 errno   ������������
�� .earsffdralis        afdr
�� 
rcIP
�� .HBsushHBTEXT    ��� file�� 0 msg   ������
�� 
errn�� 	0 errno  ��  
�� 
ret 
�� .sysodisAaleR        TEXT��   )j  �el W X  ��%�%j ascr  ��ޭ