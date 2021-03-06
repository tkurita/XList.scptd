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
osax��        l     ��  ��      use XText : script "XText"     �   4 u s e   X T e x t   :   s c r i p t   " X T e x t "     !   l     ��������  ��  ��   !  " # " l      �� $ %��   $
8
2!@references
Home page || http://www.script-factory.net/XModules/XList/en/index.html
ChangeLog || http://www.script-factory.net/XModules/XList/changelog.html
Repository || https://github.com/tkurita/XList.scptd

@title XList Reference
* Version : 1.8
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
use XList : script "XList"on run	(*== Iterator ==*)	set an_iterator to XList's make_with({"a", "b", "c"})		repeat while an_iterator's has_next()		set an_item to next() of an_iterator		log an_item	end repeat		(*== Queue ==*)	set a_queue to make XList	a_queue's unshift("a")	a_queue's unshift("b")	log a_queue's shift() -- result : "b"	log a_queue's shift() -- result : "a"		(*== Stack ==*)	set a_stack to make XList	a_queue's push("a")	a_queue's push("b")	log a_queue's pop() -- result : "b"	log a_queue's pop() -- result : "a"		(*== Accessing list elements ==*)	set a_list to XList's make_with({"a", "b", "c"})	log a_list's item_counts() -- 3	log a_list's item_at(2) -- "b"	log a_list's has_item("b") --true	log a_list's has_item("d") --false	log a_list's index_of("b") -- 2	log a_list's index_of("d") -- 0	log a_list's delete_at(2) -- "b"	log (set_item of a_list for "e" at 2) -- "e"	log a_list's as_list() -- {"a", "e"}		(*== Conversion to Text ==*)	log a_list's as_text_with(", ") -- "a, e"		(*== Looping with block script ==*)	set before_c to missing value	script block1		on do(x)			if (x is "c") then				return false			else				set before_c to x				return true			end if		end do	end script	an_iterator's each(block1)	log before_c -- result : b		script block2		on do(x, sender)			if x is "b" then				tell sender					set_item_at("d", current_index()) -- change an item of a list				end tell			end if			return true		end do	end script	an_iterator's enumerate(block2)	log an_iterator's all_items() -- result : {"a", "d", "c"}		(*== Generating new list using �gmap�h ==*)	script block3		on do(x)			return x & "a"		end do	end script	log an_iterator's map(block3)	(*[XListInstance]	1	aa	2	da	3	ca*)end run
    % � & &` ! @ r e f e r e n c e s 
 H o m e   p a g e   | |   h t t p : / / w w w . s c r i p t - f a c t o r y . n e t / X M o d u l e s / X L i s t / e n / i n d e x . h t m l 
 C h a n g e L o g   | |   h t t p : / / w w w . s c r i p t - f a c t o r y . n e t / X M o d u l e s / X L i s t / c h a n g e l o g . h t m l 
 R e p o s i t o r y   | |   h t t p s : / / g i t h u b . c o m / t k u r i t a / X L i s t . s c p t d 
 
 @ t i t l e   X L i s t   R e f e r e n c e 
 *   V e r s i o n   :   1 . 8 
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
 u s e   X L i s t   :   s c r i p t   " X L i s t "   o n   r u n  	 ( * = =   I t e r a t o r   = = * )  	 s e t   a n _ i t e r a t o r   t o   X L i s t ' s   m a k e _ w i t h ( { " a " ,   " b " ,   " c " } )  	  	 r e p e a t   w h i l e   a n _ i t e r a t o r ' s   h a s _ n e x t ( )  	 	 s e t   a n _ i t e m   t o   n e x t ( )   o f   a n _ i t e r a t o r  	 	 l o g   a n _ i t e m  	 e n d   r e p e a t  	  	 ( * = =   Q u e u e   = = * )  	 s e t   a _ q u e u e   t o   m a k e   X L i s t  	 a _ q u e u e ' s   u n s h i f t ( " a " )  	 a _ q u e u e ' s   u n s h i f t ( " b " )  	 l o g   a _ q u e u e ' s   s h i f t ( )   - -   r e s u l t   :   " b "  	 l o g   a _ q u e u e ' s   s h i f t ( )   - -   r e s u l t   :   " a "  	  	 ( * = =   S t a c k   = = * )  	 s e t   a _ s t a c k   t o   m a k e   X L i s t  	 a _ q u e u e ' s   p u s h ( " a " )  	 a _ q u e u e ' s   p u s h ( " b " )  	 l o g   a _ q u e u e ' s   p o p ( )   - -   r e s u l t   :   " b "  	 l o g   a _ q u e u e ' s   p o p ( )   - -   r e s u l t   :   " a "  	  	 ( * = =   A c c e s s i n g   l i s t   e l e m e n t s   = = * )  	 s e t   a _ l i s t   t o   X L i s t ' s   m a k e _ w i t h ( { " a " ,   " b " ,   " c " } )  	 l o g   a _ l i s t ' s   i t e m _ c o u n t s ( )   - -   3  	 l o g   a _ l i s t ' s   i t e m _ a t ( 2 )   - -   " b "  	 l o g   a _ l i s t ' s   h a s _ i t e m ( " b " )   - - t r u e  	 l o g   a _ l i s t ' s   h a s _ i t e m ( " d " )   - - f a l s e  	 l o g   a _ l i s t ' s   i n d e x _ o f ( " b " )   - -   2  	 l o g   a _ l i s t ' s   i n d e x _ o f ( " d " )   - -   0  	 l o g   a _ l i s t ' s   d e l e t e _ a t ( 2 )   - -   " b "  	 l o g   ( s e t _ i t e m   o f   a _ l i s t   f o r   " e "   a t   2 )   - -   " e "  	 l o g   a _ l i s t ' s   a s _ l i s t ( )   - -   { " a " ,   " e " }  	  	 ( * = =   C o n v e r s i o n   t o   T e x t   = = * )  	 l o g   a _ l i s t ' s   a s _ t e x t _ w i t h ( " ,   " )   - -   " a ,   e "  	  	 ( * = =   L o o p i n g   w i t h   b l o c k   s c r i p t   = = * )  	 s e t   b e f o r e _ c   t o   m i s s i n g   v a l u e  	 s c r i p t   b l o c k 1  	 	 o n   d o ( x )  	 	 	 i f   ( x   i s   " c " )   t h e n  	 	 	 	 r e t u r n   f a l s e  	 	 	 e l s e  	 	 	 	 s e t   b e f o r e _ c   t o   x  	 	 	 	 r e t u r n   t r u e  	 	 	 e n d   i f  	 	 e n d   d o  	 e n d   s c r i p t  	 a n _ i t e r a t o r ' s   e a c h ( b l o c k 1 )  	 l o g   b e f o r e _ c   - -   r e s u l t   :   b  	  	 s c r i p t   b l o c k 2  	 	 o n   d o ( x ,   s e n d e r )  	 	 	 i f   x   i s   " b "   t h e n  	 	 	 	 t e l l   s e n d e r  	 	 	 	 	 s e t _ i t e m _ a t ( " d " ,   c u r r e n t _ i n d e x ( ) )   - -   c h a n g e   a n   i t e m   o f   a   l i s t  	 	 	 	 e n d   t e l l  	 	 	 e n d   i f  	 	 	 r e t u r n   t r u e  	 	 e n d   d o  	 e n d   s c r i p t  	 a n _ i t e r a t o r ' s   e n u m e r a t e ( b l o c k 2 )  	 l o g   a n _ i t e r a t o r ' s   a l l _ i t e m s ( )   - -   r e s u l t   :   { " a " ,   " d " ,   " c " }  	  	 ( * = =   G e n e r a t i n g   n e w   l i s t   u s i n g    m a p    = = * )  	 s c r i p t   b l o c k 3  	 	 o n   d o ( x )  	 	 	 r e t u r n   x   &   " a "  	 	 e n d   d o  	 e n d   s c r i p t  	 l o g   a n _ i t e r a t o r ' s   m a p ( b l o c k 3 )  	 ( * [ X L i s t I n s t a n c e ]  	 1 	 a a  	 2 	 d a  	 3 	 c a * )  e n d   r u n 
 #  ' ( ' l     ��������  ��  ��   (  ) * ) l      �� + ,��   + ! !@group Constructor Method     , � - - 6 ! @ g r o u p   C o n s t r u c t o r   M e t h o d   *  . / . l     ��������  ��  ��   /  0 1 0 l      �� 2 3��   2 ` Z!@abstruct 
Meke an instance of empty XList.
@result script object : a new XList instance
    3 � 4 4 � ! @ a b s t r u c t   
 M e k e   a n   i n s t a n c e   o f   e m p t y   X L i s t . 
 @ r e s u l t   s c r i p t   o b j e c t   :   a   n e w   X L i s t   i n s t a n c e 
 1  5 6 5 i     7 8 7 I     ������
�� .corecrel****      � null��  ��   8 L      9 9 I     �� :���� 0 	make_with   :  ;�� ; J    ����  ��  ��   6  < = < l     ��������  ��  ��   =  > ? > l      �� @ A��   @ � �!@abstruct 
Meke an instance of XList with given an AppleScript's  list object.
@param a_list (list)
@result script object : a new XList instance
    A � B B$ ! @ a b s t r u c t   
 M e k e   a n   i n s t a n c e   o f   X L i s t   w i t h   g i v e n   a n   A p p l e S c r i p t ' s     l i s t   o b j e c t . 
 @ p a r a m   a _ l i s t   ( l i s t ) 
 @ r e s u l t   s c r i p t   o b j e c t   :   a   n e w   X L i s t   i n s t a n c e 
 ?  C D C i     E F E I      �� G���� 0 	make_with   G  H�� H o      ���� 
0 a_list  ��  ��   F k      I I  J K J r      L M L  f      M o      ���� 0 a_parent   K  N�� N h    �� O�� 0 xlistinstance XListInstance O k       P P  Q R Q j     �� S
�� 
pare S o     ���� 0 a_parent   R  T U T j   	 �� V�� 0 	_contents   V o   	 ���� 
0 a_list   U  W X W j    �� Y�� 0 _length   Y I   �� Z��
�� .corecnte****       **** Z o    ���� 
0 a_list  ��   X  [�� [ j    �� \�� 0 _n   \ m    ���� ��  ��   D  ] ^ ] l     ��������  ��  ��   ^  _ ` _ l      �� a b��   a � �!@abstruct
A synonym of ((<make_with>))
@description
Meke an instance of XList with given an AppleScript's list object.
@param a_list (list)
@result script object : a new XList instance
    b � c ct ! @ a b s t r u c t 
 A   s y n o n y m   o f   ( ( < m a k e _ w i t h > ) ) 
 @ d e s c r i p t i o n 
 M e k e   a n   i n s t a n c e   o f   X L i s t   w i t h   g i v e n   a n   A p p l e S c r i p t ' s   l i s t   o b j e c t . 
 @ p a r a m   a _ l i s t   ( l i s t ) 
 @ r e s u l t   s c r i p t   o b j e c t   :   a   n e w   X L i s t   i n s t a n c e 
 `  d e d i    ! f g f I      �� h���� 0 make_with_list   h  i�� i o      ���� 
0 a_list  ��  ��   g L      j j I     �� k���� 0 	make_with   k  l�� l o    ���� 
0 a_list  ��  ��   e  m n m l     ��������  ��  ��   n  o p o l      �� q r��   q � �!@abstruct
Meke an instance of XList with from a list splitting a text with a delimiter.
@param a_text (text)
@param delimiters (text or list of text)
@result script object : a new XList instance
    r � s s� ! @ a b s t r u c t 
 M e k e   a n   i n s t a n c e   o f   X L i s t   w i t h   f r o m   a   l i s t   s p l i t t i n g   a   t e x t   w i t h   a   d e l i m i t e r . 
 @ p a r a m   a _ t e x t   ( t e x t ) 
 @ p a r a m   d e l i m i t e r s   ( t e x t   o r   l i s t   o f   t e x t ) 
 @ r e s u l t   s c r i p t   o b j e c t   :   a   n e w   X L i s t   i n s t a n c e 
 p  t u t i   " % v w v I      �� x���� 0 make_with_text   x  y z y o      ���� 
0 a_text   z  {�� { o      ���� 0 
delimiters  ��  ��   w k      | |  } ~ } r       �  n     � � � 1    ��
�� 
txdl � 1     ��
�� 
ascr � o      ���� 0 	pre_delim   ~  � � � r     � � � o    ���� 0 
delimiters   � n      � � � 1    
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
0 a_list  ��  ��  ��   u  � � � l     ��������  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l      �� � ���   �	!@abstruct 
Meke an instance of XList with from a XText instance by splitting its contents with delimiters.
@param a_text (text)
@param delimiters (text or list of text) : delimiters to split contetns of XText instance.
@result script object : a new XList instance
    � � � � ! @ a b s t r u c t   
 M e k e   a n   i n s t a n c e   o f   X L i s t   w i t h   f r o m   a   X T e x t   i n s t a n c e   b y   s p l i t t i n g   i t s   c o n t e n t s   w i t h   d e l i m i t e r s . 
 @ p a r a m   a _ t e x t   ( t e x t ) 
 @ p a r a m   d e l i m i t e r s   ( t e x t   o r   l i s t   o f   t e x t )   :   d e l i m i t e r s   t o   s p l i t   c o n t e t n s   o f   X T e x t   i n s t a n c e . 
 @ r e s u l t   s c r i p t   o b j e c t   :   a   n e w   X L i s t   i n s t a n c e 
 �  � � � i   & ) � � � I      �� ����� 0 make_with_xtext   �  � � � o      ���� 
0 x_text   �  ��� � o      ���� 0 
delimiters  ��  ��   � L      � � I     �� ����� 0 	make_with   �  ��� � n    � � � I    �� ����� 0 as_list_with   �  ��� � o    ���� 0 
delimiters  ��  ��   � o    ���� 
0 x_text  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l      �� � ���   � $ !@group  Methods for Iterator     � � � � < ! @ g r o u p     M e t h o d s   f o r   I t e r a t o r   �  � � � l     ��������  ��  ��   �  � � � l      �� � ���   � � �!@abstruct
return an item in the list next to the item obtained by previous ((<next>))()
@description
When the last item have been already returned, error number 1351 is raised.
@result anything
    � � � �� ! @ a b s t r u c t 
 r e t u r n   a n   i t e m   i n   t h e   l i s t   n e x t   t o   t h e   i t e m   o b t a i n e d   b y   p r e v i o u s   ( ( < n e x t > ) ) ( ) 
 @ d e s c r i p t i o n 
 W h e n   t h e   l a s t   i t e m   h a v e   b e e n   a l r e a d y   r e t u r n e d ,   e r r o r   n u m b e r   1 3 5 1   i s   r a i s e d . 
 @ r e s u l t   a n y t h i n g 
 �  � � � i   * - � � � I      �������� 0 next  ��  ��   � k     < � �  � � � Q     / � � � � r     � � � n     � � � 4    �� �
�� 
cobj � l    ����� � n    � � � o    
���� 0 _n   �  f    ��  ��   � n    � � � o    �� 0 	_contents   �  f     � o      �~�~ 0 an_item   � R      �} � �
�} .ascrerr ****      � **** � o      �|�| 0 msg   � �{ ��z
�{ 
errn � d       � � m      �y�y��z   � Z    / � ��x � � ?     � � � n    � � � o    �w�w 0 _n   �  f     � n    � � � o    �v�v 0 _length   �  f     � R     &�u � �
�u .ascrerr ****      � **** � m   $ % � � � � �  N o   n e x t   i t e m . � �t ��s
�t 
errn � m   " #�r�rG�s  �x   � R   ) /�q � �
�q .ascrerr ****      � **** � o   - .�p�p 0 msg   � �o ��n
�o 
errn � m   + ,�m�m�@�n   �  � � � l  0 0�l�k�j�l  �k  �j   �  � � � r   0 9 � � � [   0 5 � � � l  0 3 ��i�h � n  0 3 � � � o   1 3�g�g 0 _n   �  f   0 1�i  �h   � m   3 4�f�f  � n      � � � o   6 8�e�e 0 _n   �  f   5 6 �  ��d � L   : < � � o   : ;�c�c 0 an_item  �d   �  � � � l     �b�a�`�b  �a  �`   �  � � � i   . 1 � � � I      �_�^�]�_ 0 	next_item  �^  �]   � L      � � I     �\�[�Z�\ 0 next  �[  �Z   �  � � � l     �Y�X�W�Y  �X  �W   �    l      �V�V   � �!@abstruct
check whether ((<next>))() can return a next item or not
@description 
false should be returned, when the last item have been already returned with ((<next>))().
@result boolean
    �z ! @ a b s t r u c t 
 c h e c k   w h e t h e r   ( ( < n e x t > ) ) ( )   c a n   r e t u r n   a   n e x t   i t e m   o r   n o t 
 @ d e s c r i p t i o n   
 f a l s e   s h o u l d   b e   r e t u r n e d ,   w h e n   t h e   l a s t   i t e m   h a v e   b e e n   a l r e a d y   r e t u r n e d   w i t h   ( ( < n e x t > ) ) ( ) . 
 @ r e s u l t   b o o l e a n 
  i   2 5 I      �U�T�S�U 0 has_next  �T  �S   L     		 B    

 n     o    �R�R 0 _n    f      n    o    �Q�Q 0 _length    f      l     �P�O�N�P  �O  �N    l      �M�M   Z T!@abstruct
The item obtained by previous ((<next>))() is returned.
@result anything
    � � ! @ a b s t r u c t 
 T h e   i t e m   o b t a i n e d   b y   p r e v i o u s   ( ( < n e x t > ) ) ( )   i s   r e t u r n e d . 
 @ r e s u l t   a n y t h i n g 
  i   6 9 I      �L�K�J�L 0 current_item  �K  �J   L      n      4    
�I
�I 
cobj l   	�H�G \    	 !  l   "�F�E" n   #$# o    �D�D 0 _n  $  f    �F  �E  ! m    �C�C �H  �G   n    %&% o    �B�B 0 	_contents  &  f      '(' l     �A�@�?�A  �@  �?  ( )*) l      �>+,�>  + k e!@abstruct
An index number of an item obtained by previous ((<next>))() is returned.
@result integer
   , �-- � ! @ a b s t r u c t 
 A n   i n d e x   n u m b e r   o f   a n   i t e m   o b t a i n e d   b y   p r e v i o u s   ( ( < n e x t > ) ) ( )   i s   r e t u r n e d . 
 @ r e s u l t   i n t e g e r 
* ./. i   : =010 I      �=�<�;�= 0 current_index  �<  �;  1 L     22 \     343 l    5�:�95 n    676 o    �8�8 0 _n  7  f     �:  �9  4 m    �7�7 / 898 l     �6�5�4�6  �5  �4  9 :;: l      �3<=�3  < v p!@abstruct
Decrements the index of the item obtained by ((<next>))(). i.e. same item can be obtained once more.
   = �>> � ! @ a b s t r u c t 
 D e c r e m e n t s   t h e   i n d e x   o f   t h e   i t e m   o b t a i n e d   b y   ( ( < n e x t > ) ) ( ) .   i . e .   s a m e   i t e m   c a n   b e   o b t a i n e d   o n c e   m o r e . 
; ?@? i   > AABA I      �2�1�0�2 0 decrement_index  �1  �0  B Z     CD�/�.C ?     EFE n    GHG o    �-�- 0 _n  H  f     F m    �,�, D r    IJI \    KLK l   M�+�*M n   NON o   	 �)�) 0 _n  O  f    	�+  �*  L m    �(�( J n     PQP o    �'�' 0 _n  Q  f    �/  �.  @ RSR l     �&�%�$�&  �%  �$  S TUT l      �#VW�#  V _ Y!@abstruct
Increments the index of the item obtained by ((<next>))(). i.e. skip an item.
   W �XX � ! @ a b s t r u c t 
 I n c r e m e n t s   t h e   i n d e x   o f   t h e   i t e m   o b t a i n e d   b y   ( ( < n e x t > ) ) ( ) .   i . e .   s k i p   a n   i t e m . 
U YZY i   B E[\[ I      �"�!� �" 0 increment_index  �!  �   \ Z     ]^��] ?     _`_ n    aba o    �� 0 _n  b  f     ` m    �� ^ r    cdc [    efe l   g��g n   hih o   	 �� 0 _n  i  f    	�  �  f m    �� d n     jkj o    �� 0 _n  k  f    �  �  Z lml l     ����  �  �  m non l      �pq�  p G A!@abstruct
Make ((<next>))() return items form first.
@result me
   q �rr � ! @ a b s t r u c t 
 M a k e   ( ( < n e x t > ) ) ( )   r e t u r n   i t e m s   f o r m   f i r s t . 
 @ r e s u l t   m e 
o sts i   F Iuvu I      ���� 	0 reset  �  �  v k     ww xyx r     z{z m     �� { n     |}| o    �� 0 _n  }  f    y ~�~ L      f    �  t ��� l     ���
�  �  �
  � ��� l      �	���	  �  !@group Stack and Quene    � ��� 0 ! @ g r o u p   S t a c k   a n d   Q u e n e  � ��� l     ����  �  �  � ��� l      ����  � t n!@abstruct
Append an item at the end of the list.
@param an_item(anything) : 
an item to append into the list
   � ��� � ! @ a b s t r u c t 
 A p p e n d   a n   i t e m   a t   t h e   e n d   o f   t h e   l i s t . 
 @ p a r a m   a n _ i t e m ( a n y t h i n g )   :   
 a n   i t e m   t o   a p p e n d   i n t o   t h e   l i s t 
� ��� i   J M��� I      ���� 0 push  � ��� o      �� 0 an_item  �  �  � k     �� ��� r     ��� o     � �  0 an_item  � n      ���  ;    � n   ��� o    ���� 0 	_contents  �  f    � ���� r    ��� [    ��� l   
������ n   
��� o    
���� 0 _length  �  f    ��  ��  � m   
 ���� � n     ��� o    ���� 0 _length  �  f    ��  � ��� l     ��������  ��  ��  � ��� l      ������  � u o!@abstruct
Obtain last item in the stored list, and remove the item.
@result anything : 
last item in the list
   � ��� � ! @ a b s t r u c t 
 O b t a i n   l a s t   i t e m   i n   t h e   s t o r e d   l i s t ,   a n d   r e m o v e   t h e   i t e m . 
 @ r e s u l t   a n y t h i n g   :   
 l a s t   i t e m   i n   t h e   l i s t 
� ��� i   N Q��� I      �������� 0 pop  ��  ��  � k     E�� ��� Q     ���� r    ��� n    	��� 4   	���
�� 
cobj� m    ������� n   ��� o    ���� 0 	_contents  �  f    � o      ���� 0 a_result  � R      ������
�� .ascrerr ****      � ****��  ��  � L    �� m    ��
�� 
msng� ��� l   ��������  ��  ��  � ��� Q    8���� r    *��� n    &��� 7   &����
�� 
cobj� m     "���� � m   # %������� n   ��� o    ���� 0 	_contents  �  f    � n     ��� o   ' )���� 0 	_contents  �  f   & '� R      ������
�� .ascrerr ****      � ****��  ��  � r   2 8��� J   2 4����  � n     ��� o   5 7���� 0 	_contents  �  f   4 5� ��� l  9 9��������  ��  ��  � ��� r   9 B��� \   9 >��� l  9 <������ n  9 <��� o   : <���� 0 _length  �  f   9 :��  ��  � m   < =���� � n     ��� o   ? A���� 0 _length  �  f   > ?� ���� L   C E�� o   C D���� 0 a_result  ��  � ��� l     ��������  ��  ��  � ��� l      ������  � { u!@abstruct
Append an item at the beginning of the list.
@param an_item(anything) :
an item to be appended
@result me
   � ��� � ! @ a b s t r u c t 
 A p p e n d   a n   i t e m   a t   t h e   b e g i n n i n g   o f   t h e   l i s t . 
 @ p a r a m   a n _ i t e m ( a n y t h i n g )   : 
 a n   i t e m   t o   b e   a p p e n d e d 
 @ r e s u l t   m e 
� ��� i   R U��� I      ������� 0 unshift  � ���� o      ���� 0 an_item  ��  ��  � k     �� ��� r     ��� o     ���� 0 an_item  � n      ���  :    � n   ��� o    ���� 0 	_contents  �  f    � ��� I    �������� 0 increment_index  ��  ��  � ��� r    ��� [       l   ���� n    o    ���� 0 _length    f    ��  ��   m    ���� � n      o    ���� 0 _length    f    � �� L      f    ��  � 	
	 l     ��������  ��  ��  
  l      ����   i c!@abstruct
Obtain first item in the list and remove it.
@result anything : 
first item in the list
    � � ! @ a b s t r u c t 
 O b t a i n   f i r s t   i t e m   i n   t h e   l i s t   a n d   r e m o v e   i t . 
 @ r e s u l t   a n y t h i n g   :   
 f i r s t   i t e m   i n   t h e   l i s t 
  i   V Y I      �������� 	0 shift  ��  ��   k     2  Q      r     n    	 4   	��
�� 
cobj m    ����  n     o    ���� 0 	_contents     f     o      ���� 0 a_result   R      ������
�� .ascrerr ****      � ****��  ��   L    !! m    ��
�� 
msng "#" l   ��������  ��  ��  # $%$ r    &'& n    ()( 1    ��
�� 
rest) n   *+* o    ���� 0 	_contents  +  f    ' n     ,-, o    ���� 0 	_contents  -  f    % ./. I     %�������� 0 decrement_index  ��  ��  / 010 r   & /232 \   & +454 l  & )6����6 n  & )787 o   ' )���� 0 _length  8  f   & '��  ��  5 m   ) *���� 3 n     9:9 o   , .���� 0 _length  :  f   + ,1 ;��; L   0 2<< o   0 1���� 0 a_result  ��   =>= l     ��������  ��  ��  > ?@? l     ��������  ��  ��  @ ABA l      ��CD��  C # !@group Accessing List Items    D �EE : ! @ g r o u p   A c c e s s i n g   L i s t   I t e m s  B FGF l     ��������  ��  ��  G HIH l      ��JK��  J ; 5!@abstruct
Return number of elements
@result integer
   K �LL j ! @ a b s t r u c t 
 R e t u r n   n u m b e r   o f   e l e m e n t s 
 @ r e s u l t   i n t e g e r 
I MNM i   Z ]OPO I      �������� 0 count_items  ��  ��  P L     QQ I    ��R��
�� .corecnte****       ****R n    STS o    ���� 0 	_contents  T  f     ��  N UVU l     ��������  ��  ��  V WXW i   ^ aYZY I      �������� 0 item_counts  ��  ��  Z L     [[ I    ��\��
�� .corecnte****       ****\ n    ]^] o    ���� 0 	_contents  ^  f     ��  X _`_ l     ��������  ��  ��  ` aba i   b ecdc I     ������
�� .corecnte****       ****��  ��  d L     ee I    ��f�
�� .corecnte****       ****f n    ghg o    �~�~ 0 	_contents  h  f     �  b iji l     �}�|�{�}  �|  �{  j klk l      �zmn�z  m � �!@abstruct
Delete an item specified with an index number.
@param indexes(integer or list of interger) :
an index number or list of indexes of items to delete
@result list : 
a list of deleted items form the XList contents
   n �oo� ! @ a b s t r u c t 
 D e l e t e   a n   i t e m   s p e c i f i e d   w i t h   a n   i n d e x   n u m b e r . 
 @ p a r a m   i n d e x e s ( i n t e g e r   o r   l i s t   o f   i n t e r g e r )   : 
 a n   i n d e x   n u m b e r   o r   l i s t   o f   i n d e x e s   o f   i t e m s   t o   d e l e t e 
 @ r e s u l t   l i s t   :   
 a   l i s t   o f   d e l e t e d   i t e m s   f o r m   t h e   X L i s t   c o n t e n t s 
l pqp i   f irsr I      �yt�x�y 0 	delete_at  t u�wu o      �v�v 0 indexes  �w  �x  s k     �vv wxw r     yzy c     {|{ o     �u�u 0 indexes  | m    �t
�t 
listz o      �s�s 0 indexes  x }~} r    
� J    �r�r  � o      �q�q 
0 a_list  ~ ��� l   �p�o�n�p  �o  �n  � ��� Y    ���m���l� k    ��� ��� r    ��� n    ��� 4    �k�
�k 
cobj� o    �j�j 0 n  � o    �i�i 0 indexes  � o      �h�h 0 an_index  � ��� l   �g���g  �  log "start delete_item"   � ��� . l o g   " s t a r t   d e l e t e _ i t e m "� ��� r    (��� n    %��� 4   " %�f�
�f 
cobj� o   # $�e�e 0 an_index  � n   "��� o     "�d�d 0 	_contents  �  f     � n      ���  ;   & '� o   % &�c�c 
0 a_list  � ��� Z   ) }����� =  ) ,��� o   ) *�b�b 0 an_index  � m   * +�a�a � r   / 8��� n   / 4��� 1   2 4�`
�` 
rest� n  / 2��� o   0 2�_�_ 0 	_contents  �  f   / 0� n     ��� o   5 7�^�^ 0 	_contents  �  f   4 5� ��� E  ; C��� J   ; A�� ��� n  ; >��� o   < >�]�] 0 _length  �  f   ; <� ��\� m   > ?�[�[���\  � o   A B�Z�Z 0 an_index  � ��Y� r   F W��� n   F S��� 7  I S�X��
�X 
cobj� m   M O�W�W � m   P R�V�V��� n  F I��� o   G I�U�U 0 	_contents  �  f   F G� n     ��� o   T V�T�T 0 	_contents  �  f   S T�Y  � r   Z }��� b   Z y��� l  Z i��S�R� n   Z i��� 7  ] i�Q��
�Q 
cobj� m   a c�P�P � l  d h��O�N� \   d h��� o   e f�M�M 0 an_index  � m   f g�L�L �O  �N  � n  Z ]��� o   [ ]�K�K 0 	_contents  �  f   Z [�S  �R  � l  i x��J�I� n   i x��� 7  l x�H��
�H 
cobj� l  p t��G�F� [   p t��� o   q r�E�E 0 an_index  � m   r s�D�D �G  �F  � m   u w�C�C��� n  i l��� o   j l�B�B 0 	_contents  �  f   i j�J  �I  � n     ��� o   z |�A�A 0 	_contents  �  f   y z� ��� l  ~ ~�@�?�>�@  �?  �>  � ��� Z   ~ ����=�<� l  ~ ���;�:� ?   ~ ���� n  ~ ���� o    ��9�9 0 _n  �  f   ~ � o   � ��8�8 0 an_index  �;  �:  � r   � ���� [   � ���� l  � ���7�6� n  � ���� o   � ��5�5 0 _n  �  f   � ��7  �6  � m   � ��4�4 � n     ��� o   � ��3�3 0 _n  �  f   � ��=  �<  � ��� l  � ��2�1�0�2  �1  �0  � ��/� r   � ���� \   � ���� l  � ���.�-� n  � ���� o   � ��,�, 0 _length  �  f   � ��.  �-  � m   � ��+�+ � n     ��� o   � ��*�* 0 _length  �  f   � ��/  �m 0 n  � m    �)�) � n    � � 1    �(
�( 
leng  o    �'�' 0 indexes  �l  �  l  � ��&�&    log "end delete_item"    � * l o g   " e n d   d e l e t e _ i t e m " �% L   � � o   � ��$�$ 
0 a_list  �%  q 	 l     �#�"�!�#  �"  �!  	 

 l      � �   mg!@abstruct
Obtain an item specified with an index number. When a list of indexes is passed as an argument, multiple items will be obtained.
@param an_index(integer or list of integer) : 
an index number or a list of indexes of the items to obtain
@result anything : 
Return an_index th item. error number -1728 will be rased when an item can not be obtained.
    �� ! @ a b s t r u c t 
 O b t a i n   a n   i t e m   s p e c i f i e d   w i t h   a n   i n d e x   n u m b e r .   W h e n   a   l i s t   o f   i n d e x e s   i s   p a s s e d   a s   a n   a r g u m e n t ,   m u l t i p l e   i t e m s   w i l l   b e   o b t a i n e d . 
 @ p a r a m   a n _ i n d e x ( i n t e g e r   o r   l i s t   o f   i n t e g e r )   :   
 a n   i n d e x   n u m b e r   o r   a   l i s t   o f   i n d e x e s   o f   t h e   i t e m s   t o   o b t a i n 
 @ r e s u l t   a n y t h i n g   :   
 R e t u r n   a n _ i n d e x   t h   i t e m .   e r r o r   n u m b e r   - 1 7 2 8   w i l l   b e   r a s e d   w h e n   a n   i t e m   c a n   n o t   b e   o b t a i n e d . 
  i   j m I      ��� 0 item_at   � o      �� 0 an_index  �  �   k     B  Z     �� >     n      m    �
� 
pcls o     �� 0 an_index   m    �
� 
list L     n      4    �!
� 
cobj! o    �� 0 an_index    n   "#" o   	 �� 0 	_contents  #  f    	�  �   $%$ l   ����  �  �  % &'& r    ()( J    ��  ) o      �� 
0 a_list  ' *+* r    ",-, I     �.�� 0 	make_with  . /�/ o    �� 0 an_index  �  �  - o      �
�
 0 
index_list  + 010 V   # ?232 r   - :454 n   - 7676 4   0 7�	8
�	 
cobj8 l  1 69��9 n  1 6:;: I   2 6���� 0 next  �  �  ; o   1 2�� 0 	inde_list  �  �  7 n  - 0<=< o   . 0�� 0 	_contents  =  f   - .5 n      >?>  ;   8 9? o   7 8�� 
0 a_list  3 n  ' ,@A@ I   ( ,� �����  0 has_next  ��  ��  A o   ' (���� 0 
index_list  1 B��B L   @ BCC o   @ A���� 
0 a_list  ��   DED l     ��������  ��  ��  E FGF l      ��HI��  H � �!@abstruct
Obtain items between two indexes.
@param s_index(integer) : 
the first index number
@param e_index(integer) : 
the last index number
@result XList : 
An XList instance of elements from s_index to e_index
   I �JJ� ! @ a b s t r u c t 
 O b t a i n   i t e m s   b e t w e e n   t w o   i n d e x e s . 
 @ p a r a m   s _ i n d e x ( i n t e g e r )   :   
 t h e   f i r s t   i n d e x   n u m b e r 
 @ p a r a m   e _ i n d e x ( i n t e g e r )   :   
 t h e   l a s t   i n d e x   n u m b e r 
 @ r e s u l t   X L i s t   :   
 A n   X L i s t   i n s t a n c e   o f   e l e m e n t s   f r o m   s _ i n d e x   t o   e _ i n d e x 
G KLK i   n qMNM I      ��O���� 0 items_in_range  O PQP o      ���� 0 s_index  Q R��R o      ���� 0 e_index  ��  ��  N L     SS I     ��T���� 0 	make_with  T U��U n    VWV 7   ��XY
�� 
cobjX o    
���� 0 s_index  Y o    ���� 0 e_index  W n   Z[Z o    ���� 0 	_contents  [  f    ��  ��  L \]\ l     ��������  ��  ��  ] ^_^ l      ��`a��  ` � �!@abstruct
set an item at a specified index.
@description
A synonym of ((<set_item_at>)).
@param an_index(integer) : 
an index number of the item to set
   a �bb2 ! @ a b s t r u c t 
 s e t   a n   i t e m   a t   a   s p e c i f i e d   i n d e x . 
 @ d e s c r i p t i o n 
 A   s y n o n y m   o f   ( ( < s e t _ i t e m _ a t > ) ) . 
 @ p a r a m   a n _ i n d e x ( i n t e g e r )   :   
 a n   i n d e x   n u m b e r   o f   t h e   i t e m   t o   s e t 
_ cdc i   r uefe I      ����g�� 0 set_item  ��  g ��hi
�� 
for h o      ���� 0 a_value  i ��j��
�� 
at  j o      ���� 0 an_index  ��  f r     klk o     ���� 0 a_value  l n      mnm 4    ��o
�� 
cobjo o    ���� 0 an_index  n n   pqp o    ���� 0 	_contents  q  f    d rsr l     ��������  ��  ��  s tut l      ��vw��  v � �!@abstruct
set an item at a specified index.
@description
A synonym of ((<set_item>)).
@param an_index(integer) : 
an index number of the item to set
   w �xx, ! @ a b s t r u c t 
 s e t   a n   i t e m   a t   a   s p e c i f i e d   i n d e x . 
 @ d e s c r i p t i o n 
 A   s y n o n y m   o f   ( ( < s e t _ i t e m > ) ) . 
 @ p a r a m   a n _ i n d e x ( i n t e g e r )   :   
 a n   i n d e x   n u m b e r   o f   t h e   i t e m   t o   s e t 
u yzy i   v y{|{ I      ��}���� 0 set_item_at  } ~~ o      ���� 0 a_value   ���� o      ���� 0 an_index  ��  ��  | r     ��� o     ���� 0 a_value  � n      ��� 4    ���
�� 
cobj� o    ���� 0 an_index  � n   ��� o    ���� 0 	_contents  �  f    z ��� l     ��������  ��  ��  � ��� l      ������  � � �!@abstruct
Exchange items specified with indexes
@param index1(integer) : 
first index of an element to exchange
@param index2 (integer) : 
second index of an element to exchange
   � ���f ! @ a b s t r u c t 
 E x c h a n g e   i t e m s   s p e c i f i e d   w i t h   i n d e x e s 
 @ p a r a m   i n d e x 1 ( i n t e g e r )   :   
 f i r s t   i n d e x   o f   a n   e l e m e n t   t o   e x c h a n g e 
 @ p a r a m   i n d e x 2   ( i n t e g e r )   :   
 s e c o n d   i n d e x   o f   a n   e l e m e n t   t o   e x c h a n g e 
� ��� i   z }��� I      ������� 0 exchange_items  � ��� o      ���� 
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
0 index2  � n   ��� o    ���� 0 	_contents  �  f    ��  � ��� l     ��������  ��  ��  � ��� l      ������  � � �!@abstruct
Check whether the object "an_item" is included in the XList instance or not.
@param an_item (boolean)
@result anything : 
if an_item is in the XList instance, ture will be returned.
   � ���� ! @ a b s t r u c t 
 C h e c k   w h e t h e r   t h e   o b j e c t   " a n _ i t e m "   i s   i n c l u d e d   i n   t h e   X L i s t   i n s t a n c e   o r   n o t . 
 @ p a r a m   a n _ i t e m   ( b o o l e a n ) 
 @ r e s u l t   a n y t h i n g   :   
 i f   a n _ i t e m   i s   i n   t h e   X L i s t   i n s t a n c e ,   t u r e   w i l l   b e   r e t u r n e d . 
� ��� i   ~ ���� I      ������� 0 has_item  � ���� o      ���� 0 an_item  ��  ��  � L     �� E    ��� n    ��� o    ���� 0 	_contents  �  f     � o    ���� 0 an_item  � ��� l     ��������  ��  ��  � ��� l      ������  � � �!@abstruct
Obtain an index number of the object �gan_item�h in the XList instance.
@param an_item (anything)
@result integer : 
An index number of �gan_item�h.
If �gan_item�h is not in the target, 0 will be returned.
   � ���� ! @ a b s t r u c t 
 O b t a i n   a n   i n d e x   n u m b e r   o f   t h e   o b j e c t    a n _ i t e m    i n   t h e   X L i s t   i n s t a n c e . 
 @ p a r a m   a n _ i t e m   ( a n y t h i n g ) 
 @ r e s u l t   i n t e g e r   :   
 A n   i n d e x   n u m b e r   o f    a n _ i t e m  . 
 I f    a n _ i t e m    i s   n o t   i n   t h e   t a r g e t ,   0   w i l l   b e   r e t u r n e d . 
� ��� i   � ���� I      ������� 0 index_of  � ���� o      ���� 0 an_item  ��  ��  � k     >�� ��� Z     ������� H     �� I     ������� 0 has_item  � ���� o    ���� 0 an_item  ��  ��  � L   
 �� m   
 ����  ��  ��  � ��� l   ��������  ��  ��  � ��� r    ��� m    ����  � o      ���� 0 an_index  � ��� Y    ;�������� Z   " 6������� =  " *��� n   " (��� 4   % (���
�� 
cobj� o   & '���� 0 n  � n  " %��� o   # %���� 0 	_contents  �  f   " #� o   ( )���� 0 an_item  � k   - 2�� ��� r   - 0��� o   - .���� 0 n  � o      ���� 0 an_index  � ����  S   1 2��  ��  ��  �� 0 n  � m    ���� � n   ��� o    ���� 0 _length  �  f    ��  � ��� l  < <��������  ��  ��  � ���� L   < >�� o   < =���� 0 an_index  ��  � � � l     ��������  ��  ��     l      ����   = 7!@abstruct
return a copy of stored list.
@result list 
    � n ! @ a b s t r u c t 
 r e t u r n   a   c o p y   o f   s t o r e d   l i s t . 
 @ r e s u l t   l i s t   
  i   � �	 I      �������� 0 	all_items  ��  ��  	 k     	

  s      n     o    �� 0 	_contents    f      o      �~�~ 
0 a_list   �} L    	 o    �|�| 
0 a_list  �}    l     �{�z�y�{  �z  �y    l     �x�w�v�x  �w  �v    l      �u�u   � �!@abstruct
Return the stored list.
@description
Changing elements in retuend list means changing contents of the XList instance.
When you use this mehtod, you should not change the contents of retunrend list.
@result list 
    �� ! @ a b s t r u c t 
 R e t u r n   t h e   s t o r e d   l i s t . 
 @ d e s c r i p t i o n 
 C h a n g i n g   e l e m e n t s   i n   r e t u e n d   l i s t   m e a n s   c h a n g i n g   c o n t e n t s   o f   t h e   X L i s t   i n s t a n c e . 
 W h e n   y o u   u s e   t h i s   m e h t o d ,   y o u   s h o u l d   n o t   c h a n g e   t h e   c o n t e n t s   o f   r e t u n r e n d   l i s t . 
 @ r e s u l t   l i s t   
  i   � � I      �t�s�r�t 0 as_list  �s  �r   L        n    !"! o    �q�q 0 	_contents  "  f      #$# l     �p�o�n�p  �o  �n  $ %&% l      �m'(�m  ' � �!@abstruct
A synonym of ((<as_list>)).
@description
return the stored list. 

Changing elements in retuend list means changing contents of the XList instance.
It is recommended not to use this method.
@result list 
   ( �))� ! @ a b s t r u c t 
 A   s y n o n y m   o f   ( ( < a s _ l i s t > ) ) . 
 @ d e s c r i p t i o n 
 r e t u r n   t h e   s t o r e d   l i s t .   
 
 C h a n g i n g   e l e m e n t s   i n   r e t u e n d   l i s t   m e a n s   c h a n g i n g   c o n t e n t s   o f   t h e   X L i s t   i n s t a n c e . 
 I t   i s   r e c o m m e n d e d   n o t   t o   u s e   t h i s   m e t h o d . 
 @ r e s u l t   l i s t   
& *+* i   � �,-, I      �l�k�j�l 0 list_ref  �k  �j  - l    ./0. L     11 n    232 o    �i�i 0 	_contents  3  f     /   deprecated   0 �44    d e p r e c a t e d+ 565 l     �h�g�f�h  �g  �f  6 787 l     �e�d�c�e  �d  �c  8 9:9 l      �b;<�b  ; | v!@abstruct
Add each item contained passed list at end of the reciver's XList instance.
@param a_list(list)
@result me
   < �== � ! @ a b s t r u c t 
 A d d   e a c h   i t e m   c o n t a i n e d   p a s s e d   l i s t   a t   e n d   o f   t h e   r e c i v e r ' s   X L i s t   i n s t a n c e . 
 @ p a r a m   a _ l i s t ( l i s t ) 
 @ r e s u l t   m e 
: >?> i   � �@A@ I      �aB�`�a 0 add_from_list  B C�_C o      �^�^ 
0 a_list  �_  �`  A k     DD EFE r     	GHG b     IJI n    KLK o    �]�] 0 	_contents  L  f     J o    �\�\ 
0 a_list  H n     MNM o    �[�[ 0 	_contents  N  f    F OPO r   
 QRQ [   
 STS l  
 U�Z�YU n  
 VWV o    �X�X 0 _length  W  f   
 �Z  �Y  T l   X�W�VX I   �UY�T
�U .corecnte****       ****Y o    �S�S 
0 a_list  �T  �W  �V  R n     Z[Z o    �R�R 0 _length  [  f    P \�Q\ L    ]]  f    �Q  ? ^_^ l     �P�O�N�P  �O  �N  _ `a` l      �Mbc�M  b ! !@group Conversion to Text    c �dd 6 ! @ g r o u p   C o n v e r s i o n   t o   T e x t  a efe l     �L�K�J�L  �K  �J  f ghg l      �Iij�I  i � � deprecated
@abstruct
Join every elements with given a delimiter as ((<XText>))
@param a_delimiter (string or Unicode text): 
text to be used as a delimiter to join text list
@result script object : a ((<XText>)) instance
   j �kk�   d e p r e c a t e d 
 @ a b s t r u c t 
 J o i n   e v e r y   e l e m e n t s   w i t h   g i v e n   a   d e l i m i t e r   a s   ( ( < X T e x t > ) ) 
 @ p a r a m   a _ d e l i m i t e r   ( s t r i n g   o r   U n i c o d e   t e x t ) :   
 t e x t   t o   b e   u s e d   a s   a   d e l i m i t e r   t o   j o i n   t e x t   l i s t 
 @ r e s u l t   s c r i p t   o b j e c t   :   a   ( ( < X T e x t > ) )   i n s t a n c e 
h lml i   � �non I      �Hp�G�H 0 as_xtext_with  p q�Fq o      �E�E 0 a_delimiter  �F  �G  o k     rr sts p      uu �D�C�D 0 xtext XText�C  t vwv r     xyx I     �Bz�A�B 0 as_text_with  z {�@{ o    �?�? 0 a_delimiter  �@  �A  y o      �>�> 
0 a_text  w |�=| L   	 }} n  	 ~~ I   
 �<��;�< 0 	make_with  � ��:� o   
 �9�9 
0 a_text  �:  �;   o   	 
�8�8 0 xtext XText�=  m ��� l     �7�6�5�7  �6  �5  � ��� l     �4�3�2�4  �3  �2  � ��� l      �1���1  �!@abstruct
Join every elements by given a delimiter as text.
@description
AppleScrpt's text item delimiters is changed in this method and its value is not restored.
@param delimiters (text or list of text): 
text to be used as a delimiter to join text list
@result text
   � ��� ! @ a b s t r u c t 
 J o i n   e v e r y   e l e m e n t s   b y   g i v e n   a   d e l i m i t e r   a s   t e x t . 
 @ d e s c r i p t i o n 
 A p p l e S c r p t ' s   t e x t   i t e m   d e l i m i t e r s   i s   c h a n g e d   i n   t h i s   m e t h o d   a n d   i t s   v a l u e   i s   n o t   r e s t o r e d . 
 @ p a r a m   d e l i m i t e r s   ( t e x t   o r   l i s t   o f   t e x t ) :   
 t e x t   t o   b e   u s e d   a s   a   d e l i m i t e r   t o   j o i n   t e x t   l i s t 
 @ r e s u l t   t e x t 
� ��� i   � ���� I      �0��/�0 0 as_text_with  � ��.� o      �-�- 0 
delimiters  �.  �/  � k     �� ��� r     ��� o     �,�, 0 
delimiters  � 1    �+
�+ 
txdl� ��*� L    �� c    ��� n   	��� o    	�)�) 0 	_contents  �  f    � m   	 
�(
�( 
ctxt�*  � ��� l     �'�&�%�'  �&  �%  � ��� l      �$���$  � � �!@abstruct
A synonym of ((<as_text_with>)). 
@param delimiters (string or Unicode text): 
text to be used as a delimiter to join text list
@result text
   � ���0 ! @ a b s t r u c t 
 A   s y n o n y m   o f   ( ( < a s _ t e x t _ w i t h > ) ) .   
 @ p a r a m   d e l i m i t e r s   ( s t r i n g   o r   U n i c o d e   t e x t ) :   
 t e x t   t o   b e   u s e d   a s   a   d e l i m i t e r   t o   j o i n   t e x t   l i s t 
 @ r e s u l t   t e x t 
� ��� i   � ���� I      �#��"�# 0 as_unicode_with  � ��!� o      � �  0 
delimiters  �!  �"  � L     �� I     ���� 0 as_text_with  � ��� o    �� 0 
delimiters  �  �  � ��� l     ����  �  �  � ��� l      ����  � � �!@abstruct
Join every elements with given a delimiter as string
@param a_delimiter (text or list of text): 
text to be used as a delimiter to join text list
@result string
   � ���X ! @ a b s t r u c t 
 J o i n   e v e r y   e l e m e n t s   w i t h   g i v e n   a   d e l i m i t e r   a s   s t r i n g 
 @ p a r a m   a _ d e l i m i t e r   ( t e x t   o r   l i s t   o f   t e x t ) :   
 t e x t   t o   b e   u s e d   a s   a   d e l i m i t e r   t o   j o i n   t e x t   l i s t 
 @ r e s u l t   s t r i n g 
� ��� i   � ���� I      ���� 0 as_string_with  � ��� o      �� 0 
delimiters  �  �  � k     �� ��� r     ��� o     �� 0 
delimiters  � 1    �
� 
txdl� ��� L    �� c    ��� n   	��� o    	�� 0 	_contents  �  f    � m   	 
�
� 
TEXT�  � ��� l     ����  �  �  � ��� l      ����  ���@abstruct -- experimental
Return instance of given class object by passing a text joining the list.
@description
Equivalent to the following:

class_object's make_with(x_text's as_list_with(a_delimiters)
	
It is assumed XText is given to the class_object parameter.

@param a_delimiter (text) :  text to be used as a delimiter to join text list
@param class_object (script) :  a class to make an instance with accepting a text.
@result script : instance of class_object
   � ���� @ a b s t r u c t   - -   e x p e r i m e n t a l 
 R e t u r n   i n s t a n c e   o f   g i v e n   c l a s s   o b j e c t   b y   p a s s i n g   a   t e x t   j o i n i n g   t h e   l i s t . 
 @ d e s c r i p t i o n 
 E q u i v a l e n t   t o   t h e   f o l l o w i n g : 
 
 c l a s s _ o b j e c t ' s   m a k e _ w i t h ( x _ t e x t ' s   a s _ l i s t _ w i t h ( a _ d e l i m i t e r s ) 
 	 
 I t   i s   a s s u m e d   X T e x t   i s   g i v e n   t o   t h e   c l a s s _ o b j e c t   p a r a m e t e r . 
 
 @ p a r a m   a _ d e l i m i t e r   ( t e x t )   :     t e x t   t o   b e   u s e d   a s   a   d e l i m i t e r   t o   j o i n   t e x t   l i s t 
 @ p a r a m   c l a s s _ o b j e c t   ( s c r i p t )   :     a   c l a s s   t o   m a k e   a n   i n s t a n c e   w i t h   a c c e p t i n g   a   t e x t . 
 @ r e s u l t   s c r i p t   :   i n s t a n c e   o f   c l a s s _ o b j e c t 
� ��� i   � ���� I      �
��	�
 0 join_as  � ��� o      �� 0 
a_delimter  � ��� o      �� 0 class_object  �  �	  � L     �� n    ��� I    ���� 0 	make_with  � ��� I    ���� 0 as_text_with  � �� � o    ���� 0 	delimiter  �   �  �  �  � o     ���� 0 class_object  � ��� l     ��������  ��  ��  � ��� l      ������  � &  !@group Loop with Script Object    � ��� @ ! @ g r o u p   L o o p   w i t h   S c r i p t   O b j e c t  � ��� l     ��������  ��  ��  � ��� l      ������  ���!@abstruct
Repeat to call do handler of given script object with passing each item in the XList as an argument.
@description 
The parameter �gblock�h is a script object which have a do handler accepting only one argument. 
The do handler must return anything.
When the do handler return false, the process is stoped immediately.
@param
block (script object) : must have a do handler which require only argument. The do handler must return boolean.
@result me
   � ���� ! @ a b s t r u c t 
 R e p e a t   t o   c a l l   d o   h a n d l e r   o f   g i v e n   s c r i p t   o b j e c t   w i t h   p a s s i n g   e a c h   i t e m   i n   t h e   X L i s t   a s   a n   a r g u m e n t . 
 @ d e s c r i p t i o n   
 T h e   p a r a m e t e r    b l o c k    i s   a   s c r i p t   o b j e c t   w h i c h   h a v e   a   d o   h a n d l e r   a c c e p t i n g   o n l y   o n e   a r g u m e n t .   
 T h e   d o   h a n d l e r   m u s t   r e t u r n   a n y t h i n g . 
 W h e n   t h e   d o   h a n d l e r   r e t u r n   f a l s e ,   t h e   p r o c e s s   i s   s t o p e d   i m m e d i a t e l y . 
 @ p a r a m 
 b l o c k   ( s c r i p t   o b j e c t )   :   m u s t   h a v e   a   d o   h a n d l e r   w h i c h   r e q u i r e   o n l y   a r g u m e n t .   T h e   d o   h a n d l e r   m u s t   r e t u r n   b o o l e a n . 
 @ r e s u l t   m e 
� ��� i   � ���� I      ������� 0 each  � ���� o      ���� 	0 block  ��  ��  � k     ,�� ��� X     )����� Z    $������� =   ��� n   ��� I    ������� 0 do  � ���� n    ��� 1    ��
�� 
pcnt� o    ���� 0 an_item  ��  ��  � o    ���� 	0 block  � m    ��
�� boovfals�  S     ��  ��  �� 0 an_item  � n   ��� o    ���� 0 	_contents  �  f    � ���� L   * ,    f   * +��  �  l     ��������  ��  ��    l      ����  ��!@abstruct
Repeat to call do handler of given script object with passing a reference to each item in the XList as an argument without stopping.
@description 
The parameter �gblock�h is a script object which have a do handler accepting only one argument. 
A difference from ((<each>)) is that a result of do handler is igrored to gain performance.
Threre is no way to stop repeating.
@param
block (script object) : must have a do handler which require only argument.
@result me
    �� ! @ a b s t r u c t 
 R e p e a t   t o   c a l l   d o   h a n d l e r   o f   g i v e n   s c r i p t   o b j e c t   w i t h   p a s s i n g   a   r e f e r e n c e   t o   e a c h   i t e m   i n   t h e   X L i s t   a s   a n   a r g u m e n t   w i t h o u t   s t o p p i n g . 
 @ d e s c r i p t i o n   
 T h e   p a r a m e t e r    b l o c k    i s   a   s c r i p t   o b j e c t   w h i c h   h a v e   a   d o   h a n d l e r   a c c e p t i n g   o n l y   o n e   a r g u m e n t .   
 A   d i f f e r e n c e   f r o m   ( ( < e a c h > ) )   i s   t h a t   a   r e s u l t   o f   d o   h a n d l e r   i s   i g r o r e d   t o   g a i n   p e r f o r m a n c e . 
 T h r e r e   i s   n o   w a y   t o   s t o p   r e p e a t i n g . 
 @ p a r a m 
 b l o c k   ( s c r i p t   o b j e c t )   :   m u s t   h a v e   a   d o   h a n d l e r   w h i c h   r e q u i r e   o n l y   a r g u m e n t . 
 @ r e s u l t   m e 
 	 i   � �

 I      ������ 0 	each_rush   �� o      ���� 	0 block  ��  ��   k     "  X     �� n    I    ������ 0 do   �� n     1    ��
�� 
pcnt o    ���� 0 an_item  ��  ��   o    ���� 	0 block  �� 0 an_item   n    o    ���� 0 	_contents    f     �� L     "  f     !��  	  l     ��������  ��  ��     l      ��!"��  !��!@abstruct
Repeat to call do handler of given script object with each item in the XList as an argument.
@description 
The parameter �gblock�h is a script object which must have a do handler.
The do handler must accept two arguments. 

  on do(an_item, sender)
    -- do something
	return true
  end do

* item : an item in the target XList.
* sendr :  the target XList.

The do handler must return true or false. When the do handler return false, the processing enumerate handler is stoped immediately.

Calling this method will cause to reset the interator counter of the target.

@param
block (script object) : must have a do handler which require only argument. The do handler must return boolean.
   " �##v ! @ a b s t r u c t 
 R e p e a t   t o   c a l l   d o   h a n d l e r   o f   g i v e n   s c r i p t   o b j e c t   w i t h   e a c h   i t e m   i n   t h e   X L i s t   a s   a n   a r g u m e n t . 
 @ d e s c r i p t i o n   
 T h e   p a r a m e t e r    b l o c k    i s   a   s c r i p t   o b j e c t   w h i c h   m u s t   h a v e   a   d o   h a n d l e r . 
 T h e   d o   h a n d l e r   m u s t   a c c e p t   t w o   a r g u m e n t s .   
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
 b l o c k   ( s c r i p t   o b j e c t )   :   m u s t   h a v e   a   d o   h a n d l e r   w h i c h   r e q u i r e   o n l y   a r g u m e n t .   T h e   d o   h a n d l e r   m u s t   r e t u r n   b o o l e a n . 
  $%$ i   � �&'& I      ��(���� 0 	enumerate  ( )��) o      ���� 	0 block  ��  ��  ' k     *** +,+ I     �������� 	0 reset  ��  ��  , -��- V    *./. Z    %01����0 =   232 n   454 I    ��6���� 0 do  6 787 I    �������� 0 next  ��  ��  8 9��9  f    ��  ��  5 o    ���� 	0 block  3 m    ��
�� boovfals1  S     !��  ��  / I   
 �������� 0 has_next  ��  ��  ��  % :;: l     ��������  ��  ��  ; <=< l      ��>?��  >��!@abstruct 
Repeat to call do handler of given script object with passing each element as an argument. 
A XList consisting of the results of do handler is returned.

@description 
A parameter �gblock�h is a script object which have a do handler accpepting only one argument.

Each element in the target XList will be passed to the do handler.

@param block (script object) : must have a do handler which require only argument.
@result Instance of XList
   ? �@@� ! @ a b s t r u c t   
 R e p e a t   t o   c a l l   d o   h a n d l e r   o f   g i v e n   s c r i p t   o b j e c t   w i t h   p a s s i n g   e a c h   e l e m e n t   a s   a n   a r g u m e n t .   
 A   X L i s t   c o n s i s t i n g   o f   t h e   r e s u l t s   o f   d o   h a n d l e r   i s   r e t u r n e d . 
 
 @ d e s c r i p t i o n   
 A   p a r a m e t e r    b l o c k    i s   a   s c r i p t   o b j e c t   w h i c h   h a v e   a   d o   h a n d l e r   a c c p e p t i n g   o n l y   o n e   a r g u m e n t . 
 
 E a c h   e l e m e n t   i n   t h e   t a r g e t   X L i s t   w i l l   b e   p a s s e d   t o   t h e   d o   h a n d l e r . 
 
 @ p a r a m   b l o c k   ( s c r i p t   o b j e c t )   :   m u s t   h a v e   a   d o   h a n d l e r   w h i c h   r e q u i r e   o n l y   a r g u m e n t . 
 @ r e s u l t   I n s t a n c e   o f   X L i s t 
= ABA i   � �CDC I      ��E���� 0 map  E F��F o      ���� 	0 block  ��  ��  D k     1GG HIH r     	JKJ I     ��L���� 0 	make_with  L M��M J    ����  ��  ��  K o      ���� 0 
new_x_list  I NON X   
 .P��QP r    )RSR l   $T����T n   $UVU I    $��W���� 0 do  W X��X n     YZY 1     ��
�� 
pcntZ o    ���� 0 an_item  ��  ��  V o    ���� 	0 block  ��  ��  S n      [\[  ;   ' (\ n   $ ']^] o   % '���� 0 	_contents  ^ o   $ %���� 0 
new_x_list  �� 0 an_item  Q n   _`_ o    ���� 0 	_contents  `  f    O a��a L   / 1bb o   / 0���� 0 
new_x_list  ��  B cdc l     ��������  ��  ��  d efe l      ��gh��  g��!@abstruct
Repeat to call do handler of given script object with passing each element as an argument. 
An AppleScript's list of the results of do handler is returned.

@description 
A parameter �gblock�h is a script object which have a do handler accpepting only one argument.

Each elements in the target XList will be passed to the do handler.

@param block(script object) :
must have a do handler which require one argument.
@result list
   h �iin ! @ a b s t r u c t 
 R e p e a t   t o   c a l l   d o   h a n d l e r   o f   g i v e n   s c r i p t   o b j e c t   w i t h   p a s s i n g   e a c h   e l e m e n t   a s   a n   a r g u m e n t .   
 A n   A p p l e S c r i p t ' s   l i s t   o f   t h e   r e s u l t s   o f   d o   h a n d l e r   i s   r e t u r n e d . 
 
 @ d e s c r i p t i o n   
 A   p a r a m e t e r    b l o c k    i s   a   s c r i p t   o b j e c t   w h i c h   h a v e   a   d o   h a n d l e r   a c c p e p t i n g   o n l y   o n e   a r g u m e n t . 
 
 E a c h   e l e m e n t s   i n   t h e   t a r g e t   X L i s t   w i l l   b e   p a s s e d   t o   t h e   d o   h a n d l e r . 
 
 @ p a r a m   b l o c k ( s c r i p t   o b j e c t )   : 
 m u s t   h a v e   a   d o   h a n d l e r   w h i c h   r e q u i r e   o n e   a r g u m e n t . 
 @ r e s u l t   l i s t 
f jkj i   � �lml I      ��n���� 0 map_as_list  n o��o o      ���� 	0 block  ��  ��  m L     pp n    
qrq I    
�������� 0 as_list  ��  ��  r I     ��s���� 0 map  s t��t o    ���� 	0 block  ��  ��  k uvu l     ��������  ��  ��  v wxw l      ��yz��  y * $!@group Make a copy of the instance    z �{{ H ! @ g r o u p   M a k e   a   c o p y   o f   t h e   i n s t a n c e  x |}| l     ��������  ��  ��  } ~~ l      ������  � � �!@abstruct
Make a new instance which share internal list with the original. 
The internal counter for the iterator will be copied.
@result XList
   � ���" ! @ a b s t r u c t 
 M a k e   a   n e w   i n s t a n c e   w h i c h   s h a r e   i n t e r n a l   l i s t   w i t h   t h e   o r i g i n a l .   
 T h e   i n t e r n a l   c o u n t e r   f o r   t h e   i t e r a t o r   w i l l   b e   c o p i e d . 
 @ r e s u l t   X L i s t 
 ��� i   � ���� I      �������� 0 shallow_copy  ��  ��  � k     �� ��� r     
��� n    ��� I    ������� 0 	make_with  � ���� n   ��� o    ���� 0 	_contents  �  f    ��  ��  �  f     � o      ���� 
0 x_list  � ��� r    ��� n   ��� o    ���� 0 _n  �  f    � n     ��� o    ���� 0 _n  � o    �� 
0 x_list  � ��~� L    �� o    �}�} 
0 x_list  �~  � ��� l     �|�{�z�|  �{  �z  � ��� l      �y���y  � f `!@abstruct
Make a new instance which have copied internal list from the original.
@result XList
   � ��� � ! @ a b s t r u c t 
 M a k e   a   n e w   i n s t a n c e   w h i c h   h a v e   c o p i e d   i n t e r n a l   l i s t   f r o m   t h e   o r i g i n a l . 
 @ r e s u l t   X L i s t 
� ��� i   � ���� I      �x�w�v�x 0 	deep_copy  �w  �v  � k     �� ��� r     ��� n    
��� I    
�u��t�u 0 	make_with  � ��s� I    �r�q�p�r 0 	all_items  �q  �p  �s  �t  �  f     � o      �o�o 
0 x_list  � ��� r    ��� n   ��� o    �n�n 0 _n  �  f    � n     ��� o    �m�m 0 _n  � o    �l�l 
0 x_list  � ��k� L    �� o    �j�j 
0 x_list  �k  � ��� l     �i�h�g�i  �h  �g  � ��� l      �f���f  � a [!@abstruct
Make a shallow copy with resetting the internal iterator counter.
@result XList
   � ��� � ! @ a b s t r u c t 
 M a k e   a   s h a l l o w   c o p y   w i t h   r e s e t t i n g   t h e   i n t e r n a l   i t e r a t o r   c o u n t e r . 
 @ r e s u l t   X L i s t 
� ��� i   � ���� I      �e�d�c�e 0 iterator  �d  �c  � L     	�� n    ��� I    �b��a�b 0 	make_with  � ��`� n   ��� o    �_�_ 0 	_contents  �  f    �`  �a  �  f     � ��� l     �^�]�\�^  �]  �\  � ��� i   � ���� I     �[�Z�Y
�[ .ascrcmnt****      � ****�Z  �Y  � O    ��� I   �X��W
�X .ascrcmnt****      � ****� l   	��V�U� n   	��� I    	�T�S�R�T 0 dump  �S  �R  �  f    �V  �U  �W  � 1     �Q
�Q 
ascr� ��� l     �P�O�N�P  �O  �N  � ��� i   � ���� I      �M�L�K�M 0 dump  �L  �K  � k     %�� ��� h     �J��J 0 xlistdumper XListDumper� k      �� ��� j     �I��I 0 an_index  � m     �H�H  � ��G� i    ��� I      �F��E�F 0 do  � ��D� o      �C�C 0 an_item  �D  �E  � k     6�� ��� r     ��� [     ��� o     �B�B 0 an_index  � m    �A�A � o      �@�@ 0 an_index  � ��� r    ��� l   ��?�>� c    ��� o    �=�= 0 an_index  � m    �<
�< 
utxt�?  �>  � o      �;�; 
0 output  � ��� Z    /���:�� =   ��� n       m    �9
�9 
pcls o    �8�8 0 an_item  � m    �7
�7 
scpt� r     ' n    % I   ! %�6�5�4�6 0 dump  �5  �4   o     !�3�3 0 an_item   o      �2�2 0 	dump_data  �:  � r   * / c   * -	 o   * +�1�1 0 an_item  	 m   + ,�0
�0 
utxt o      �/�/ 0 	dump_data  � 
�.
 L   0 6 b   0 5 b   0 3 o   0 1�-�- 
0 output   1   1 2�,
�, 
tab  o   3 4�+�+ 0 	dump_data  �.  �G  �  r     I    �*�)�* 0 map   �( o   	 
�'�' 0 xlistdumper XListDumper�(  �)   o      �&�& 0 	dump_list    n    I    �%�$�% 0 unshift   �# b     b     m       �!!  [ n   "#" 1    �"
�" 
pnam#  f     m    $$ �%%  ]�#  �$   o    �!�! 0 	dump_list   &� & L    %'' n   $()( I    $�*�� 0 as_unicode_with  * +�+ o     �
� 
ret �  �  ) o    �� 0 	dump_list  �   � ,-, l     ����  �  �  - ./. l      �01�  0  == private    1 �22  = =   p r i v a t e  / 343 i   � �565 I      ���� 	0 debug  �  �  6 k     J77 898 O     :;: k    << =>= I    �?�� 	0 setup  ? @�@  f    	�  �  > A�A r    BCB I    �D�� 0 load  D E�E m    FF �GG  U n i t T e s t�  �  C o      �� 0 test Test�  ; 4     �H
� 
scptH m    II �JJ  M o d u l e L o a d e r9 KLK r    #MNM I    !�
O�	�
 0 	make_with  O P�P J    QQ RSR m    TT �UU  aS V�V m    WW �XX  b�  �  �	  N o      �� 
0 a_list  L YZY n  $ *[\[ I   % *�]�� 0 	delete_at  ] ^�^ m   % &�� �  �  \ o   $ %�� 
0 a_list  Z _`_ n  + :aba I   , :� c���  0 assert_true  c ded =  , 5fgf n  , 1hih I   - 1�������� 0 as_list  ��  ��  i o   , -���� 
0 a_list  g J   1 4jj k��k m   1 2ll �mm  b��  e n��n m   5 6oo �pp $ F a i l d   t o   d e l e t e _ a t��  ��  b o   + ,���� 0 test Test` qrq I  ; @��s��
�� .corecnte****       ****s o   ; <���� 
0 a_list  ��  r t��t n  A Juvu I   B J��w���� 0 assert_true  w xyx =  B Ez{z 1   B C��
�� 
rslt{ m   C D���� y |��| m   E F}} �~~  F a i l d   t o   c o u n t��  ��  v o   A B���� 0 test Test��  4 � l     ��������  ��  ��  � ��� i   � ���� I      �������� 0 open_helpbook  ��  ��  � Q     ,���� O   ��� I   
 ������� 0 do  � ���� I   �����
�� .earsffdralis        afdr�  f    ��  ��  ��  � 4    ���
�� 
scpt� m    �� ���  O p e n H e l p B o o k� R      ����
�� .ascrerr ****      � ****� o      ���� 0 msg  � �����
�� 
errn� o      ���� 	0 errno  ��  � k    ,�� ��� I   "������
�� .miscactvnull��� ��� null��  ��  � ���� I  # ,�����
�� .sysodisAaleR        TEXT� l  # (������ b   # (��� b   # &��� o   # $���� 0 msg  � o   $ %��
�� 
ret � o   & '���� 	0 errno  ��  ��  ��  ��  � ��� l     ��������  ��  ��  � ��� i   � ���� I     ������
�� .aevtoappnull  �   � ****��  ��  � k     �� ��� l     ������  �  return debug()   � ���  r e t u r n   d e b u g ( )� ���� I     �������� 0 open_helpbook  ��  ��  ��  � ���� l     ��������  ��  ��  ��       6��� �����������������������������������������������������  � 4��������������������������������������������������������������������������������������������������������
�� 
pnam
�� 
pimr
�� .corecrel****      � null�� 0 	make_with  �� 0 make_with_list  �� 0 make_with_text  �� 0 make_with_xtext  �� 0 next  �� 0 	next_item  �� 0 has_next  �� 0 current_item  �� 0 current_index  �� 0 decrement_index  �� 0 increment_index  �� 	0 reset  �� 0 push  �� 0 pop  �� 0 unshift  �� 	0 shift  �� 0 count_items  �� 0 item_counts  
�� .corecnte****       ****�� 0 	delete_at  �� 0 item_at  �� 0 items_in_range  �� 0 set_item  �� 0 set_item_at  �� 0 exchange_items  �� 0 has_item  �� 0 index_of  �� 0 	all_items  �� 0 as_list  �� 0 list_ref  �� 0 add_from_list  �� 0 as_xtext_with  �� 0 as_text_with  �� 0 as_unicode_with  �� 0 as_string_with  �� 0 join_as  �� 0 each  �� 0 	each_rush  �� 0 	enumerate  �� 0 map  �� 0 map_as_list  �� 0 shallow_copy  �� 0 	deep_copy  �� 0 iterator  
�� .ascrcmnt****      � ****�� 0 dump  �� 	0 debug  �� 0 open_helpbook  
�� .aevtoappnull  �   � ****� ����� �  ��� �� ��
�� 
vers��  � �����
�� 
cobj� ��   ��
�� 
osax��  � �� 8��������
�� .corecrel****      � null��  ��  �  � ���� 0 	make_with  �� 	*jvk+  � �� F��������� 0 	make_with  �� �~��~ �  �}�} 
0 a_list  ��  � �|�{�z�| 
0 a_list  �{ 0 a_parent  �z 0 xlistinstance XListInstance� �y O��y 0 xlistinstance XListInstance� �x��w�v���u
�x .ascrinit****      � ****� k     ��  Q��  T��  W��  [�t�t  �w  �v  � �s�r�q�p
�s 
pare�r 0 	_contents  �q 0 _length  �p 0 _n  � �o�n�m�l�k
�o 
pare�n 0 	_contents  
�m .corecnte****       ****�l 0 _length  �k 0 _n  �u b  N  Ob   �Ob   j �Ok�� )E�O��K S�� �j g�i�h���g�j 0 make_with_list  �i �f��f �  �e�e 
0 a_list  �h  � �d�d 
0 a_list  � �c�c 0 	make_with  �g *�k+  � �b w�a�`���_�b 0 make_with_text  �a �^��^ �  �]�\�] 
0 a_text  �\ 0 
delimiters  �`  � �[�Z�Y�X�[ 
0 a_text  �Z 0 
delimiters  �Y 0 	pre_delim  �X 
0 a_list  � �W�V�U�T
�W 
ascr
�V 
txdl
�U 
citm�T 0 	make_with  �_  ��,E�O���,FO��-E�O���,FO*�k+ � �S ��R�Q���P�S 0 make_with_xtext  �R �O��O �  �N�M�N 
0 x_text  �M 0 
delimiters  �Q  � �L�K�L 
0 x_text  �K 0 
delimiters  � �J�I�J 0 as_list_with  �I 0 	make_with  �P *��k+  k+ � �H ��G�F���E�H 0 next  �G  �F  � �D�C�D 0 an_item  �C 0 msg  � 
�B�A�@�?��>�=�< ��;�B 0 	_contents  
�A 
cobj�@ 0 _n  �? 0 msg  � �:�9�8
�: 
errn�9�@�8  �> 0 _length  
�= 
errn�<G�;�@�E = )�,�)�,E/E�W  X  )�,)�, )��l�Y )��l�O)�,k)�,FO�� �7 ��6�5���4�7 0 	next_item  �6  �5  �  � �3�3 0 next  �4 *j+  � �2�1�0� �/�2 0 has_next  �1  �0  �    �.�-�. 0 _n  �- 0 _length  �/ 	)�,)�,� �,�+�*�)�, 0 current_item  �+  �*     �(�'�&�( 0 	_contents  
�' 
cobj�& 0 _n  �) )�,�)�,k/E� �%1�$�#�"�% 0 current_index  �$  �#     �!�! 0 _n  �" )�,k� � B����  0 decrement_index  �  �     �� 0 _n  � )�,k )�,k)�,FY h� �\���� 0 increment_index  �  �     �� 0 _n  � )�,k )�,k)�,FY h� �v��	
�� 	0 reset  �  �  	  
 �� 0 _n  � 	k)�,FO)� ������ 0 push  � ��   �� 0 an_item  �   �� 0 an_item   �
�	�
 0 	_contents  �	 0 _length  � �)�,6FO)�,k)�,F� ������ 0 pop  �  �   �� 0 a_result   ���� ������� 0 	_contents  
� 
cobj�  �   
�� 
msng������ 0 _length  � F )�,�i/E�W 	X  �O )�,[�\[Zk\Z�2)�,FW X  jv)�,FO)�,k)�,FO�� ����������� 0 unshift  �� ����   ���� 0 an_item  ��   ���� 0 an_item   �������� 0 	_contents  �� 0 increment_index  �� 0 _length  �� �)�,5FO*j+ O)�,k)�,FO)� ���������� 	0 shift  ��  ��   ���� 0 a_result   ������������������ 0 	_contents  
�� 
cobj��  ��  
�� 
msng
�� 
rest�� 0 decrement_index  �� 0 _length  �� 3 )�,�k/E�W 	X  �O)�,�,)�,FO*j+ O)�,k)�,FO�� ��P�������� 0 count_items  ��  ��     ������ 0 	_contents  
�� .corecnte****       ****�� 	)�,j � ��Z�������� 0 item_counts  ��  ��     ������ 0 	_contents  
�� .corecnte****       ****�� 	)�,j � ��d������
�� .corecnte****       ****��  ��     ������ 0 	_contents  
�� .corecnte****       ****�� 	)�,j � ��s�������� 0 	delete_at  �� ����   ���� 0 indexes  ��   ���������� 0 indexes  �� 
0 a_list  �� 0 n  �� 0 an_index   ����������������
�� 
list
�� 
leng
�� 
cobj�� 0 	_contents  
�� 
rest�� 0 _length  ������ 0 _n  �� ���&E�OjvE�O �k��,Ekh ��/E�O)�,�/�6FO�k  )�,�,)�,FY D)�,ilv� )�,[�\[Zk\Z�2)�,FY %)�,[�\[Zk\Z�k2)�,[�\[Z�k\Zi2%)�,FO)�,� )�,k)�,FY hO)�,k)�,F[OY�uO�� ���������� 0 item_at  �� �� ��    ���� 0 an_index  ��   ���������� 0 an_index  �� 
0 a_list  �� 0 
index_list  �� 0 	inde_list   ��������������
�� 
pcls
�� 
list�� 0 	_contents  
�� 
cobj�� 0 	make_with  �� 0 has_next  �� 0 next  �� C��,� )�,�/EY hOjvE�O*�k+ E�O h�j+ )�,�j+ /�6F[OY��O�� ��N����!"���� 0 items_in_range  �� ��#�� #  ������ 0 s_index  �� 0 e_index  ��  ! ������ 0 s_index  �� 0 e_index  " �������� 0 	_contents  
�� 
cobj�� 0 	make_with  �� *)�,[�\[Z�\Z�2k+ � ��f����$%���� 0 set_item  ��  �� ����&
�� 
for �� 0 a_value  & ������
�� 
at  �� 0 an_index  ��  $ ������ 0 a_value  �� 0 an_index  % ������ 0 	_contents  
�� 
cobj�� 	�)�,�/F� ��|����'(���� 0 set_item_at  �� ��)�� )  ������ 0 a_value  �� 0 an_index  ��  ' ������ 0 a_value  �� 0 an_index  ( ������ 0 	_contents  
�� 
cobj�� 	�)�,�/F� �������*+���� 0 exchange_items  �� ��,�� ,  ������ 
0 index1  �� 
0 index2  ��  * �������� 
0 index1  �� 
0 index2  �� 
0 a_buff  + ������ 0 	_contents  
�� 
cobj��  )�,�/E�O)�,�/)�,�/FO�)�,�/F� �����~-.�}�� 0 has_item  � �|/�| /  �{�{ 0 an_item  �~  - �z�z 0 an_item  . �y�y 0 	_contents  �} )�,�� �x��w�v01�u�x 0 index_of  �w �t2�t 2  �s�s 0 an_item  �v  0 �r�q�p�r 0 an_item  �q 0 an_index  �p 0 n  1 �o�n�m�l�o 0 has_item  �n 0 _length  �m 0 	_contents  
�l 
cobj�u ?*�k+   jY hOjE�O %k)�,Ekh )�,�/�  
�E�OY h[OY��O�� �k	�j�i34�h�k 0 	all_items  �j  �i  3 �g�g 
0 a_list  4 �f�f 0 	_contents  �h 
)�,EQ�O�� �e�d�c56�b�e 0 as_list  �d  �c  5  6 �a�a 0 	_contents  �b )�,E� �`-�_�^78�]�` 0 list_ref  �_  �^  7  8 �\�\ 0 	_contents  �] )�,E� �[A�Z�Y9:�X�[ 0 add_from_list  �Z �W;�W ;  �V�V 
0 a_list  �Y  9 �U�U 
0 a_list  : �T�S�R�T 0 	_contents  �S 0 _length  
�R .corecnte****       ****�X )�,�%)�,FO)�,�j )�,FO)� �Qo�P�O<=�N�Q 0 as_xtext_with  �P �M>�M >  �L�L 0 a_delimiter  �O  < �K�J�K 0 a_delimiter  �J 
0 a_text  = �I�H�G�I 0 as_text_with  �H 0 xtext XText�G 0 	make_with  �N *�k+  E�O��k+ � �F��E�D?@�C�F 0 as_text_with  �E �BA�B A  �A�A 0 
delimiters  �D  ? �@�@ 0 
delimiters  @ �?�>�=
�? 
txdl�> 0 	_contents  
�= 
ctxt�C �*�,FO)�,�&� �<��;�:BC�9�< 0 as_unicode_with  �; �8D�8 D  �7�7 0 
delimiters  �:  B �6�6 0 
delimiters  C �5�5 0 as_text_with  �9 *�k+  � �4��3�2EF�1�4 0 as_string_with  �3 �0G�0 G  �/�/ 0 
delimiters  �2  E �.�. 0 
delimiters  F �-�,�+
�- 
txdl�, 0 	_contents  
�+ 
TEXT�1 �*�,FO)�,�&� �*��)�(HI�'�* 0 join_as  �) �&J�& J  �%�$�% 0 
a_delimter  �$ 0 class_object  �(  H �#�"�!�# 0 
a_delimter  �" 0 class_object  �! 0 	delimiter  I � ��  0 as_text_with  � 0 	make_with  �' �*�k+  k+ � ����KL�� 0 each  � �M� M  �� 	0 block  �  K ��� 	0 block  � 0 an_item  L ������� 0 	_contents  
� 
kocl
� 
cobj
� .corecnte****       ****
� 
pcnt� 0 do  � - ()�,[��l kh ���,k+ f  Y h[OY��O)� ���NO�� 0 	each_rush  � �P� P  �� 	0 block  �  N �
�	�
 	0 block  �	 0 an_item  O ������� 0 	_contents  
� 
kocl
� 
cobj
� .corecnte****       ****
� 
pcnt� 0 do  � # )�,[��l kh ���,k+ [OY��O)� �'�� QR��� 0 	enumerate  � ��S�� S  ���� 	0 block  �   Q ���� 	0 block  R ���������� 	0 reset  �� 0 has_next  �� 0 next  �� 0 do  �� +*j+  O #h*j+ �*j+ )l+ f  Y h[OY��� ��D����TU���� 0 map  �� ��V�� V  ���� 	0 block  ��  T �������� 	0 block  �� 0 
new_x_list  �� 0 an_item  U ���������������� 0 	make_with  �� 0 	_contents  
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
pcnt�� 0 do  �� 2*jvk+  E�O #)�,[��l kh ���,k+ ��,6F[OY��O�� ��m����WX���� 0 map_as_list  �� ��Y�� Y  ���� 	0 block  ��  W ���� 	0 block  X ������ 0 map  �� 0 as_list  �� *�k+  j+ � �������Z[���� 0 shallow_copy  ��  ��  Z ���� 
0 x_list  [ �������� 0 	_contents  �� 0 	make_with  �� 0 _n  �� ))�,k+ E�O)�,��,FO�� �������\]���� 0 	deep_copy  ��  ��  \ ���� 
0 x_list  ] �������� 0 	all_items  �� 0 	make_with  �� 0 _n  �� )*j+  k+ E�O)�,��,FO�� �������^_���� 0 iterator  ��  ��  ^  _ ������ 0 	_contents  �� 0 	make_with  �� 
))�,k+ � �������`a��
�� .ascrcmnt****      � ****��  ��  `  a ������
�� 
ascr�� 0 dump  
�� .ascrcmnt****      � ****�� � )j+ j U� �������bc���� 0 dump  ��  ��  b ������ 0 xlistdumper XListDumper�� 0 	dump_list  c 
���d�� ��$�������� 0 xlistdumper XListDumperd ��e����fg��
�� .ascrinit****      � ****e k     hh �ii �����  ��  ��  f ������ 0 an_index  �� 0 do  g ��j�� 0 an_index  j �������kl���� 0 do  �� ��m�� m  ���� 0 an_item  ��  k �������� 0 an_item  �� 
0 output  �� 0 	dump_data  l ����������
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
ret �� 0 as_unicode_with  �� &��K S�O*�k+ E�O��)�,%�%k+ O��k+ 	� ��6����no���� 	0 debug  ��  ��  n ������ 0 test Test�� 
0 a_list  o ��I��F��TW������lo������}
�� 
scpt�� 	0 setup  �� 0 load  �� 0 	make_with  �� 0 	delete_at  �� 0 as_list  �� 0 assert_true  
�� .corecnte****       ****
�� 
rslt�� K)��/ *)k+ O*�k+ E�UO*��lvk+ E�O�kk+ O��j+ 	�kv �l+ O�j O��k �l+ � �������pq���� 0 open_helpbook  ��  ��  p ������ 0 msg  �� 	0 errno  q 	���������r������
�� 
scpt
�� .earsffdralis        afdr�� 0 do  �� 0 msg  r ������
�� 
errn�� 	0 errno  ��  
�� .miscactvnull��� ��� null
�� 
ret 
�� .sysodisAaleR        TEXT�� - )��/ *)j k+ UW X  *j O��%�%j � �����~st�}
�� .aevtoappnull  �   � ****�  �~  s  t �|�| 0 open_helpbook  �} *j+   ascr  ��ޭ