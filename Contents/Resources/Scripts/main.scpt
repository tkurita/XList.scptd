FasdUAS 1.101.10   ��   ��    k             l      ��  ��   �� Copyright (C) 2007-2020 Kurita Tetsuro

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

Foobar is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with Foobar.  If not, see <http://www.gnu.org/licenses/>      � 	 	    C o p y r i g h t   ( C )   2 0 0 7 - 2 0 2 0   K u r i t a   T e t s u r o 
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
 X T e x t��     ! " ! l     ��������  ��  ��   "  # $ # l      �� % &��   %		!@references
XText || help:openbook='net.script-factory.XText.Help'
Home page || http://www.script-factory.net/XModules/XList/en/index.html
ChangeLog || http://www.script-factory.net/XModules/XList/changelog.html
Repository || https://github.com/tkurita/XList.scptd

@title XList Reference
* Version : 1.7.2
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
use XList : script "XList"

(* Iterator *)
set an_iterator to XList's make_with({"a", "b", "c"})

repeat while an_iterator's has_next()
	set an_item to next() of an_iterator
	log an_item
end repeat

(* Queue *)
set a_queue to make XList
a_queue's unshift("a")
a_queue's unshift("b")
log a_queue's shift() -- result : "b"
log a_queue's shift() -- result : "a"

(* Stack *)
set a_stack to make XList
a_queue's push("a")
a_queue's push("b")
log a_queue's pop() -- result : "b"
log a_queue's pop() -- result : "a"

(* Accessing list elements *)
set a_list to XList's make_with({"a", "b", "c"})
log a_list's item_counts() -- 3
log a_list's item_at(2) -- "b"
log a_list's has_item("b") --true
log a_list's has_item("d") --false
log a_list's index_of("b") -- 2
log a_list's index_of("d") -- 0
log a_list's delete_at(2) -- "b"
log (set_item of a_list for "e" at 2) -- "e"
log a_list's list_ref() -- {"a", "e"}

(* Conversion to Text *)
log a_list's as_unicode_with(", ") -- "a, e"

(* Accessing all items with a closure *)
script scriptA
	on do(x, sender)
		if x is "b" then
			tell sender
				set_item_at("d", current_index()) -- change an item of a list
			end tell
		end if
		return true
	end do
end script

an_iterator's enumerate(scriptA)
log an_iterator's all_items() -- result : {"a", "d", "c"}


script scriptB
	on do(x)
		return x & "a"
	end do
end script

log an_iterator's map_as_list(scriptB) -- result : {"aa", "da", "ca"}
    & � ' ' ! @ r e f e r e n c e s 
 X T e x t   | |   h e l p : o p e n b o o k = ' n e t . s c r i p t - f a c t o r y . X T e x t . H e l p ' 
 H o m e   p a g e   | |   h t t p : / / w w w . s c r i p t - f a c t o r y . n e t / X M o d u l e s / X L i s t / e n / i n d e x . h t m l 
 C h a n g e L o g   | |   h t t p : / / w w w . s c r i p t - f a c t o r y . n e t / X M o d u l e s / X L i s t / c h a n g e l o g . h t m l 
 R e p o s i t o r y   | |   h t t p s : / / g i t h u b . c o m / t k u r i t a / X L i s t . s c p t d 
 
 @ t i t l e   X L i s t   R e f e r e n c e 
 *   V e r s i o n   :   1 . 7 . 2 
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
 u s e   X L i s t   :   s c r i p t   " X L i s t " 
 
 ( *   I t e r a t o r   * ) 
 s e t   a n _ i t e r a t o r   t o   X L i s t ' s   m a k e _ w i t h ( { " a " ,   " b " ,   " c " } ) 
 
 r e p e a t   w h i l e   a n _ i t e r a t o r ' s   h a s _ n e x t ( ) 
 	 s e t   a n _ i t e m   t o   n e x t ( )   o f   a n _ i t e r a t o r 
 	 l o g   a n _ i t e m 
 e n d   r e p e a t 
 
 ( *   Q u e u e   * ) 
 s e t   a _ q u e u e   t o   m a k e   X L i s t 
 a _ q u e u e ' s   u n s h i f t ( " a " ) 
 a _ q u e u e ' s   u n s h i f t ( " b " ) 
 l o g   a _ q u e u e ' s   s h i f t ( )   - -   r e s u l t   :   " b " 
 l o g   a _ q u e u e ' s   s h i f t ( )   - -   r e s u l t   :   " a " 
 
 ( *   S t a c k   * ) 
 s e t   a _ s t a c k   t o   m a k e   X L i s t 
 a _ q u e u e ' s   p u s h ( " a " ) 
 a _ q u e u e ' s   p u s h ( " b " ) 
 l o g   a _ q u e u e ' s   p o p ( )   - -   r e s u l t   :   " b " 
 l o g   a _ q u e u e ' s   p o p ( )   - -   r e s u l t   :   " a " 
 
 ( *   A c c e s s i n g   l i s t   e l e m e n t s   * ) 
 s e t   a _ l i s t   t o   X L i s t ' s   m a k e _ w i t h ( { " a " ,   " b " ,   " c " } ) 
 l o g   a _ l i s t ' s   i t e m _ c o u n t s ( )   - -   3 
 l o g   a _ l i s t ' s   i t e m _ a t ( 2 )   - -   " b " 
 l o g   a _ l i s t ' s   h a s _ i t e m ( " b " )   - - t r u e 
 l o g   a _ l i s t ' s   h a s _ i t e m ( " d " )   - - f a l s e 
 l o g   a _ l i s t ' s   i n d e x _ o f ( " b " )   - -   2 
 l o g   a _ l i s t ' s   i n d e x _ o f ( " d " )   - -   0 
 l o g   a _ l i s t ' s   d e l e t e _ a t ( 2 )   - -   " b " 
 l o g   ( s e t _ i t e m   o f   a _ l i s t   f o r   " e "   a t   2 )   - -   " e " 
 l o g   a _ l i s t ' s   l i s t _ r e f ( )   - -   { " a " ,   " e " } 
 
 ( *   C o n v e r s i o n   t o   T e x t   * ) 
 l o g   a _ l i s t ' s   a s _ u n i c o d e _ w i t h ( " ,   " )   - -   " a ,   e " 
 
 ( *   A c c e s s i n g   a l l   i t e m s   w i t h   a   c l o s u r e   * ) 
 s c r i p t   s c r i p t A 
 	 o n   d o ( x ,   s e n d e r ) 
 	 	 i f   x   i s   " b "   t h e n 
 	 	 	 t e l l   s e n d e r 
 	 	 	 	 s e t _ i t e m _ a t ( " d " ,   c u r r e n t _ i n d e x ( ) )   - -   c h a n g e   a n   i t e m   o f   a   l i s t 
 	 	 	 e n d   t e l l 
 	 	 e n d   i f 
 	 	 r e t u r n   t r u e 
 	 e n d   d o 
 e n d   s c r i p t 
 
 a n _ i t e r a t o r ' s   e n u m e r a t e ( s c r i p t A ) 
 l o g   a n _ i t e r a t o r ' s   a l l _ i t e m s ( )   - -   r e s u l t   :   { " a " ,   " d " ,   " c " } 
 
 
 s c r i p t   s c r i p t B 
 	 o n   d o ( x ) 
 	 	 r e t u r n   x   &   " a " 
 	 e n d   d o 
 e n d   s c r i p t 
 
 l o g   a n _ i t e r a t o r ' s   m a p _ a s _ l i s t ( s c r i p t B )   - -   r e s u l t   :   { " a a " ,   " d a " ,   " c a " } 
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
� ��� i   � ���� I      ������� 0 has_item  � ���� o      ���� 0 an_item  ��  ��  � L     �� E    ��� n    ��� o    ���� 0 	_contents  �  f     � o    ���� 0 an_item  � ��� l     ��������  ��  ��  � ��� l      ������  � � �!
@abstruct
Obtain an index number of the object &quot;an_item&quot; in the XList instance.
@param an_item (anything)
@result integer : 
An index number of &quot;an_item&quot;. 
If &quot;an_item&quot; is not in the target, 0 will be returned.
   � ���� ! 
 @ a b s t r u c t 
 O b t a i n   a n   i n d e x   n u m b e r   o f   t h e   o b j e c t   & q u o t ; a n _ i t e m & q u o t ;   i n   t h e   X L i s t   i n s t a n c e . 
 @ p a r a m   a n _ i t e m   ( a n y t h i n g ) 
 @ r e s u l t   i n t e g e r   :   
 A n   i n d e x   n u m b e r   o f   & q u o t ; a n _ i t e m & q u o t ; .   
 I f   & q u o t ; a n _ i t e m & q u o t ;   i s   n o t   i n   t h e   t a r g e t ,   0   w i l l   b e   r e t u r n e d . 
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
0 a_text  �"  � ��� l     � ���   �  �  � ��� l     ����  �  �  � ��� l      ����  � &  !@group Loop with Script Object    � ��� @ ! @ g r o u p   L o o p   w i t h   S c r i p t   O b j e c t  � ��� l     ����  �  �  � ��� l      ����  ���!@abstruct
Repeat to call do handler of given script object with passing each item in the XList as an argument.
@description 
a_script must have a do handler which require only argument. 
The do handler must return true or false.
When the do handler return false, the process is stoped immediately.
@param
a_script(script object) : must have a do handler which require only argument. The do handler must return boolean.
   � ���H ! @ a b s t r u c t 
 R e p e a t   t o   c a l l   d o   h a n d l e r   o f   g i v e n   s c r i p t   o b j e c t   w i t h   p a s s i n g   e a c h   i t e m   i n   t h e   X L i s t   a s   a n   a r g u m e n t . 
 @ d e s c r i p t i o n   
 a _ s c r i p t   m u s t   h a v e   a   d o   h a n d l e r   w h i c h   r e q u i r e   o n l y   a r g u m e n t .   
 T h e   d o   h a n d l e r   m u s t   r e t u r n   t r u e   o r   f a l s e . 
 W h e n   t h e   d o   h a n d l e r   r e t u r n   f a l s e ,   t h e   p r o c e s s   i s   s t o p e d   i m m e d i a t e l y . 
 @ p a r a m 
 a _ s c r i p t ( s c r i p t   o b j e c t )   :   m u s t   h a v e   a   d o   h a n d l e r   w h i c h   r e q u i r e   o n l y   a r g u m e n t .   T h e   d o   h a n d l e r   m u s t   r e t u r n   b o o l e a n . 
� ��� i   � ���� I      ���� 0 each  � ��� o      �� 0 a_script  �  �  � X     )���� Z    $����� =   ��� n   ��� I    ���� 0 do  � ��� n    ��� 1    �
� 
pcnt� o    �
�
 0 an_item  �  �  � o    �	�	 0 a_script  � m    �
� boovfals�  S     �  �  � 0 an_item  � n   ��� o    �� 0 	_contents  �  f    � ��� l     ����  �  �  � ��� l      ����  ���!@abstruct
Repeat to call do handler of given script object with passing a reference to each item in the XList as an argument without stopping.
@description 
a_script must have a do handler which require only argument. 
A difference from ((<each>)) is that a result of do handler is igrored to gain performance.
Threre is no way to stop repeating.
@param
a_script(script object) : must have a do handler which require only argument.
   � ���b ! @ a b s t r u c t 
 R e p e a t   t o   c a l l   d o   h a n d l e r   o f   g i v e n   s c r i p t   o b j e c t   w i t h   p a s s i n g   a   r e f e r e n c e   t o   e a c h   i t e m   i n   t h e   X L i s t   a s   a n   a r g u m e n t   w i t h o u t   s t o p p i n g . 
 @ d e s c r i p t i o n   
 a _ s c r i p t   m u s t   h a v e   a   d o   h a n d l e r   w h i c h   r e q u i r e   o n l y   a r g u m e n t .   
 A   d i f f e r e n c e   f r o m   ( ( < e a c h > ) )   i s   t h a t   a   r e s u l t   o f   d o   h a n d l e r   i s   i g r o r e d   t o   g a i n   p e r f o r m a n c e . 
 T h r e r e   i s   n o   w a y   t o   s t o p   r e p e a t i n g . 
 @ p a r a m 
 a _ s c r i p t ( s c r i p t   o b j e c t )   :   m u s t   h a v e   a   d o   h a n d l e r   w h i c h   r e q u i r e   o n l y   a r g u m e n t . 
� ��� i   � ���� I      ���� 0 	each_rush  � �� � o      ���� 0 a_script  �   �  � X     ����� n   ��� I    ������� 0 do  � ���� n    ��� 1    ��
�� 
pcnt� o    ���� 0 an_item  ��  ��  � o    ���� 0 a_script  �� 0 an_item  � n   ��� o    ���� 0 	_contents  �  f    � ��� l     ��������  ��  ��  � ��� l      ������  ���!@abstruct
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
   � ���| ! @ a b s t r u c t 
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
 �������� 0 has_next  ��  ��  ��  � ��� l     ��������  ��  ��  � ��� l      �� ��   ��!@abstruct 
Call do handler of given script object with passing each element as an argument. 
A XList consisting of the results of do handler is returned.

@description 
A parameter &quot;a_script&quot; must have a do handler which require only argument.

Each element in the target XList will be passed to the do handler.

@param a_script(script object) :
must have a do handler which require only argument.
@result Instance of XList
    �f ! @ a b s t r u c t   
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
�  i   � � I      ������ 0 map   �� o      ���� 0 a_script  ��  ��   k     1		 

 r     	 I     ������ 0 	make_with   �� J    ����  ��  ��   o      ���� 0 
new_x_list    X   
 .�� r    ) l   $���� n   $ I    $������ 0 do   �� n      1     ��
�� 
pcnt o    ���� 0 an_item  ��  ��   o    ���� 0 a_script  ��  ��   n        ;   ' ( n   $ '  o   % '���� 0 	_contents    o   $ %���� 0 
new_x_list  �� 0 an_item   n   !"! o    ���� 0 	_contents  "  f     #��# L   / 1$$ o   / 0���� 0 
new_x_list  ��   %&% l     ��������  ��  ��  & '(' l      ��)*��  )��!@abstruct
Call do handler of given script object with passing each element as an argument.
An AppleScript's list of the results of do handler is returned.

@description 
A parameter &quot;a_script&quot; must have a do handler which require only argument.

Each elements in the target XList will be passed to the do handler.

@param a_script(script object) :
must have a do handler which require one argument.
@result list
   * �++N ! @ a b s t r u c t 
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
( ,-, i   � �./. I      ��0���� 0 map_as_list  0 1��1 o      ���� 0 a_script  ��  ��  / L     22 n    
343 I    
�������� 0 list_ref  ��  ��  4 I     ��5���� 0 map  5 6��6 o    ���� 0 a_script  ��  ��  - 787 l     ��������  ��  ��  8 9:9 l      ��;<��  ; * $!@group Make a copy of the instance    < �== H ! @ g r o u p   M a k e   a   c o p y   o f   t h e   i n s t a n c e  : >?> l     ��������  ��  ��  ? @A@ l      ��BC��  B � �!@abstruct
Make a new instance which share internal list with the original.
The internal counter for the iterator will be copied.
@result XList
   C �DD  ! @ a b s t r u c t 
 M a k e   a   n e w   i n s t a n c e   w h i c h   s h a r e   i n t e r n a l   l i s t   w i t h   t h e   o r i g i n a l . 
 T h e   i n t e r n a l   c o u n t e r   f o r   t h e   i t e r a t o r   w i l l   b e   c o p i e d . 
 @ r e s u l t   X L i s t 
A EFE i   � �GHG I      �������� 0 shallow_copy  ��  ��  H k     II JKJ r     
LML n    NON I    ��P���� 0 	make_with  P Q��Q n   RSR o    ���� 0 	_contents  S  f    ��  ��  O  f     M o      ���� 
0 x_list  K TUT r    VWV n   XYX o    ���� 0 _n  Y  f    W n     Z[Z o    ���� 0 _n  [ o    ���� 
0 x_list  U \��\ L    ]] o    ���� 
0 x_list  ��  F ^_^ l     ��������  ��  ��  _ `a` l      ��bc��  b f `!@abstruct
Make a new instance which have copied internal list from the original.
@result XList
   c �dd � ! @ a b s t r u c t 
 M a k e   a   n e w   i n s t a n c e   w h i c h   h a v e   c o p i e d   i n t e r n a l   l i s t   f r o m   t h e   o r i g i n a l . 
 @ r e s u l t   X L i s t 
a efe i   � �ghg I      �������� 0 	deep_copy  ��  ��  h k     ii jkj r     lml n    
non I    
��p���� 0 	make_with  p q��q I    �������� 0 	all_items  ��  ��  ��  ��  o  f     m o      ���� 
0 x_list  k rsr r    tut n   vwv o    ���� 0 _n  w  f    u n     xyx o    ���� 0 _n  y o    ���� 
0 x_list  s z��z L    {{ o    ���� 
0 x_list  ��  f |}| l     ��������  ��  ��  } ~~ l      ������  � a [!@abstruct
Make a shallow copy with resetting the internal iterator counter.
@result XList
   � ��� � ! @ a b s t r u c t 
 M a k e   a   s h a l l o w   c o p y   w i t h   r e s e t t i n g   t h e   i n t e r n a l   i t e r a t o r   c o u n t e r . 
 @ r e s u l t   X L i s t 
 ��� i   � ���� I      �������� 0 iterator  ��  ��  � L     	�� n    ��� I    ������� 0 	make_with  � ���� n   ��� o    ���� 0 	_contents  �  f    ��  ��  �  f     � ��� l     ����~��  �  �~  � ��� i   � ���� I     �}�|�{
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
ret �?  �@  � o    �=�= 0 	dump_list  �B  � ��� l     �<�;�:�<  �;  �:  � ��� l      �9���9  �  == private    � ���  = =   p r i v a t e  � ��� i   � ���� I      �8�7�6�8 	0 debug  �7  �6  � k     J�� ��� O     ��� k    �� � � I    �5�4�5 	0 setup   �3  f    	�3  �4    �2 r     I    �1�0�1 0 load   �/ m     �		  U n i t T e s t�/  �0   o      �.�. 0 test Test�2  � 4     �-

�- 
scpt
 m     �  M o d u l e L o a d e r�  r    # I    !�,�+�, 0 	make_with   �* J      m     �  a �) m     �  b�)  �*  �+   o      �(�( 
0 a_list    n  $ * I   % *�'�&�' 0 	delete_at    �%  m   % &�$�$ �%  �&   o   $ %�#�# 
0 a_list   !"! n  + :#$# I   , :�"%�!�" 0 assert_true  % &'& =  , 5()( n  , 1*+* I   - 1� ���  0 list_ref  �  �  + o   , -�� 
0 a_list  ) J   1 4,, -�- m   1 2.. �//  b�  ' 0�0 m   5 611 �22 $ F a i l d   t o   d e l e t e _ a t�  �!  $ o   + ,�� 0 test Test" 343 I  ; @�5�
� .corecnte****       ****5 o   ; <�� 
0 a_list  �  4 6�6 n  A J787 I   B J�9�� 0 assert_true  9 :;: =  B E<=< 1   B C�
� 
rslt= m   C D�� ; >�> m   E F?? �@@  F a i l d   t o   c o u n t�  �  8 o   A B�� 0 test Test�  � ABA l     ����  �  �  B CDC i   � �EFE I      ���
� 0 open_helpbook  �  �
  F Q     ,GHIG O   JKJ I   
 �	L��	 0 do  L M�M I   �N�
� .earsffdralis        afdrN  f    �  �  �  K 4    �O
� 
scptO m    PP �QQ  O p e n H e l p B o o kH R      �RS
� .ascrerr ****      � ****R o      �� 0 msg  S �T� 
� 
errnT o      ���� 	0 errno  �   I k    ,UU VWV I   "������
�� .miscactvnull��� ��� null��  ��  W X��X I  # ,��Y��
�� .sysodisAaleR        TEXTY l  # (Z����Z b   # ([\[ b   # &]^] o   # $���� 0 msg  ^ o   $ %��
�� 
ret \ o   & '���� 	0 errno  ��  ��  ��  ��  D _`_ l     ��������  ��  ��  ` aba i   � �cdc I     ������
�� .aevtoappnull  �   � ****��  ��  d k     ee fgf l     ��hi��  h  return debug()   i �jj  r e t u r n   d e b u g ( )g k��k I     �������� 0 open_helpbook  ��  ��  ��  b l��l l     ��������  ��  ��  ��       4��m nopqrstuvwxyz{|}~���������������������������������  m 2����������������������������������������������������������������������������������������������������
�� 
pnam
�� 
pimr�� 0 xtext XText
�� .corecrel****      � null�� 0 	make_with  �� 0 make_with_list  �� 0 make_with_text  �� 0 next  �� 0 	next_item  �� 0 has_next  �� 0 current_item  �� 0 current_index  �� 0 decrement_index  �� 0 increment_index  �� 	0 reset  �� 0 push  �� 0 pop  �� 0 unshift  �� 	0 shift  �� 0 count_items  �� 0 item_counts  
�� .corecnte****       ****�� 0 	delete_at  �� 0 item_at  �� 0 items_in_range  �� 0 set_item  �� 0 set_item_at  �� 0 exchange_items  �� 0 has_item  �� 0 index_of  �� 0 	all_items  �� 0 list_ref  �� 0 add_from_list  �� 0 as_xtext_with  �� 0 as_unicode_with  �� 0 as_text_with  �� 0 as_string_with  �� 0 each  �� 0 	each_rush  �� 0 	enumerate  �� 0 map  �� 0 map_as_list  �� 0 shallow_copy  �� 0 	deep_copy  �� 0 iterator  
�� .ascrcmnt****      � ****�� 0 dump  �� 	0 debug  �� 0 open_helpbook  
�� .aevtoappnull  �   � ****n ����� �  ���� �� ��
�� 
vers��  � �����
�� 
cobj� ��   ��
�� 
osax��  � �����
�� 
cobj� ��   �� 
�� 
scpt��  o ��   �� 
�� 
scptp �� 9��������
�� .corecrel****      � null��  ��  �  � ���� 0 	make_with  �� 	*jvk+  q �� G���������� 0 	make_with  �� ����� �  ���� 
0 a_list  ��  � �������� 
0 a_list  �� 0 a_parent  �� 0 xlistinstance XListInstance� �� P��� 0 xlistinstance XListInstance� �����������
�� .ascrinit****      � ****� k     ��  R��  U��  X��  \����  ��  ��  � ��������
�� 
pare�� 0 	_contents  �� 0 _length  �� 0 _n  � ����������
�� 
pare�� 0 	_contents  
�� .corecnte****       ****�� 0 _length  �� 0 _n  �� b  N  Ob   �Ob   j �Ok��� )E�O��K S�r �� h���������� 0 make_with_list  �� ����� �  ���� 
0 a_list  ��  � ���� 
0 a_list  � ���� 0 	make_with  �� *�k+  s �� x��������� 0 make_with_text  �� �~��~ �  �}�|�} 
0 a_text  �| 0 a_delimiter  ��  � �{�z�y�x�{ 
0 a_text  �z 0 a_delimiter  �y 0 	pre_delim  �x 
0 a_list  � �w�v�u�t
�w 
ascr
�v 
txdl
�u 
citm�t 0 	make_with  �  ��,E�O���,FO��-E�O���,FO*�k+ t �s ��r�q���p�s 0 next  �r  �q  � �o�n�o 0 an_item  �n 0 msg  � 
�m�l�k�j��i�h�g ��f�m 0 	_contents  
�l 
cobj�k 0 _n  �j 0 msg  � �e�d�c
�e 
errn�d�@�c  �i 0 _length  
�h 
errn�gG�f�@�p = )�,�)�,E/E�W  X  )�,)�, )��l�Y )��l�O)�,k)�,FO�u �b ��a�`���_�b 0 	next_item  �a  �`  �  � �^�^ 0 next  �_ *j+  v �] ��\�[���Z�] 0 has_next  �\  �[  �  � �Y�X�Y 0 _n  �X 0 _length  �Z 	)�,)�,w �W�V�U���T�W 0 current_item  �V  �U  �  � �S�R�Q�S 0 	_contents  
�R 
cobj�Q 0 _n  �T )�,�)�,k/Ex �P�O�N���M�P 0 current_index  �O  �N  �  � �L�L 0 _n  �M )�,ky �K+�J�I���H�K 0 decrement_index  �J  �I  �  � �G�G 0 _n  �H )�,k )�,k)�,FY hz �FE�E�D���C�F 0 increment_index  �E  �D  �  � �B�B 0 _n  �C )�,k )�,k)�,FY h{ �A_�@�?���>�A 	0 reset  �@  �?  �  � �=�= 0 _n  �> 	k)�,FO)| �<z�;�:���9�< 0 push  �; �8��8 �  �7�7 0 an_item  �:  � �6�6 0 an_item  � �5�4�5 0 	_contents  �4 0 _length  �9 �)�,6FO)�,k)�,F} �3��2�1���0�3 0 pop  �2  �1  � �/�/ 0 a_result  � �.�-�,�+�*�)�(�. 0 	_contents  
�- 
cobj�,  �+  
�* 
msng�)���( 0 _length  �0 F )�,�i/E�W 	X  �O )�,[�\[Zk\Z�2)�,FW X  jv)�,FO)�,k)�,FO�~ �'��&�%���$�' 0 unshift  �& �#��# �  �"�" 0 an_item  �%  � �!�! 0 an_item  � � ���  0 	_contents  � 0 increment_index  � 0 _length  �$ �)�,5FO*j+ O)�,k)�,FO) �������� 	0 shift  �  �  � �� 0 a_result  � ��������� 0 	_contents  
� 
cobj�  �  
� 
msng
� 
rest� 0 decrement_index  � 0 _length  � 3 )�,�k/E�W 	X  �O)�,�,)�,FO*j+ O)�,k)�,FO�� �7������ 0 count_items  �  �  �  � ��� 0 	_contents  
� .corecnte****       ****� 	)�,j � �
A�	�����
 0 item_counts  �	  �  �  � ��� 0 	_contents  
� .corecnte****       ****� 	)�,j � �K�����
� .corecnte****       ****�  �  �  � � ���  0 	_contents  
�� .corecnte****       ****� 	)�,j � ��Z���������� 0 	delete_at  �� ����� �  ���� 0 indexes  ��  � ���������� 0 indexes  �� 
0 a_list  �� 0 n  �� 0 an_index  � ����������������
�� 
list
�� 
leng
�� 
cobj�� 0 	_contents  
�� 
rest�� 0 _length  ������ 0 _n  �� ���&E�OjvE�O �k��,Ekh ��/E�O)�,�/�6FO�k  )�,�,)�,FY D)�,ilv� )�,[�\[Zk\Z�2)�,FY %)�,[�\[Zk\Z�k2)�,[�\[Z�k\Zi2%)�,FO)�,� )�,k)�,FY hO)�,k)�,F[OY�uO�� ������������� 0 item_at  �� ����� �  ���� 0 an_index  ��  � ���������� 0 an_index  �� 
0 a_list  �� 0 
index_list  �� 0 	inde_list  � ��������������
�� 
pcls
�� 
list�� 0 	_contents  
�� 
cobj�� 0 	make_with  �� 0 has_next  �� 0 next  �� C��,� )�,�/EY hOjvE�O*�k+ E�O h�j+ )�,�j+ /�6F[OY��O�� ��5���������� 0 items_in_range  �� ����� �  ������ 0 s_index  �� 0 e_index  ��  � ������ 0 s_index  �� 0 e_index  � �������� 0 	_contents  
�� 
cobj�� 0 	make_with  �� *)�,[�\[Z�\Z�2k+ � ��M���������� 0 set_item  ��  �� �����
�� 
for �� 0 a_value  � ������
�� 
at  �� 0 an_index  ��  � ������ 0 a_value  �� 0 an_index  � ������ 0 	_contents  
�� 
cobj�� 	�)�,�/F� ��c���������� 0 set_item_at  �� ����� �  ������ 0 a_value  �� 0 an_index  ��  � ������ 0 a_value  �� 0 an_index  � ������ 0 	_contents  
�� 
cobj�� 	�)�,�/F� ��y���������� 0 exchange_items  �� ����� �  ������ 
0 index1  �� 
0 index2  ��  � �������� 
0 index1  �� 
0 index2  �� 
0 a_buff  � ������ 0 	_contents  
�� 
cobj��  )�,�/E�O)�,�/)�,�/FO�)�,�/F� ������������� 0 has_item  �� ����� �  ���� 0 an_item  ��  � ���� 0 an_item  � ���� 0 	_contents  �� )�,�� ������������� 0 index_of  �� ����� �  ���� 0 an_item  ��  � �������� 0 an_item  �� 0 an_index  �� 0 n  � ���������� 0 has_item  �� 0 _length  �� 0 	_contents  
�� 
cobj�� ?*�k+   jY hOjE�O %k)�,Ekh )�,�/�  
�E�OY h[OY��O�� ������������� 0 	all_items  ��  ��  � ���� 
0 a_list  � ���� 0 	_contents  �� 
)�,EQ�O�� ������������ 0 list_ref  ��  ��  �  � ���� 0 	_contents  �� )�,E� ������������ 0 add_from_list  �� ����� �  ���� 
0 a_list  ��  � ���� 
0 a_list  � �������� 0 	_contents  �� 0 _length  
�� .corecnte****       ****�� )�,�%)�,FO)�,�j )�,FO)� ��@������~�� 0 as_xtext_with  �� �}��} �  �|�| 0 a_delimiter  �  � �{�z�{ 0 a_delimiter  �z 
0 a_text  � �y�x�y 0 as_unicode_with  �x 0 	make_with  �~ *�k+  E�Ob  �k+ � �wZ�v�u���t�w 0 as_unicode_with  �v �s �s    �r�r 0 a_delimiter  �u  � �q�p�q 0 a_delimiter  �p 
0 a_text  � �o�n�m�l�o 0 store_delimiters  �n 0 	_contents  �m 0 	join_list  �l 0 restore_delimiters  �t $b   *j+  O*)�,�l+ E�O*j+ UO�� �k|�j�i�h�k 0 as_text_with  �j �g�g   �f�f 0 a_delimiter  �i   �e�e 0 a_delimiter   �d�d 0 as_unicode_with  �h *�k+  � �c��b�a�`�c 0 as_string_with  �b �_�_   �^�^ 0 a_delimiter  �a   �]�\�] 0 a_delimiter  �\ 
0 a_text   �[�Z�Y�X�[ 0 store_delimiters  �Z 0 	_contents  �Y 0 join_as_string  �X 0 restore_delimiters  �` $b   *j+  O*)�,�l+ E�O*j+ UO�� �W��V�U�T�W 0 each  �V �S	�S 	  �R�R 0 a_script  �U   �Q�P�Q 0 a_script  �P 0 an_item   �O�N�M�L�K�J�O 0 	_contents  
�N 
kocl
�M 
cobj
�L .corecnte****       ****
�K 
pcnt�J 0 do  �T * ()�,[��l kh ���,k+ f  Y h[OY��� �I��H�G
�F�I 0 	each_rush  �H �E�E   �D�D 0 a_script  �G  
 �C�B�C 0 a_script  �B 0 an_item   �A�@�?�>�=�<�A 0 	_contents  
�@ 
kocl
�? 
cobj
�> .corecnte****       ****
�= 
pcnt�< 0 do  �F   )�,[��l kh ���,k+ [OY��� �;��:�9�8�; 0 	enumerate  �: �7�7   �6�6 0 a_script  �9   �5�5 0 a_script   �4�3�2�1�4 	0 reset  �3 0 has_next  �2 0 next  �1 0 do  �8 +*j+  O #h*j+ �*j+ )l+ f  Y h[OY��� �0�/�.�-�0 0 map  �/ �,�,   �+�+ 0 a_script  �.   �*�)�(�* 0 a_script  �) 0 
new_x_list  �( 0 an_item   �'�&�%�$�#�"�!�' 0 	make_with  �& 0 	_contents  
�% 
kocl
�$ 
cobj
�# .corecnte****       ****
�" 
pcnt�! 0 do  �- 2*jvk+  E�O #)�,[��l kh ���,k+ ��,6F[OY��O�� � /����  0 map_as_list  � ��   �� 0 a_script  �   �� 0 a_script   ��� 0 map  � 0 list_ref  � *�k+  j+ � �H���� 0 shallow_copy  �  �   �� 
0 x_list   ���� 0 	_contents  � 0 	make_with  � 0 _n  � ))�,k+ E�O)�,��,FO�� �h���� 0 	deep_copy  �  �   �� 
0 x_list   �
�	��
 0 	all_items  �	 0 	make_with  � 0 _n  � )*j+  k+ E�O)�,��,FO�� ������ 0 iterator  �  �     ��� 0 	_contents  � 0 	make_with  � 
))�,k+ � ��� ����
� .ascrcmnt****      � ****�   ��     ������
�� 
ascr�� 0 dump  
�� .ascrcmnt****      � ****�� � )j+ j U� ����������� 0 dump  ��  ��   ������ 0 xlistdumper XListDumper�� 0 	dump_list   
��� �������������� 0 xlistdumper XListDumper  ��!����"#��
�� .ascrinit****      � ****! k     $$ �%% �����  ��  ��  " ������ 0 an_index  �� 0 do  # ��&�� 0 an_index  & �������'(���� 0 do  �� ��)�� )  ���� 0 an_item  ��  ' �������� 0 an_item  �� 
0 output  �� 0 	dump_data  ( ����������
�� 
utxt
�� 
pcls
�� 
scpt�� 0 dump  
�� 
tab �� 7b   kEc   Ob   �&E�O��,�  �j+ E�Y ��&E�O��%�%�� j�OL �� 0 map  
�� 
pnam�� 0 unshift  
�� 
ret �� 0 as_unicode_with  �� &��K S�O*�k+ E�O��)�,%�%k+ O��k+ 	� �������*+���� 	0 debug  ��  ��  * ������ 0 test Test�� 
0 a_list  + ������������.1������?
�� 
scpt�� 	0 setup  �� 0 load  �� 0 	make_with  �� 0 	delete_at  �� 0 list_ref  �� 0 assert_true  
�� .corecnte****       ****
�� 
rslt�� K)��/ *)k+ O*�k+ E�UO*��lvk+ E�O�kk+ O��j+ 	�kv �l+ O�j O��k �l+ � ��F����,-���� 0 open_helpbook  ��  ��  , ������ 0 msg  �� 	0 errno  - 	��P������.������
�� 
scpt
�� .earsffdralis        afdr�� 0 do  �� 0 msg  . ������
�� 
errn�� 	0 errno  ��  
�� .miscactvnull��� ��� null
�� 
ret 
�� .sysodisAaleR        TEXT�� - )��/ *)j k+ UW X  *j O��%�%j � ��d����/0��
�� .aevtoappnull  �   � ****��  ��  /  0 ���� 0 open_helpbook  �� *j+  ascr  ��ޭ