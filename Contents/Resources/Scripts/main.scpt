FasdUAS 1.101.10   ��   ��    k             l      ��  ��   �� Copyright (C) 2007-2016 Tetsuro KURITA

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

Foobar is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with Foobar.  If not, see <http://www.gnu.org/licenses/>      � 	 	    C o p y r i g h t   ( C )   2 0 0 7 - 2 0 1 6   T e t s u r o   K U R I T A 
 
 T h i s   p r o g r a m   i s   f r e e   s o f t w a r e :   y o u   c a n   r e d i s t r i b u t e   i t   a n d / o r   m o d i f y 
 i t   u n d e r   t h e   t e r m s   o f   t h e   G N U   G e n e r a l   P u b l i c   L i c e n s e   a s   p u b l i s h e d   b y 
 t h e   F r e e   S o f t w a r e   F o u n d a t i o n ,   e i t h e r   v e r s i o n   3   o f   t h e   L i c e n s e ,   o r 
 ( a t   y o u r   o p t i o n )   a n y   l a t e r   v e r s i o n . 
 
 F o o b a r   i s   d i s t r i b u t e d   i n   t h e   h o p e   t h a t   i t   w i l l   b e   u s e f u l , 
 b u t   W I T H O U T   A N Y   W A R R A N T Y ;   w i t h o u t   e v e n   t h e   i m p l i e d   w a r r a n t y   o f 
 M E R C H A N T A B I L I T Y   o r   F I T N E S S   F O R   A   P A R T I C U L A R   P U R P O S E .     S e e   t h e 
 G N U   G e n e r a l   P u b l i c   L i c e n s e   f o r   m o r e   d e t a i l s . 
 
 Y o u   s h o u l d   h a v e   r e c e i v e d   a   c o p y   o f   t h e   G N U   G e n e r a l   P u b l i c   L i c e n s e 
 a l o n g   w i t h   F o o b a r .     I f   n o t ,   s e e   < h t t p : / / w w w . g n u . o r g / l i c e n s e s / >     
  
 j     �� 
�� 
pnam  m        �   
 X L i s t      l     ��������  ��  ��        x    
��  ��    1      ��
�� 
ascr  �� ��
�� 
minv  m         �    2 . 3��        x   
 �� ����    2   ��
�� 
osax��        x    )�� ���� 0 xtext XText  4   # '�� 
�� 
scpt  m   % &   �     
 X T e x t��     ! " ! l     ��������  ��  ��   "  # $ # l      �� % &��   %��!@references
XText || help:openbook='XText Help'
Home page || http://www.script-factory.net/XModules/XList/en/index.html
ChangeLog || http://www.script-factory.net/XModules/XList/changelog.html
Repository || https://github.com/tkurita/XList.scptd
@title XList Reference
* Version : 1.7
* Author : Tetsuro KURITA ((<scriptfactory@mac.com>))
* Requirements : OS X 10.9 or later
* ((<Home page>)) || ((<ChangeLog>)) || ((<Repository>)) 

XList provides a wrapper object for AppleScript's list data to enable functions of Iterator, Queue, Stack. 
Many missing feature of AppleScript's list are covered.

Also XList will contribute pefermance of the script. 
The AppleScript have a characteristics that fast accessing list items must be thorugh a reference of a list. 
XList can hide such complications, and give simple codes with best performance.

== Example
@example
use XList : script "XList"(* Iterator *)set an_iterator to XList's make_with({"a", "b", "c"})repeat while an_iterator's has_next()	set an_item to next() of an_iterator	log an_itemend repeat(* Queue *)set a_queue to make XLista_queue's unshift("a")a_queue's unshift("b")log a_queue's shift() -- result : "b"log a_queue's shift() -- result : "a"(* Stack *)set a_stack to make XLista_queue's push("a")a_queue's push("b")log a_queue's pop() -- result : "b"log a_queue's pop() -- result : "a"(* Accessing list elements *)set a_list to XList's make_with({"a", "b", "c"})log a_list's item_counts() -- 3log a_list's item_at(2) -- "b"log a_list's has_item("b") --truelog a_list's has_item("d") --falselog a_list's index_of("b") -- 2log a_list's index_of("d") -- 0log a_list's delete_at(2) -- "b"log (set_item of a_list for "e" at 2) -- "e"log a_list's list_ref() -- {"a", "e"}(* Conversion to Text *)log a_list's as_unicode_with(", ") -- "a, e"(* Accessing all items with a closure *)script scriptA	on do(x, sender)		if x is "b" then			tell sender				set_item_at("d", current_index()) -- change an item of a list			end tell		end if		return true	end doend scriptan_iterator's enumerate(scriptA)log an_iterator's all_items() -- result : {"a", "d", "c"}script scriptB	on do(x)		return x & "a"	end doend scriptlog an_iterator's map_as_list(scriptB) -- result : {"aa", "da", "ca"}
    & � ' '� ! @ r e f e r e n c e s 
 X T e x t   | |   h e l p : o p e n b o o k = ' X T e x t   H e l p '  
 H o m e   p a g e   | |   h t t p : / / w w w . s c r i p t - f a c t o r y . n e t / X M o d u l e s / X L i s t / e n / i n d e x . h t m l 
 C h a n g e L o g   | |   h t t p : / / w w w . s c r i p t - f a c t o r y . n e t / X M o d u l e s / X L i s t / c h a n g e l o g . h t m l 
 R e p o s i t o r y   | |   h t t p s : / / g i t h u b . c o m / t k u r i t a / X L i s t . s c p t d 
  @ t i t l e   X L i s t   R e f e r e n c e 
 *   V e r s i o n   :   1 . 7 
 *   A u t h o r   :   T e t s u r o   K U R I T A   ( ( < s c r i p t f a c t o r y @ m a c . c o m > ) ) 
 *   R e q u i r e m e n t s   :   O S   X   1 0 . 9   o r   l a t e r 
 *   ( ( < H o m e   p a g e > ) )   | |   ( ( < C h a n g e L o g > ) )   | |   ( ( < R e p o s i t o r y > ) )   
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
 $  ( ) ( l     ��������  ��  ��   )  * + * l      �� , -��   , ! !@group Constructor Method     - � . . 6 ! @ g r o u p   C o n s t r u c t o r   M e t h o d   +  / 0 / l     ��������  ��  ��   0  1 2 1 l      �� 3 4��   3 a [!
@abstruct 
Meke an instance of empty XList.
@result script object : a new XList instance
    4 � 5 5 � ! 
 @ a b s t r u c t   
 M e k e   a n   i n s t a n c e   o f   e m p t y   X L i s t . 
 @ r e s u l t   s c r i p t   o b j e c t   :   a   n e w   X L i s t   i n s t a n c e 
 2  6 7 6 i   * - 8 9 8 I     ������
�� .corecrel****      � null��  ��   9 L      : : I     �� ;���� 0 	make_with   ;  <�� < J    ����  ��  ��   7  = > = l     ��������  ��  ��   >  ? @ ? l      �� A B��   A � �!
@abstruct 
Meke an instance of XList with given an AppleScript's  list object.
@param�@a_list (list)
@result script object : a new XList instance
    B � C C& ! 
 @ a b s t r u c t   
 M e k e   a n   i n s t a n c e   o f   X L i s t   w i t h   g i v e n   a n   A p p l e S c r i p t ' s     l i s t   o b j e c t . 
 @ p a r a m0  a _ l i s t   ( l i s t ) 
 @ r e s u l t   s c r i p t   o b j e c t   :   a   n e w   X L i s t   i n s t a n c e 
 @  D E D i   . 1 F G F I      �� H���� 0 	make_with   H  I�� I o      ���� 
0 a_list  ��  ��   G k      J J  K L K r      M N M  f      N o      ���� 0 a_parent   L  O�� O h    �� P�� 0 xlistinstance XListInstance P k       Q Q  R S R j     �� T
�� 
pare T o     ���� 0 a_parent   S  U V U j   	 �� W�� 0 	_contents   W o   	 ���� 
0 a_list   V  X Y X j    �� Z�� 0 _length   Z I   �� [��
�� .corecnte****       **** [ o    ���� 
0 a_list  ��   Y  \�� \ j    �� ]�� 0 _n   ] m    ���� ��  ��   E  ^ _ ^ l     ��������  ��  ��   _  ` a ` l      �� b c��   b � �!
@abstruct
A synonym of ((<make_with>))
@description
Meke an instance of XList with given an AppleScript's  list object.
@param�@a_list (list)
@result script object : a new XList instance
    c � d dx ! 
 @ a b s t r u c t 
 A   s y n o n y m   o f   ( ( < m a k e _ w i t h > ) ) 
 @ d e s c r i p t i o n 
 M e k e   a n   i n s t a n c e   o f   X L i s t   w i t h   g i v e n   a n   A p p l e S c r i p t ' s     l i s t   o b j e c t . 
 @ p a r a m0  a _ l i s t   ( l i s t ) 
 @ r e s u l t   s c r i p t   o b j e c t   :   a   n e w   X L i s t   i n s t a n c e 
 a  e f e i   2 5 g h g I      �� i���� 0 make_with_list   i  j�� j o      ���� 
0 a_list  ��  ��   h L      k k I     �� l���� 0 	make_with   l  m�� m o    ���� 
0 a_list  ��  ��   f  n o n l     ��������  ��  ��   o  p q p l      �� r s��   r � �!
@abstruct 
Meke an instance of XList with from a list splitting a text with a delimiter.
@param�@a_text (Unicode or string)
@param a_delimiter (Unicode or string)
@result script object : a new XList instance
    s � t t� ! 
 @ a b s t r u c t   
 M e k e   a n   i n s t a n c e   o f   X L i s t   w i t h   f r o m   a   l i s t   s p l i t t i n g   a   t e x t   w i t h   a   d e l i m i t e r . 
 @ p a r a m0  a _ t e x t   ( U n i c o d e   o r   s t r i n g ) 
 @ p a r a m   a _ d e l i m i t e r   ( U n i c o d e   o r   s t r i n g ) 
 @ r e s u l t   s c r i p t   o b j e c t   :   a   n e w   X L i s t   i n s t a n c e 
 q  u v u i   6 9 w x w I      �� y���� 0 make_with_text   y  z { z o      ���� 
0 a_text   {  |�� | o      ���� 0 a_delimiter  ��  ��   x k      } }  ~  ~ r      � � � n     � � � 1    ��
�� 
txdl � 1     ��
�� 
ascr � o      ���� 0 	pre_delim     � � � r     � � � o    ���� 0 a_delimiter   � n      � � � 1    
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
0 a_list  ��  ��  ��   v  � � � l     ��������  ��  ��   �  � � � l      �� � ���   � $ !@group  Methods for Iterator     � � � � < ! @ g r o u p     M e t h o d s   f o r   I t e r a t o r   �  � � � l     ��������  ��  ��   �  � � � l      �� � ���   � � �!
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
�� .ascrerr ****      � **** � m   $ % � � � � �  N o   n e x t   i t e m . � �� ���
�� 
errn � m   " #����G��  ��   � R   ) /�� � �
�� .ascrerr ****      � **** � o   - .���� 0 msg   � �� ���
�� 
errn � m   + ,���@��   �  � � � l  0 0�~�}�|�~  �}  �|   �  � � � r   0 9 � � � [   0 5 � � � l  0 3 ��{�z � n  0 3 � � � o   1 3�y�y 0 _n   �  f   0 1�{  �z   � m   3 4�x�x  � n      � � � o   6 8�w�w 0 _n   �  f   5 6 �  ��v � L   : < � � o   : ;�u�u 0 an_item  �v   �  � � � l     �t�s�r�t  �s  �r   �  � � � i   > A � � � I      �q�p�o�q 0 	next_item  �p  �o   � L      � � I     �n�m�l�n 0 next  �m  �l   �  � � � l     �k�j�i�k  �j  �i   �  � � � l      �h � ��h   � � �!
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
 �  � � � i   B E � � � I      �g�f�e�g 0 has_next  �f  �e   � L      � � B     � � � n     � � � o    �d�d 0 _n   �  f      � n    � � � o    �c�c 0 _length   �  f     �  � � � l     �b�a�`�b  �a  �`   �  � � � l      �_ � ��_   � [ U!
@abstruct
The item obtained by previous ((<next>))() is returned.
@result anything
    � � � � � ! 
 @ a b s t r u c t 
 T h e   i t e m   o b t a i n e d   b y   p r e v i o u s   ( ( < n e x t > ) ) ( )   i s   r e t u r n e d . 
 @ r e s u l t   a n y t h i n g 
 �    i   F I I      �^�]�\�^ 0 current_item  �]  �\   L      n      4    
�[
�[ 
cobj l   	�Z�Y \    		
	 l   �X�W n    o    �V�V 0 _n    f    �X  �W  
 m    �U�U �Z  �Y   n     o    �T�T 0 	_contents    f       l     �S�R�Q�S  �R  �Q    l      �P�P   l f!
@abstruct
An index number of an item obtained by previous ((<next>))() is returned.
@result integer
    � � ! 
 @ a b s t r u c t 
 A n   i n d e x   n u m b e r   o f   a n   i t e m   o b t a i n e d   b y   p r e v i o u s   ( ( < n e x t > ) ) ( )   i s   r e t u r n e d . 
 @ r e s u l t   i n t e g e r 
  i   J M I      �O�N�M�O 0 current_index  �N  �M   L      \      l    �L�K n      o    �J�J 0 _n     f     �L  �K   m    �I�I  !"! l     �H�G�F�H  �G  �F  " #$# l      �E%&�E  % y s!
@abstruct�@
Decrements the index of the item obtained by ((<next>))(). i.e. same item can be obtained once more.
   & �'' � ! 
 @ a b s t r u c t0  
 D e c r e m e n t s   t h e   i n d e x   o f   t h e   i t e m   o b t a i n e d   b y   ( ( < n e x t > ) ) ( ) .   i . e .   s a m e   i t e m   c a n   b e   o b t a i n e d   o n c e   m o r e . 
$ ()( i   N Q*+* I      �D�C�B�D 0 decrement_index  �C  �B  + Z     ,-�A�@, ?     ./. n    010 o    �?�? 0 _n  1  f     / m    �>�> - r    232 \    454 l   6�=�<6 n   787 o   	 �;�; 0 _n  8  f    	�=  �<  5 m    �:�: 3 n     9:9 o    �9�9 0 _n  :  f    �A  �@  ) ;<; l     �8�7�6�8  �7  �6  < =>= l      �5?@�5  ? ` Z!
@abstruct
Increments the index of the item obtained by ((<next>))(). i.e. skip an item.
   @ �AA � ! 
 @ a b s t r u c t 
 I n c r e m e n t s   t h e   i n d e x   o f   t h e   i t e m   o b t a i n e d   b y   ( ( < n e x t > ) ) ( ) .   i . e .   s k i p   a n   i t e m . 
> BCB i   R UDED I      �4�3�2�4 0 increment_index  �3  �2  E Z     FG�1�0F ?     HIH n    JKJ o    �/�/ 0 _n  K  f     I m    �.�. G r    LML [    NON l   P�-�,P n   QRQ o   	 �+�+ 0 _n  R  f    	�-  �,  O m    �*�* M n     STS o    �)�) 0 _n  T  f    �1  �0  C UVU l     �(�'�&�(  �'  �&  V WXW l      �%YZ�%  Y H B!
@abstruct
Make ((<next>))() return items form first.
@result
me
   Z �[[ � ! 
 @ a b s t r u c t 
 M a k e   ( ( < n e x t > ) ) ( )   r e t u r n   i t e m s   f o r m   f i r s t . 
 @ r e s u l t 
 m e 
X \]\ i   V Y^_^ I      �$�#�"�$ 	0 reset  �#  �"  _ k     `` aba r     cdc m     �!�! d n     efe o    � �  0 _n  f  f    b g�g L    hh  f    �  ] iji l     ����  �  �  j klk l      �mn�  m  !@group Stack and Quene    n �oo 0 ! @ g r o u p   S t a c k   a n d   Q u e n e  l pqp l     ����  �  �  q rsr l      �tu�  t u o!
@abstruct
Append an item at the end of the list.
@param an_item(anything) : 
an item to append into the list
   u �vv � ! 
 @ a b s t r u c t 
 A p p e n d   a n   i t e m   a t   t h e   e n d   o f   t h e   l i s t . 
 @ p a r a m   a n _ i t e m ( a n y t h i n g )   :   
 a n   i t e m   t o   a p p e n d   i n t o   t h e   l i s t 
s wxw i   Z ]yzy I      �{�� 0 push  { |�| o      �� 0 an_item  �  �  z k     }} ~~ r     ��� o     �� 0 an_item  � n      ���  ;    � n   ��� o    �� 0 	_contents  �  f     ��� r    ��� [    ��� l   
���� n   
��� o    
�� 0 _length  �  f    �  �  � m   
 �� � n     ��� o    �� 0 _length  �  f    �  x ��� l     �
�	��
  �	  �  � ��� l      ����  � v p!
@abstruct
Obtain last item in the stored list, and remove the item.
@result anything : 
last item in the list
   � ��� � ! 
 @ a b s t r u c t 
 O b t a i n   l a s t   i t e m   i n   t h e   s t o r e d   l i s t ,   a n d   r e m o v e   t h e   i t e m . 
 @ r e s u l t   a n y t h i n g   :   
 l a s t   i t e m   i n   t h e   l i s t 
� ��� i   ^ a��� I      ���� 0 pop  �  �  � k     E�� ��� Q     ���� r    ��� n    	��� 4   	��
� 
cobj� m    ����� n   ��� o    �� 0 	_contents  �  f    � o      � �  0 a_result  � R      ������
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
� ��� i   f i��� I      �������� 	0 shift  ��  ��  � k     2�� ��� Q        r     n    	 4   	��
�� 
cobj m    ����  n   	 o    ���� 0 	_contents  	  f     o      ���� 0 a_result   R      ������
�� .ascrerr ****      � ****��  ��   L    

 m    ��
�� 
msng�  l   ��������  ��  ��    r     n     1    ��
�� 
rest n    o    ���� 0 	_contents    f     n      o    ���� 0 	_contents    f      I     %�������� 0 decrement_index  ��  ��    r   & / \   & + l  & )���� n  & ) !  o   ' )���� 0 _length  !  f   & '��  ��   m   ) *����  n     "#" o   , .���� 0 _length  #  f   + , $��$ L   0 2%% o   0 1���� 0 a_result  ��  � &'& l     ��������  ��  ��  ' ()( l     ��������  ��  ��  ) *+* l      ��,-��  , # !@group Accessing List Items    - �.. : ! @ g r o u p   A c c e s s i n g   L i s t   I t e m s  + /0/ l      ��12��  1 < 6!
@abstruct
Return number of elements
@result integer
   2 �33 l ! 
 @ a b s t r u c t 
 R e t u r n   n u m b e r   o f   e l e m e n t s 
 @ r e s u l t   i n t e g e r 
0 454 i   j m676 I      �������� 0 count_items  ��  ��  7 L     88 I    ��9��
�� .corecnte****       ****9 n    :;: o    ���� 0 	_contents  ;  f     ��  5 <=< l     ��������  ��  ��  = >?> i   n q@A@ I      �������� 0 item_counts  ��  ��  A L     BB I    ��C��
�� .corecnte****       ****C n    DED o    ���� 0 	_contents  E  f     ��  ? FGF l     ��������  ��  ��  G HIH i   r uJKJ I     ������
�� .corecnte****       ****��  ��  K L     LL I    ��M��
�� .corecnte****       ****M n    NON o    ���� 0 	_contents  O  f     ��  I PQP l     ��������  ��  ��  Q RSR l      ��TU��  T � �!
@abstruct
Delete an item specified with an index number.
@param indexes(integer or list of interger) :
an index number or list of indexes of items to delete
@result list : 
a list of deleted items form the XList contents
   U �VV� ! 
 @ a b s t r u c t 
 D e l e t e   a n   i t e m   s p e c i f i e d   w i t h   a n   i n d e x   n u m b e r . 
 @ p a r a m   i n d e x e s ( i n t e g e r   o r   l i s t   o f   i n t e r g e r )   : 
 a n   i n d e x   n u m b e r   o r   l i s t   o f   i n d e x e s   o f   i t e m s   t o   d e l e t e 
 @ r e s u l t   l i s t   :   
 a   l i s t   o f   d e l e t e d   i t e m s   f o r m   t h e   X L i s t   c o n t e n t s 
S WXW i   v yYZY I      ��[���� 0 	delete_at  [ \��\ o      ���� 0 indexes  ��  ��  Z k     �]] ^_^ r     `a` c     bcb o     ���� 0 indexes  c m    ��
�� 
lista o      ���� 0 indexes  _ ded r    
fgf J    ����  g o      ���� 
0 a_list  e hih l   ��������  ��  ��  i jkj Y    �l��mn��l k    �oo pqp r    rsr n    tut 4    ��v
�� 
cobjv o    �� 0 n  u o    �~�~ 0 indexes  s o      �}�} 0 an_index  q wxw l   �|yz�|  y  log "start delete_item"   z �{{ . l o g   " s t a r t   d e l e t e _ i t e m "x |}| r    (~~ n    %��� 4   " %�{�
�{ 
cobj� o   # $�z�z 0 an_index  � n   "��� o     "�y�y 0 	_contents  �  f      n      ���  ;   & '� o   % &�x�x 
0 a_list  } ��� Z   ) }����� =  ) ,��� o   ) *�w�w 0 an_index  � m   * +�v�v � r   / 8��� n   / 4��� 1   2 4�u
�u 
rest� n  / 2��� o   0 2�t�t 0 	_contents  �  f   / 0� n     ��� o   5 7�s�s 0 	_contents  �  f   4 5� ��� E  ; C��� J   ; A�� ��� n  ; >��� o   < >�r�r 0 _length  �  f   ; <� ��q� m   > ?�p�p���q  � o   A B�o�o 0 an_index  � ��n� r   F W��� n   F S��� 7  I S�m��
�m 
cobj� m   M O�l�l � m   P R�k�k��� n  F I��� o   G I�j�j 0 	_contents  �  f   F G� n     ��� o   T V�i�i 0 	_contents  �  f   S T�n  � r   Z }��� b   Z y��� l  Z i��h�g� n   Z i��� 7  ] i�f��
�f 
cobj� m   a c�e�e � l  d h��d�c� \   d h��� o   e f�b�b 0 an_index  � m   f g�a�a �d  �c  � n  Z ]��� o   [ ]�`�` 0 	_contents  �  f   Z [�h  �g  � l  i x��_�^� n   i x��� 7  l x�]��
�] 
cobj� l  p t��\�[� [   p t��� o   q r�Z�Z 0 an_index  � m   r s�Y�Y �\  �[  � m   u w�X�X��� n  i l��� o   j l�W�W 0 	_contents  �  f   i j�_  �^  � n     ��� o   z |�V�V 0 	_contents  �  f   y z� ��� l  ~ ~�U�T�S�U  �T  �S  � ��� Z   ~ ����R�Q� l  ~ ���P�O� ?   ~ ���� n  ~ ���� o    ��N�N 0 _n  �  f   ~ � o   � ��M�M 0 an_index  �P  �O  � r   � ���� [   � ���� l  � ���L�K� n  � ���� o   � ��J�J 0 _n  �  f   � ��L  �K  � m   � ��I�I � n     ��� o   � ��H�H 0 _n  �  f   � ��R  �Q  � ��� l  � ��G�F�E�G  �F  �E  � ��D� r   � ���� \   � ���� l  � ���C�B� n  � ���� o   � ��A�A 0 _length  �  f   � ��C  �B  � m   � ��@�@ � n     ��� o   � ��?�? 0 _length  �  f   � ��D  �� 0 n  m m    �>�> n n    ��� 1    �=
�= 
leng� o    �<�< 0 indexes  ��  k ��� l  � ��;���;  �  log "end delete_item"   � ��� * l o g   " e n d   d e l e t e _ i t e m "� ��:� L   � ��� o   � ��9�9 
0 a_list  �:  X ��� l     �8�7�6�8  �7  �6  � ��� l      �5���5  �nh!
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
� ��� i   z }��� I      �4��3�4 0 item_at  � ��2� o      �1�1 0 an_index  �2  �3  � k     B�� ��� Z     � �0�/� >     n      m    �.
�. 
pcls o     �-�- 0 an_index   m    �,
�, 
list  L     n     4    �+
�+ 
cobj o    �*�* 0 an_index   n   	
	 o   	 �)�) 0 	_contents  
  f    	�0  �/  �  l   �(�'�&�(  �'  �&    r     J    �%�%   o      �$�$ 
0 a_list    r    " I     �#�"�# 0 	make_with   �! o    � �  0 an_index  �!  �"   o      �� 0 
index_list    V   # ? r   - : n   - 7 4   0 7�
� 
cobj l  1 6 ��  n  1 6!"! I   2 6���� 0 next  �  �  " o   1 2�� 0 	inde_list  �  �   n  - 0#$# o   . 0�� 0 	_contents  $  f   - . n      %&%  ;   8 9& o   7 8�� 
0 a_list   n  ' ,'(' I   ( ,���� 0 has_next  �  �  ( o   ' (�� 0 
index_list   )�) L   @ B** o   @ A�� 
0 a_list  �  � +,+ l     ����  �  �  , -.- l      �/0�  / � �!
@abstruct
Obtain items between two indexes.
@param s_index(integer) : 
the first index number
@param e_index(integer) : 
the last index number
@result XList : 
An XList instance of elements from s_index to e_index
   0 �11� ! 
 @ a b s t r u c t 
 O b t a i n   i t e m s   b e t w e e n   t w o   i n d e x e s . 
 @ p a r a m   s _ i n d e x ( i n t e g e r )   :   
 t h e   f i r s t   i n d e x   n u m b e r 
 @ p a r a m   e _ i n d e x ( i n t e g e r )   :   
 t h e   l a s t   i n d e x   n u m b e r 
 @ r e s u l t   X L i s t   :   
 A n   X L i s t   i n s t a n c e   o f   e l e m e n t s   f r o m   s _ i n d e x   t o   e _ i n d e x 
. 232 i   ~ �454 I      �6�
� 0 items_in_range  6 787 o      �	�	 0 s_index  8 9�9 o      �� 0 e_index  �  �
  5 L     :: I     �;�� 0 	make_with  ; <�< n    =>= 7   �?@
� 
cobj? o    
�� 0 s_index  @ o    �� 0 e_index  > n   ABA o    � �  0 	_contents  B  f    �  �  3 CDC l     ��������  ��  ��  D EFE l      ��GH��  G � �!
@abstruct
set an item at a specified index.
@description
A synonym of ((<set_item_at>)).
@param an_index(integer) : 
an index number of the item to set
   H �II4 ! 
 @ a b s t r u c t 
 s e t   a n   i t e m   a t   a   s p e c i f i e d   i n d e x . 
 @ d e s c r i p t i o n 
 A   s y n o n y m   o f   ( ( < s e t _ i t e m _ a t > ) ) . 
 @ p a r a m   a n _ i n d e x ( i n t e g e r )   :   
 a n   i n d e x   n u m b e r   o f   t h e   i t e m   t o   s e t 
F JKJ i   � �LML I      ����N�� 0 set_item  ��  N ��OP
�� 
for O o      ���� 0 a_value  P ��Q��
�� 
at  Q o      ���� 0 an_index  ��  M r     RSR o     ���� 0 a_value  S n      TUT 4    ��V
�� 
cobjV o    ���� 0 an_index  U n   WXW o    ���� 0 	_contents  X  f    K YZY l     ��������  ��  ��  Z [\[ l      ��]^��  ] � �!
@abstruct
set an item at a specified index.
@description
A synonym of ((<set_item>)).
@param an_index(integer) : 
an index number of the item to set
   ^ �__. ! 
 @ a b s t r u c t 
 s e t   a n   i t e m   a t   a   s p e c i f i e d   i n d e x . 
 @ d e s c r i p t i o n 
 A   s y n o n y m   o f   ( ( < s e t _ i t e m > ) ) . 
 @ p a r a m   a n _ i n d e x ( i n t e g e r )   :   
 a n   i n d e x   n u m b e r   o f   t h e   i t e m   t o   s e t 
\ `a` i   � �bcb I      ��d���� 0 set_item_at  d efe o      ���� 0 a_value  f g��g o      ���� 0 an_index  ��  ��  c r     hih o     ���� 0 a_value  i n      jkj 4    ��l
�� 
cobjl o    ���� 0 an_index  k n   mnm o    ���� 0 	_contents  n  f    a opo l     ��������  ��  ��  p qrq l      ��st��  s � �!
@abstruct
Exchange items specified with indexes
@param index1(integer) : 
first index of an element to exchange
@param index2 (integer) : 
second index of an element to exchange
   t �uuh ! 
 @ a b s t r u c t 
 E x c h a n g e   i t e m s   s p e c i f i e d   w i t h   i n d e x e s 
 @ p a r a m   i n d e x 1 ( i n t e g e r )   :   
 f i r s t   i n d e x   o f   a n   e l e m e n t   t o   e x c h a n g e 
 @ p a r a m   i n d e x 2   ( i n t e g e r )   :   
 s e c o n d   i n d e x   o f   a n   e l e m e n t   t o   e x c h a n g e 
r vwv i   � �xyx I      ��z���� 0 exchange_items  z {|{ o      ���� 
0 index1  | }��} o      ���� 
0 index2  ��  ��  y k     ~~ � r     ��� n     ��� 4    ���
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
0 index2  � n   ��� o    ���� 0 	_contents  �  f    ��  w ��� l     ��������  ��  ��  � ��� l      ������  � � �!
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
0 a_list  � ���� L    	�� o    ���� 
0 a_list  ��  � ��� l     ��������  ��  ��  � ��� l      ������  � � �!
@abstruct
return the stored list.
@description
Changing elements in retuend list means changing contents of the XList instance.
It is recommended not to use this method.
@result list 
   � �  t ! 
 @ a b s t r u c t 
 r e t u r n   t h e   s t o r e d   l i s t . 
 @ d e s c r i p t i o n 
 C h a n g i n g   e l e m e n t s   i n   r e t u e n d   l i s t   m e a n s   c h a n g i n g   c o n t e n t s   o f   t h e   X L i s t   i n s t a n c e . 
 I t   i s   r e c o m m e n d e d   n o t   t o   u s e   t h i s   m e t h o d . 
 @ r e s u l t   l i s t   
�  i   � � I      �������� 0 list_ref  ��  ��   L      n     o    ���� 0 	_contents    f      	 l     ��������  ��  ��  	 

 l      ����   } w!
@abstruct
Add each item contained passed list at end of the reciver's XList instance.
@param a_list(list)
@result me
    � � ! 
 @ a b s t r u c t 
 A d d   e a c h   i t e m   c o n t a i n e d   p a s s e d   l i s t   a t   e n d   o f   t h e   r e c i v e r ' s   X L i s t   i n s t a n c e . 
 @ p a r a m   a _ l i s t ( l i s t ) 
 @ r e s u l t   m e 
  i   � � I      ������ 0 add_from_list   �� o      ���� 
0 a_list  ��  ��   k       r     	 b      n     o    ���� 0 	_contents    f      o    �� 
0 a_list   n      o    �~�~ 0 	_contents    f      !  r   
 "#" [   
 $%$ l  
 &�}�|& n  
 '(' o    �{�{ 0 _length  (  f   
 �}  �|  % l   )�z�y) I   �x*�w
�x .corecnte****       ***** o    �v�v 
0 a_list  �w  �z  �y  # n     +,+ o    �u�u 0 _length  ,  f    ! -�t- L    ..  f    �t   /0/ l     �s�r�q�s  �r  �q  0 121 l      �p34�p  3 ! !@group Conversion to Text    4 �55 6 ! @ g r o u p   C o n v e r s i o n   t o   T e x t  2 676 l     �o�n�m�o  �n  �m  7 898 l      �l:;�l  : � �!
@abstruct
Join every elements with given a delimiters as ((<XText>))
@param a_delimiter (string or Unicode text): 
text to be used as a delimiter to join text list
@result script object : a ((<XText>)) instance
   ; �<<� ! 
 @ a b s t r u c t 
 J o i n   e v e r y   e l e m e n t s   w i t h   g i v e n   a   d e l i m i t e r s   a s   ( ( < X T e x t > ) ) 
 @ p a r a m   a _ d e l i m i t e r   ( s t r i n g   o r   U n i c o d e   t e x t ) :   
 t e x t   t o   b e   u s e d   a s   a   d e l i m i t e r   t o   j o i n   t e x t   l i s t 
 @ r e s u l t   s c r i p t   o b j e c t   :   a   ( ( < X T e x t > ) )   i n s t a n c e 
9 =>= i   � �?@? I      �kA�j�k 0 as_xtext_with  A B�iB o      �h�h 0 a_delimiter  �i  �j  @ k     CC DED r     FGF I     �gH�f�g 0 as_unicode_with  H I�eI o    �d�d 0 a_delimiter  �e  �f  G o      �c�c 
0 a_text  E J�bJ L   	 KK n  	 LML I    �aN�`�a 0 	make_with  N O�_O o    �^�^ 
0 a_text  �_  �`  M o   	 �]�] 0 xtext XText�b  > PQP l     �\�[�Z�\  �[  �Z  Q RSR l      �YTU�Y  T � �!
@abstruct
Join every elements with given a delimiters as Unicode text
@param a_delimiter (string or Unicode text): 
text to be used as a delimiter to join text list
@result Unicode text
   U �VVx ! 
 @ a b s t r u c t 
 J o i n   e v e r y   e l e m e n t s   w i t h   g i v e n   a   d e l i m i t e r s   a s   U n i c o d e   t e x t 
 @ p a r a m   a _ d e l i m i t e r   ( s t r i n g   o r   U n i c o d e   t e x t ) :   
 t e x t   t o   b e   u s e d   a s   a   d e l i m i t e r   t o   j o i n   t e x t   l i s t 
 @ r e s u l t   U n i c o d e   t e x t 
S WXW i   � �YZY I      �X[�W�X 0 as_unicode_with  [ \�V\ o      �U�U 0 a_delimiter  �V  �W  Z k     #]] ^_^ O      `a` k    bb cdc I    �T�S�R�T 0 store_delimiters  �S  �R  d efe r    ghg I    �Qi�P�Q 0 	join_list  i jkj n   lml o    �O�O 0 	_contents  m  f    k n�Nn o    �M�M 0 a_delimiter  �N  �P  h o      �L�L 
0 a_text  f o�Ko I    �J�I�H�J 0 restore_delimiters  �I  �H  �K  a o     �G�G 0 xtext XText_ p�Fp L   ! #qq o   ! "�E�E 
0 a_text  �F  X rsr l     �D�C�B�D  �C  �B  s tut l      �Avw�A  v � �!
@abstruct
A synonym of ((<as_unicode_with>)). Join every elements with given a delimiters as Unicode text.
@param a_delimiter (string or Unicode text): 
text to be used as a delimiter to join text list
@result Unicode text
   w �xx� ! 
 @ a b s t r u c t 
 A   s y n o n y m   o f   ( ( < a s _ u n i c o d e _ w i t h > ) ) .   J o i n   e v e r y   e l e m e n t s   w i t h   g i v e n   a   d e l i m i t e r s   a s   U n i c o d e   t e x t . 
 @ p a r a m   a _ d e l i m i t e r   ( s t r i n g   o r   U n i c o d e   t e x t ) :   
 t e x t   t o   b e   u s e d   a s   a   d e l i m i t e r   t o   j o i n   t e x t   l i s t 
 @ r e s u l t   U n i c o d e   t e x t 
u yzy i   � �{|{ I      �@}�?�@ 0 as_text_with  } ~�>~ o      �=�= 0 a_delimiter  �>  �?  | L      I     �<��;�< 0 as_unicode_with  � ��:� o    �9�9 0 a_delimiter  �:  �;  z ��� l     �8�7�6�8  �7  �6  � ��� l      �5���5  � � �!
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
� ��� i   � ���� I      �4��3�4 0 as_string_with  � ��2� o      �1�1 0 a_delimiter  �2  �3  � k     #�� ��� O      ��� k    �� ��� I    �0�/�.�0 0 store_delimiters  �/  �.  � ��� r    ��� I    �-��,�- 0 join_as_string  � ��� n   ��� o    �+�+ 0 	_contents  �  f    � ��*� o    �)�) 0 a_delimiter  �*  �,  � o      �(�( 
0 a_text  � ��'� I    �&�%�$�& 0 restore_delimiters  �%  �$  �'  � o     �#�# 0 xtext XText� ��"� L   ! #�� o   ! "�!�! 
0 a_text  �"  � ��� l     � ���   �  �  � ��� l     ����  �  �  � ��� l      ����  � &  !@group Loop with Script Object    � ��� @ ! @ g r o u p   L o o p   w i t h   S c r i p t   O b j e c t  � ��� l     ����  �  �  � ��� l      ����  ���!
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
� ��� i   � ���� I      ���� 0 each  � ��� o      �� 0 a_script  �  �  � k     +�� ��� r     ��� I     ���� 0 iterator  �  �  � o      �� 0 an_iter  � ��� V    +��� Z    &����� =   ��� n   ��� I    �
��	�
 0 do  � ��� n   ��� I    ���� 0 next  �  �  � o    �� 0 an_iter  �  �	  � o    �� 0 a_script  � m    �
� boovfals�  S   ! "�  �  � n   ��� I    �� ��� 0 has_next  �   ��  � o    ���� 0 an_iter  �  � ��� l     ��������  ��  ��  � ��� l      ������  ���!
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
� ��� i   � ���� I      ������� 0 map  � ���� o      ���� 0 a_script  ��  ��  � k     �� ��� r     ��� I     ������� 0 map_as_list  � ���� o    ���� 0 a_script  ��  ��  � o      ���� 
0 a_list  � ���� L   	    I   	 ������ 0 make_with_list   �� o   
 ���� 
0 a_list  ��  ��  ��  �  l     ��������  ��  ��    l      ����  ��!@abstruct
Call do handler of given script object with passing each element as an argument.
An AppleScript's list of the results of do handler is returned.

@description 
A parameter &quot;a_script&quot; must have a do handler which require only argument.

Each elements in the target XList will be passed to the do handler.

@param a_script(script object) :
must have a do handler which require one argument.
@result list
    �		N ! @ a b s t r u c t 
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
 

 i   � � I      ������ 0 map_as_list   �� o      ���� 0 a_script  ��  ��   k     ,  r      J     ����   o      ���� 
0 a_list    r     I    
�������� 0 iterator  ��  ��   o      ���� 0 an_iter    V    ) r    $ l   !���� n   ! !  I    !��"���� 0 do  " #��# n   $%$ I    �������� 0 next  ��  ��  % o    ���� 0 an_iter  ��  ��  ! o    ���� 0 a_script  ��  ��   n      &'&  ;   " #' o   ! "���� 
0 a_list   n   ()( I    �������� 0 has_next  ��  ��  ) o    ���� 0 an_iter   *��* L   * ,++ o   * +���� 
0 a_list  ��   ,-, l     ��������  ��  ��  - ./. l      ��01��  0 * $!@group Make a copy of the instance    1 �22 H ! @ g r o u p   M a k e   a   c o p y   o f   t h e   i n s t a n c e  / 343 l     ��������  ��  ��  4 565 l      ��78��  7 � �!@abstruct
Make a new instance which share internal list with the original.
The internal counter for the iterator will be copied.
@result XList
   8 �99  ! @ a b s t r u c t 
 M a k e   a   n e w   i n s t a n c e   w h i c h   s h a r e   i n t e r n a l   l i s t   w i t h   t h e   o r i g i n a l . 
 T h e   i n t e r n a l   c o u n t e r   f o r   t h e   i t e r a t o r   w i l l   b e   c o p i e d . 
 @ r e s u l t   X L i s t 
6 :;: i   � �<=< I      �������� 0 shallow_copy  ��  ��  = k     >> ?@? r     
ABA n    CDC I    ��E���� 0 	make_with  E F��F n   GHG o    ���� 0 	_contents  H  f    ��  ��  D  f     B o      ���� 
0 x_list  @ IJI r    KLK n   MNM o    ���� 0 _n  N  f    L n     OPO o    ���� 0 _n  P o    ���� 
0 x_list  J Q��Q L    RR o    ���� 
0 x_list  ��  ; STS l     ��������  ��  ��  T UVU l      ��WX��  W f `!@abstruct
Make a new instance which have copied internal list from the original.
@result XList
   X �YY � ! @ a b s t r u c t 
 M a k e   a   n e w   i n s t a n c e   w h i c h   h a v e   c o p i e d   i n t e r n a l   l i s t   f r o m   t h e   o r i g i n a l . 
 @ r e s u l t   X L i s t 
V Z[Z i   � �\]\ I      �������� 0 	deep_copy  ��  ��  ] k     ^^ _`_ r     aba n    
cdc I    
��e���� 0 	make_with  e f��f I    �������� 0 	all_items  ��  ��  ��  ��  d  f     b o      ���� 
0 x_list  ` ghg r    iji n   klk o    ���� 0 _n  l  f    j n     mnm o    ���� 0 _n  n o    ���� 
0 x_list  h o��o L    pp o    ���� 
0 x_list  ��  [ qrq l     ��������  ��  ��  r sts l      ��uv��  u a [!@abstruct
Make a shallow copy with resetting the internal iterator counter.
@result XList
   v �ww � ! @ a b s t r u c t 
 M a k e   a   s h a l l o w   c o p y   w i t h   r e s e t t i n g   t h e   i n t e r n a l   i t e r a t o r   c o u n t e r . 
 @ r e s u l t   X L i s t 
t xyx i   � �z{z I      �������� 0 iterator  ��  ��  { L     	|| n    }~} I    ������ 0 	make_with   ���� n   ��� o    ���� 0 	_contents  �  f    ��  ��  ~  f     y ��� l     ����~��  �  �~  � ��� i   � ���� I     �}�|�{
�} .ascrcmnt****      � ****�|  �{  � O    ��� I   �z��y
�z .ascrcmnt****      � ****� l   	��x�w� n   	��� I    	�v�u�t�v 0 dump  �u  �t  �  f    �x  �w  �y  � 1     �s
�s 
ascr� ��� l     �r�q�p�r  �q  �p  � ��� i   � ���� I      �o�n�m�o 0 dump  �n  �m  � k     %�� ��� h     �l��l 0 xlistdumper XListDumper� k      �� ��� j     �k��k 0 an_index  � m     �j�j  � ��i� i    ��� I      �h��g�h 0 do  � ��f� o      �e�e 0 an_item  �f  �g  � k     6�� ��� r     ��� [     ��� o     �d�d 0 an_index  � m    �c�c � o      �b�b 0 an_index  � ��� r    ��� l   ��a�`� c    ��� o    �_�_ 0 an_index  � m    �^
�^ 
utxt�a  �`  � o      �]�] 
0 output  � ��� Z    /���\�� =   ��� n    ��� m    �[
�[ 
pcls� o    �Z�Z 0 an_item  � m    �Y
�Y 
scpt� r     '��� n    %��� I   ! %�X�W�V�X 0 dump  �W  �V  � o     !�U�U 0 an_item  � o      �T�T 0 	dump_data  �\  � r   * /��� c   * -��� o   * +�S�S 0 an_item  � m   + ,�R
�R 
utxt� o      �Q�Q 0 	dump_data  � ��P� L   0 6�� b   0 5��� b   0 3��� o   0 1�O�O 
0 output  � 1   1 2�N
�N 
tab � o   3 4�M�M 0 	dump_data  �P  �i  � ��� r    ��� I    �L��K�L 0 map  � ��J� o   	 
�I�I 0 xlistdumper XListDumper�J  �K  � o      �H�H 0 	dump_list  � ��� n   ��� I    �G��F�G 0 unshift  � ��E� b    ��� b    ��� m    �� ���  [� n   ��� 1    �D
�D 
pnam�  f    � m    �� ���  ]�E  �F  � o    �C�C 0 	dump_list  � ��B� L    %�� n   $��� I    $�A��@�A 0 as_unicode_with  � ��?� o     �>
�> 
ret �?  �@  � o    �=�= 0 	dump_list  �B  � ��� l     �<�;�:�<  �;  �:  � ��� l      �9���9  �  == private    � ���  = =   p r i v a t e  � ��� i   � ���� I      �8�7�6�8 	0 debug  �7  �6  � k     T�� ��� O     ��� k    �� ��� I    �5��4�5 
0 export  � ��3�  f   	 
�3  �4  � ��� I   �2�1�
�2 .MoloBootscpt        scpt�1  � �0��/
�0 
forM�  f    �/  � ��.� r    ��� I   �-��,
�- .MololoMoscpt        TEXT� m       �  T e s t�,  � o      �+�+ 0 test Test�.  � l    �*�) I    �(�'�&
�( .MoloMKloscpt    ��� null�'  �&  �*  �)  �  r     + I     )�%�$�% 0 	make_with   �# J   ! %		 

 m   ! " �  a �" m   " # �  b�"  �#  �$   o      �!�! 
0 a_list    n  , 2 I   - 2� ��  0 	delete_at   � m   - .�� �  �   o   , -�� 
0 a_list    n  3 B I   4 B��� 0 assert_true    =  4 = n  4 9 !  I   5 9���� 0 list_ref  �  �  ! o   4 5�� 
0 a_list   J   9 <"" #�# m   9 :$$ �%%  b�   &�& m   = >'' �(( $ F a i l d   t o   d e l e t e _ a t�  �   o   3 4�� 0 test Test )*) I  C H�+�
� .corecnte****       ****+ o   C D�� 
0 a_list  �  * ,�, n  I T-.- I   J T�/�� 0 assert_true  / 010 =  J M232 1   J K�
� 
rslt3 m   K L�� 1 4�
4 m   M P55 �66  F a i l d   t o   c o u n t�
  �  . o   I J�	�	 0 test Test�  � 787 l     ����  �  �  8 9:9 i   � �;<; I     ���
� .aevtoappnull  �   � ****�  �  < k     == >?> l     �@A�  @  return debug()   A �BB  r e t u r n   d e b u g ( )? C�C Q     DEFD I   � GH
�  .HBsushHBTEXT    ��� fileG l   I����I I   ��J��
�� .earsffdralis        afdrJ  f    ��  ��  ��  H ��K��
�� 
rcIPK m   	 
��
�� boovtrue��  E R      ��LM
�� .ascrerr ****      � ****L o      ���� 0 msg  M ��N��
�� 
errnN o      ���� 	0 errno  ��  F I   ��O��
�� .sysodisAaleR        TEXTO l   P����P b    QRQ b    STS o    ���� 0 msg  T o    ��
�� 
ret R o    ���� 	0 errno  ��  ��  ��  �  : U��U l     ��������  ��  ��  ��       2��V WXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~��������  V 0������������������������������������������������������������������������������������������������
�� 
pnam
�� 
pimr�� 0 xtext XText
�� .corecrel****      � null�� 0 	make_with  �� 0 make_with_list  �� 0 make_with_text  �� 0 next  �� 0 	next_item  �� 0 has_next  �� 0 current_item  �� 0 current_index  �� 0 decrement_index  �� 0 increment_index  �� 	0 reset  �� 0 push  �� 0 pop  �� 0 unshift  �� 	0 shift  �� 0 count_items  �� 0 item_counts  
�� .corecnte****       ****�� 0 	delete_at  �� 0 item_at  �� 0 items_in_range  �� 0 set_item  �� 0 set_item_at  �� 0 exchange_items  �� 0 has_item  �� 0 index_of  �� 0 	all_items  �� 0 list_ref  �� 0 add_from_list  �� 0 as_xtext_with  �� 0 as_unicode_with  �� 0 as_text_with  �� 0 as_string_with  �� 0 each  �� 0 	enumerate  �� 0 map  �� 0 map_as_list  �� 0 shallow_copy  �� 0 	deep_copy  �� 0 iterator  
�� .ascrcmnt****      � ****�� 0 dump  �� 	0 debug  
�� .aevtoappnull  �   � ****W ����� �  ���� �� ��
�� 
vers��  � �����
�� 
cobj� ��   ��
�� 
osax��  � �����
�� 
cobj� ��   �� 
�� 
scpt��  X ��   �� 
�� 
scptY �� 9��������
�� .corecrel****      � null��  ��  �  � ���� 0 	make_with  �� 	*jvk+  Z �� G���������� 0 	make_with  �� ����� �  ���� 
0 a_list  ��  � �������� 
0 a_list  �� 0 a_parent  �� 0 xlistinstance XListInstance� �� P��� 0 xlistinstance XListInstance� �����������
�� .ascrinit****      � ****� k     ��  R��  U��  X��  \����  ��  ��  � ��������
�� 
pare�� 0 	_contents  �� 0 _length  �� 0 _n  � ����������
�� 
pare�� 0 	_contents  
�� .corecnte****       ****�� 0 _length  �� 0 _n  �� b  N  Ob   �Ob   j �Ok��� )E�O��K S�[ �� h���������� 0 make_with_list  �� ����� �  ���� 
0 a_list  ��  � ���� 
0 a_list  � ���� 0 	make_with  �� *�k+  \ �� x���������� 0 make_with_text  �� ����� �  ������ 
0 a_text  �� 0 a_delimiter  ��  � ������~�� 
0 a_text  �� 0 a_delimiter  � 0 	pre_delim  �~ 
0 a_list  � �}�|�{�z
�} 
ascr
�| 
txdl
�{ 
citm�z 0 	make_with  ��  ��,E�O���,FO��-E�O���,FO*�k+ ] �y ��x�w���v�y 0 next  �x  �w  � �u�t�u 0 an_item  �t 0 msg  � 
�s�r�q�p��o�n�m ��l�s 0 	_contents  
�r 
cobj�q 0 _n  �p 0 msg  � �k�j�i
�k 
errn�j�@�i  �o 0 _length  
�n 
errn�mG�l�@�v = )�,�)�,E/E�W  X  )�,)�, )��l�Y )��l�O)�,k)�,FO�^ �h ��g�f���e�h 0 	next_item  �g  �f  �  � �d�d 0 next  �e *j+  _ �c ��b�a���`�c 0 has_next  �b  �a  �  � �_�^�_ 0 _n  �^ 0 _length  �` 	)�,)�,` �]�\�[���Z�] 0 current_item  �\  �[  �  � �Y�X�W�Y 0 	_contents  
�X 
cobj�W 0 _n  �Z )�,�)�,k/Ea �V�U�T���S�V 0 current_index  �U  �T  �  � �R�R 0 _n  �S )�,kb �Q+�P�O���N�Q 0 decrement_index  �P  �O  �  � �M�M 0 _n  �N )�,k )�,k)�,FY hc �LE�K�J���I�L 0 increment_index  �K  �J  �  � �H�H 0 _n  �I )�,k )�,k)�,FY hd �G_�F�E���D�G 	0 reset  �F  �E  �  � �C�C 0 _n  �D 	k)�,FO)e �Bz�A�@���?�B 0 push  �A �>��> �  �=�= 0 an_item  �@  � �<�< 0 an_item  � �;�:�; 0 	_contents  �: 0 _length  �? �)�,6FO)�,k)�,Ff �9��8�7���6�9 0 pop  �8  �7  � �5�5 0 a_result  � �4�3�2�1�0�/�.�4 0 	_contents  
�3 
cobj�2  �1  
�0 
msng�/���. 0 _length  �6 F )�,�i/E�W 	X  �O )�,[�\[Zk\Z�2)�,FW X  jv)�,FO)�,k)�,FO�g �-��,�+���*�- 0 unshift  �, �)��) �  �(�( 0 an_item  �+  � �'�' 0 an_item  � �&�%�$�& 0 	_contents  �% 0 increment_index  �$ 0 _length  �* �)�,5FO*j+ O)�,k)�,FO)h �#��"�!��� �# 	0 shift  �"  �!  � �� 0 a_result  � ��������� 0 	_contents  
� 
cobj�  �  
� 
msng
� 
rest� 0 decrement_index  � 0 _length  �  3 )�,�k/E�W 	X  �O)�,�,)�,FO*j+ O)�,k)�,FO�i �7������ 0 count_items  �  �  �  � ��� 0 	_contents  
� .corecnte****       ****� 	)�,j j �A������ 0 item_counts  �  �  �  � ��� 0 	_contents  
� .corecnte****       ****� 	)�,j k �
K�	����
�
 .corecnte****       ****�	  �  �  � ��� 0 	_contents  
� .corecnte****       ****� 	)�,j l �Z������ 0 	delete_at  � � ��  �  ���� 0 indexes  �  � ���������� 0 indexes  �� 
0 a_list  �� 0 n  �� 0 an_index  � ����������������
�� 
list
�� 
leng
�� 
cobj�� 0 	_contents  
�� 
rest�� 0 _length  ������ 0 _n  � ���&E�OjvE�O �k��,Ekh ��/E�O)�,�/�6FO�k  )�,�,)�,FY D)�,ilv� )�,[�\[Zk\Z�2)�,FY %)�,[�\[Zk\Z�k2)�,[�\[Z�k\Zi2%)�,FO)�,� )�,k)�,FY hO)�,k)�,F[OY�uO�m ������������� 0 item_at  �� ����� �  ���� 0 an_index  ��  � ���������� 0 an_index  �� 
0 a_list  �� 0 
index_list  �� 0 	inde_list  � ��������������
�� 
pcls
�� 
list�� 0 	_contents  
�� 
cobj�� 0 	make_with  �� 0 has_next  �� 0 next  �� C��,� )�,�/EY hOjvE�O*�k+ E�O h�j+ )�,�j+ /�6F[OY��O�n ��5���������� 0 items_in_range  �� ����� �  ������ 0 s_index  �� 0 e_index  ��  � ������ 0 s_index  �� 0 e_index  � �������� 0 	_contents  
�� 
cobj�� 0 	make_with  �� *)�,[�\[Z�\Z�2k+ o ��M���������� 0 set_item  ��  �� �����
�� 
for �� 0 a_value  � ������
�� 
at  �� 0 an_index  ��  � ������ 0 a_value  �� 0 an_index  � ������ 0 	_contents  
�� 
cobj�� 	�)�,�/Fp ��c���������� 0 set_item_at  �� ����� �  ������ 0 a_value  �� 0 an_index  ��  � ������ 0 a_value  �� 0 an_index  � ������ 0 	_contents  
�� 
cobj�� 	�)�,�/Fq ��y���������� 0 exchange_items  �� ����� �  ������ 
0 index1  �� 
0 index2  ��  � �������� 
0 index1  �� 
0 index2  �� 
0 a_buff  � ������ 0 	_contents  
�� 
cobj��  )�,�/E�O)�,�/)�,�/FO�)�,�/Fr ������������� 0 has_item  �� ����� �  ���� 0 an_item  ��  � ���� 0 an_item  � ���� 0 	_contents  �� )�,�s ������������� 0 index_of  �� ����� �  ���� 0 an_item  ��  � �������� 0 an_item  �� 0 an_index  �� 0 n  � ���������� 0 has_item  �� 0 _length  �� 0 	_contents  
�� 
cobj�� ?*�k+   jY hOjE�O %k)�,Ekh )�,�/�  
�E�OY h[OY��O�t ������������� 0 	all_items  ��  ��  � ���� 
0 a_list  � ���� 0 	_contents  �� 
)�,EQ�O�u ������������ 0 list_ref  ��  ��  �  � ���� 0 	_contents  �� )�,Ev ������������ 0 add_from_list  �� ����� �  ���� 
0 a_list  ��  � ���� 
0 a_list  � �������� 0 	_contents  �� 0 _length  
�� .corecnte****       ****�� )�,�%)�,FO)�,�j )�,FO)w ��@���������� 0 as_xtext_with  �� ����� �  ���� 0 a_delimiter  ��  � ������ 0 a_delimiter  �� 
0 a_text  � ��~� 0 as_unicode_with  �~ 0 	make_with  �� *�k+  E�Ob  �k+ x �}Z�|�{���z�} 0 as_unicode_with  �| �y��y �  �x�x 0 a_delimiter  �{  � �w�v�w 0 a_delimiter  �v 
0 a_text  � �u�t�s�r�u 0 store_delimiters  �t 0 	_contents  �s 0 	join_list  �r 0 restore_delimiters  �z $b   *j+  O*)�,�l+ E�O*j+ UO�y �q|�p�o���n�q 0 as_text_with  �p �m��m �  �l�l 0 a_delimiter  �o  � �k�k 0 a_delimiter  � �j�j 0 as_unicode_with  �n *�k+  z �i��h�g���f�i 0 as_string_with  �h �e��e �  �d�d 0 a_delimiter  �g  � �c�b�c 0 a_delimiter  �b 
0 a_text  � �a�`�_�^�a 0 store_delimiters  �` 0 	_contents  �_ 0 join_as_string  �^ 0 restore_delimiters  �f $b   *j+  O*)�,�l+ E�O*j+ UO�{ �]��\�[���Z�] 0 each  �\ �Y��Y �  �X�X 0 a_script  �[  � �W�V�W 0 a_script  �V 0 an_iter  � �U�T�S�R�U 0 iterator  �T 0 has_next  �S 0 next  �R 0 do  �Z ,*j+  E�O "h�j+ ��j+ k+ f  Y h[OY��| �Q��P�O���N�Q 0 	enumerate  �P �M��M �  �L�L 0 a_script  �O  � �K�K 0 a_script  � �J�I�H�G�J 	0 reset  �I 0 has_next  �H 0 next  �G 0 do  �N +*j+  O #h*j+ �*j+ )l+ f  Y h[OY��} �F��E�D���C�F 0 map  �E �B��B �  �A�A 0 a_script  �D  � �@�?�@ 0 a_script  �? 
0 a_list  � �>�=�> 0 map_as_list  �= 0 make_with_list  �C *�k+  E�O*�k+ ~ �<�;�:���9�< 0 map_as_list  �; �8��8 �  �7�7 0 a_script  �:  � �6�5�4�6 0 a_script  �5 
0 a_list  �4 0 an_iter  � �3�2�1�0�3 0 iterator  �2 0 has_next  �1 0 next  �0 0 do  �9 -jvE�O*j+  E�O h�j+ ��j+ k+ �6F[OY��O� �/=�.�-���,�/ 0 shallow_copy  �.  �-  � �+�+ 
0 x_list  � �*�)�(�* 0 	_contents  �) 0 	make_with  �( 0 _n  �, ))�,k+ E�O)�,��,FO�� �']�&�%���$�' 0 	deep_copy  �&  �%  � �#�# 
0 x_list  � �"�!� �" 0 	all_items  �! 0 	make_with  �  0 _n  �$ )*j+  k+ E�O)�,��,FO�� �{������ 0 iterator  �  �  �  � ��� 0 	_contents  � 0 	make_with  � 
))�,k+ � ���� �
� .ascrcmnt****      � ****�  �      ���
� 
ascr� 0 dump  
� .ascrcmnt****      � ****� � )j+ j U� ������ 0 dump  �  �   ��� 0 xlistdumper XListDumper� 0 	dump_list   
�����
��	��� 0 xlistdumper XListDumper ����
� .ascrinit****      � **** k      �		 ���  �  �   �� � 0 an_index  �  0 do   ��
�� 0 an_index  
 ����������� 0 do  �� ����   ���� 0 an_item  ��   �������� 0 an_item  �� 
0 output  �� 0 	dump_data   ����������
�� 
utxt
�� 
pcls
�� 
scpt�� 0 dump  
�� 
tab �� 7b   kEc   Ob   �&E�O��,�  �j+ E�Y ��&E�O��%�%� j�OL � 0 map  
�
 
pnam�	 0 unshift  
� 
ret � 0 as_unicode_with  � &��K S�O*�k+ E�O��)�,%�%k+ O��k+ 	� ����������� 	0 debug  ��  ��   ������ 0 test Test�� 
0 a_list   �������� ��������$'������5
�� .MoloMKloscpt    ��� null�� 
0 export  
�� 
forM
�� .MoloBootscpt        scpt
�� .MololoMoscpt        TEXT�� 0 	make_with  �� 0 	delete_at  �� 0 list_ref  �� 0 assert_true  
�� .corecnte****       ****
�� 
rslt�� U*j   *)k+ O*�)l O�j E�UO*��lvk+ E�O�kk+ 	O��j+ 
�kv �l+ O�j O��k a l+ � ��<������
�� .aevtoappnull  �   � ****��  ��   ������ 0 msg  �� 	0 errno   ������������
�� .earsffdralis        afdr
�� 
rcIP
�� .HBsushHBTEXT    ��� file�� 0 msg   ������
�� 
errn�� 	0 errno  ��  
�� 
ret 
�� .sysodisAaleR        TEXT��   )j  �el W X  ��%�%j ascr  ��ޭ