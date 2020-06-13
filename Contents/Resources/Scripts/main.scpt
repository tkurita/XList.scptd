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
:
4!@references
Home page || http://www.script-factory.net/XModules/XList/en/index.html
ChangeLog || http://www.script-factory.net/XModules/XList/changelog.html
Repository || https://github.com/tkurita/XList.scptd

@title XList Reference
* Version : 1.7.3
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
    % � & &d ! @ r e f e r e n c e s 
 H o m e   p a g e   | |   h t t p : / / w w w . s c r i p t - f a c t o r y . n e t / X M o d u l e s / X L i s t / e n / i n d e x . h t m l 
 C h a n g e L o g   | |   h t t p : / / w w w . s c r i p t - f a c t o r y . n e t / X M o d u l e s / X L i s t / c h a n g e l o g . h t m l 
 R e p o s i t o r y   | |   h t t p s : / / g i t h u b . c o m / t k u r i t a / X L i s t . s c p t d 
 
 @ t i t l e   X L i s t   R e f e r e n c e 
 *   V e r s i o n   :   1 . 7 . 3 
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
 #  ' ( ' l     ��������  ��  ��   (  ) * ) l      �� + ,��   + ! !@group Constructor Method     , � - - 6 ! @ g r o u p   C o n s t r u c t o r   M e t h o d   *  . / . l     ��������  ��  ��   /  0 1 0 l      �� 2 3��   2 a [!
@abstruct 
Meke an instance of empty XList.
@result script object : a new XList instance
    3 � 4 4 � ! 
 @ a b s t r u c t   
 M e k e   a n   i n s t a n c e   o f   e m p t y   X L i s t . 
 @ r e s u l t   s c r i p t   o b j e c t   :   a   n e w   X L i s t   i n s t a n c e 
 1  5 6 5 i     7 8 7 I     ������
�� .corecrel****      � null��  ��   8 L      9 9 I     �� :���� 0 	make_with   :  ;�� ; J    ����  ��  ��   6  < = < l     ��������  ��  ��   =  > ? > l      �� @ A��   @ � �!
@abstruct 
Meke an instance of XList with given an AppleScript's  list object.
@param�@a_list (list)
@result script object : a new XList instance
    A � B B& ! 
 @ a b s t r u c t   
 M e k e   a n   i n s t a n c e   o f   X L i s t   w i t h   g i v e n   a n   A p p l e S c r i p t ' s     l i s t   o b j e c t . 
 @ p a r a m0  a _ l i s t   ( l i s t ) 
 @ r e s u l t   s c r i p t   o b j e c t   :   a   n e w   X L i s t   i n s t a n c e 
 ?  C D C i     E F E I      �� G���� 0 	make_with   G  H�� H o      ���� 
0 a_list  ��  ��   F k      I I  J K J r      L M L  f      M o      ���� 0 a_parent   K  N�� N h    �� O�� 0 xlistinstance XListInstance O k       P P  Q R Q j     �� S
�� 
pare S o     ���� 0 a_parent   R  T U T j   	 �� V�� 0 	_contents   V o   	 ���� 
0 a_list   U  W X W j    �� Y�� 0 _length   Y I   �� Z��
�� .corecnte****       **** Z o    ���� 
0 a_list  ��   X  [�� [ j    �� \�� 0 _n   \ m    ���� ��  ��   D  ] ^ ] l     ��������  ��  ��   ^  _ ` _ l      �� a b��   a � �!
@abstruct
A synonym of ((<make_with>))
@description
Meke an instance of XList with given an AppleScript's  list object.
@param�@a_list (list)
@result script object : a new XList instance
    b � c cx ! 
 @ a b s t r u c t 
 A   s y n o n y m   o f   ( ( < m a k e _ w i t h > ) ) 
 @ d e s c r i p t i o n 
 M e k e   a n   i n s t a n c e   o f   X L i s t   w i t h   g i v e n   a n   A p p l e S c r i p t ' s     l i s t   o b j e c t . 
 @ p a r a m0  a _ l i s t   ( l i s t ) 
 @ r e s u l t   s c r i p t   o b j e c t   :   a   n e w   X L i s t   i n s t a n c e 
 `  d e d i    ! f g f I      �� h���� 0 make_with_list   h  i�� i o      ���� 
0 a_list  ��  ��   g L      j j I     �� k���� 0 	make_with   k  l�� l o    ���� 
0 a_list  ��  ��   e  m n m l     ��������  ��  ��   n  o p o l      �� q r��   q � �!
@abstruct 
Meke an instance of XList with from a list splitting a text with a delimiter.
@param a_text (Unicode or string)
@param a_delimiter (Unicode or string)
@result script object : a new XList instance
    r � s s� ! 
 @ a b s t r u c t   
 M e k e   a n   i n s t a n c e   o f   X L i s t   w i t h   f r o m   a   l i s t   s p l i t t i n g   a   t e x t   w i t h   a   d e l i m i t e r . 
 @ p a r a m   a _ t e x t   ( U n i c o d e   o r   s t r i n g ) 
 @ p a r a m   a _ d e l i m i t e r   ( U n i c o d e   o r   s t r i n g ) 
 @ r e s u l t   s c r i p t   o b j e c t   :   a   n e w   X L i s t   i n s t a n c e 
 p  t u t i   " % v w v I      �� x���� 0 make_with_text   x  y z y o      ���� 
0 a_text   z  {�� { o      ���� 0 a_delimiter  ��  ��   w k      | |  } ~ } r       �  n     � � � 1    ��
�� 
txdl � 1     ��
�� 
ascr � o      ���� 0 	pre_delim   ~  � � � r     � � � o    ���� 0 a_delimiter   � n      � � � 1    
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
0 x_text  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l      �� � ���   � $ !@group  Methods for Iterator     � � � � < ! @ g r o u p     M e t h o d s   f o r   I t e r a t o r   �  � � � l     ��������  ��  ��   �  � � � l      �� � ���   � � �!
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
errn � m   + ,�m�m�@�n   �  � � � l  0 0�l�k�j�l  �k  �j   �  � � � r   0 9 � � � [   0 5 � � � l  0 3 ��i�h � n  0 3 � � � o   1 3�g�g 0 _n   �  f   0 1�i  �h   � m   3 4�f�f  � n      � � � o   6 8�e�e 0 _n   �  f   5 6 �  ��d � L   : < � � o   : ;�c�c 0 an_item  �d   �  � � � l     �b�a�`�b  �a  �`   �  � � � i   . 1 � � � I      �_�^�]�_ 0 	next_item  �^  �]   � L      � � I     �\�[�Z�\ 0 next  �[  �Z   �  � � � l     �Y�X�W�Y  �X  �W   �    l      �V�V   � �!
@abstruct
check whether ((<next>))() can return a next item or not
@description 
false should be returned, when the last item have been already returned with ((<next>))().
@result boolean
    �| ! 
 @ a b s t r u c t 
 c h e c k   w h e t h e r   ( ( < n e x t > ) ) ( )   c a n   r e t u r n   a   n e x t   i t e m   o r   n o t 
 @ d e s c r i p t i o n   
 f a l s e   s h o u l d   b e   r e t u r n e d ,   w h e n   t h e   l a s t   i t e m   h a v e   b e e n   a l r e a d y   r e t u r n e d   w i t h   ( ( < n e x t > ) ) ( ) . 
 @ r e s u l t   b o o l e a n 
  i   2 5 I      �U�T�S�U 0 has_next  �T  �S   L     		 B    

 n     o    �R�R 0 _n    f      n    o    �Q�Q 0 _length    f      l     �P�O�N�P  �O  �N    l      �M�M   [ U!
@abstruct
The item obtained by previous ((<next>))() is returned.
@result anything
    � � ! 
 @ a b s t r u c t 
 T h e   i t e m   o b t a i n e d   b y   p r e v i o u s   ( ( < n e x t > ) ) ( )   i s   r e t u r n e d . 
 @ r e s u l t   a n y t h i n g 
  i   6 9 I      �L�K�J�L 0 current_item  �K  �J   L      n      4    
�I
�I 
cobj l   	�H�G \    	 !  l   "�F�E" n   #$# o    �D�D 0 _n  $  f    �F  �E  ! m    �C�C �H  �G   n    %&% o    �B�B 0 	_contents  &  f      '(' l     �A�@�?�A  �@  �?  ( )*) l      �>+,�>  + l f!
@abstruct
An index number of an item obtained by previous ((<next>))() is returned.
@result integer
   , �-- � ! 
 @ a b s t r u c t 
 A n   i n d e x   n u m b e r   o f   a n   i t e m   o b t a i n e d   b y   p r e v i o u s   ( ( < n e x t > ) ) ( )   i s   r e t u r n e d . 
 @ r e s u l t   i n t e g e r 
* ./. i   : =010 I      �=�<�;�= 0 current_index  �<  �;  1 L     22 \     343 l    5�:�95 n    676 o    �8�8 0 _n  7  f     �:  �9  4 m    �7�7 / 898 l     �6�5�4�6  �5  �4  9 :;: l      �3<=�3  < y s!
@abstruct�@
Decrements the index of the item obtained by ((<next>))(). i.e. same item can be obtained once more.
   = �>> � ! 
 @ a b s t r u c t0  
 D e c r e m e n t s   t h e   i n d e x   o f   t h e   i t e m   o b t a i n e d   b y   ( ( < n e x t > ) ) ( ) .   i . e .   s a m e   i t e m   c a n   b e   o b t a i n e d   o n c e   m o r e . 
; ?@? i   > AABA I      �2�1�0�2 0 decrement_index  �1  �0  B Z     CD�/�.C ?     EFE n    GHG o    �-�- 0 _n  H  f     F m    �,�, D r    IJI \    KLK l   M�+�*M n   NON o   	 �)�) 0 _n  O  f    	�+  �*  L m    �(�( J n     PQP o    �'�' 0 _n  Q  f    �/  �.  @ RSR l     �&�%�$�&  �%  �$  S TUT l      �#VW�#  V ` Z!
@abstruct
Increments the index of the item obtained by ((<next>))(). i.e. skip an item.
   W �XX � ! 
 @ a b s t r u c t 
 I n c r e m e n t s   t h e   i n d e x   o f   t h e   i t e m   o b t a i n e d   b y   ( ( < n e x t > ) ) ( ) .   i . e .   s k i p   a n   i t e m . 
U YZY i   B E[\[ I      �"�!� �" 0 increment_index  �!  �   \ Z     ]^��] ?     _`_ n    aba o    �� 0 _n  b  f     ` m    �� ^ r    cdc [    efe l   g��g n   hih o   	 �� 0 _n  i  f    	�  �  f m    �� d n     jkj o    �� 0 _n  k  f    �  �  Z lml l     ����  �  �  m non l      �pq�  p H B!
@abstruct
Make ((<next>))() return items form first.
@result me
   q �rr � ! 
 @ a b s t r u c t 
 M a k e   ( ( < n e x t > ) ) ( )   r e t u r n   i t e m s   f o r m   f i r s t . 
 @ r e s u l t   m e 
o sts i   F Iuvu I      ���� 	0 reset  �  �  v k     ww xyx r     z{z m     �� { n     |}| o    �� 0 _n  }  f    y ~�~ L      f    �  t ��� l     ���
�  �  �
  � ��� l      �	���	  �  !@group Stack and Quene    � ��� 0 ! @ g r o u p   S t a c k   a n d   Q u e n e  � ��� l     ����  �  �  � ��� l      ����  � u o!
@abstruct
Append an item at the end of the list.
@param an_item(anything) : 
an item to append into the list
   � ��� � ! 
 @ a b s t r u c t 
 A p p e n d   a n   i t e m   a t   t h e   e n d   o f   t h e   l i s t . 
 @ p a r a m   a n _ i t e m ( a n y t h i n g )   :   
 a n   i t e m   t o   a p p e n d   i n t o   t h e   l i s t 
� ��� i   J M��� I      ���� 0 push  � ��� o      �� 0 an_item  �  �  � k     �� ��� r     ��� o     � �  0 an_item  � n      ���  ;    � n   ��� o    ���� 0 	_contents  �  f    � ���� r    ��� [    ��� l   
������ n   
��� o    
���� 0 _length  �  f    ��  ��  � m   
 ���� � n     ��� o    ���� 0 _length  �  f    ��  � ��� l     ��������  ��  ��  � ��� l      ������  � v p!
@abstruct
Obtain last item in the stored list, and remove the item.
@result anything : 
last item in the list
   � ��� � ! 
 @ a b s t r u c t 
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
�� .ascrerr ****      � ****��  ��  � r   2 8��� J   2 4����  � n     ��� o   5 7���� 0 	_contents  �  f   4 5� ��� l  9 9��������  ��  ��  � ��� r   9 B��� \   9 >��� l  9 <������ n  9 <��� o   : <���� 0 _length  �  f   9 :��  ��  � m   < =���� � n     ��� o   ? A���� 0 _length  �  f   > ?� ���� L   C E�� o   C D���� 0 a_result  ��  � ��� l     ��������  ��  ��  � ��� l      ������  � | v!
@abstruct
Append an item at the beginning of the list.
@param an_item(anything) :
an item to be appended
@result me
   � ��� � ! 
 @ a b s t r u c t 
 A p p e n d   a n   i t e m   a t   t h e   b e g i n n i n g   o f   t h e   l i s t . 
 @ p a r a m   a n _ i t e m ( a n y t h i n g )   : 
 a n   i t e m   t o   b e   a p p e n d e d 
 @ r e s u l t   m e 
� ��� i   R U��� I      ������� 0 unshift  � ���� o      ���� 0 an_item  ��  ��  � k     �� ��� r     ��� o     ���� 0 an_item  � n      ���  :    � n   ��� o    ���� 0 	_contents  �  f    � ��� I    �������� 0 increment_index  ��  ��  � ��� r    ��� [       l   ���� n    o    ���� 0 _length    f    ��  ��   m    ���� � n      o    ���� 0 _length    f    � �� L      f    ��  � 	
	 l     ��������  ��  ��  
  l      ����   j d!
@abstruct
Obtain first item in the list and remove it.
@result anything : 
first item in the list
    � � ! 
 @ a b s t r u c t 
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
rest) n   *+* o    ���� 0 	_contents  +  f    ' n     ,-, o    ���� 0 	_contents  -  f    % ./. I     %�������� 0 decrement_index  ��  ��  / 010 r   & /232 \   & +454 l  & )6����6 n  & )787 o   ' )���� 0 _length  8  f   & '��  ��  5 m   ) *���� 3 n     9:9 o   , .���� 0 _length  :  f   + ,1 ;��; L   0 2<< o   0 1���� 0 a_result  ��   =>= l     ��������  ��  ��  > ?@? l     ��������  ��  ��  @ ABA l      ��CD��  C # !@group Accessing List Items    D �EE : ! @ g r o u p   A c c e s s i n g   L i s t   I t e m s  B FGF l      ��HI��  H < 6!
@abstruct
Return number of elements
@result integer
   I �JJ l ! 
 @ a b s t r u c t 
 R e t u r n   n u m b e r   o f   e l e m e n t s 
 @ r e s u l t   i n t e g e r 
G KLK i   Z ]MNM I      �������� 0 count_items  ��  ��  N L     OO I    ��P��
�� .corecnte****       ****P n    QRQ o    ���� 0 	_contents  R  f     ��  L STS l     ��������  ��  ��  T UVU i   ^ aWXW I      �������� 0 item_counts  ��  ��  X L     YY I    ��Z��
�� .corecnte****       ****Z n    [\[ o    ���� 0 	_contents  \  f     ��  V ]^] l     ��������  ��  ��  ^ _`_ i   b eaba I     ������
�� .corecnte****       ****��  ��  b L     cc I    ��d��
�� .corecnte****       ****d n    efe o    ���� 0 	_contents  f  f     ��  ` ghg l     ����~��  �  �~  h iji l      �}kl�}  k � �!
@abstruct
Delete an item specified with an index number.
@param indexes(integer or list of interger) :
an index number or list of indexes of items to delete
@result list : 
a list of deleted items form the XList contents
   l �mm� ! 
 @ a b s t r u c t 
 D e l e t e   a n   i t e m   s p e c i f i e d   w i t h   a n   i n d e x   n u m b e r . 
 @ p a r a m   i n d e x e s ( i n t e g e r   o r   l i s t   o f   i n t e r g e r )   : 
 a n   i n d e x   n u m b e r   o r   l i s t   o f   i n d e x e s   o f   i t e m s   t o   d e l e t e 
 @ r e s u l t   l i s t   :   
 a   l i s t   o f   d e l e t e d   i t e m s   f o r m   t h e   X L i s t   c o n t e n t s 
j non i   f ipqp I      �|r�{�| 0 	delete_at  r s�zs o      �y�y 0 indexes  �z  �{  q k     �tt uvu r     wxw c     yzy o     �x�x 0 indexes  z m    �w
�w 
listx o      �v�v 0 indexes  v {|{ r    
}~} J    �u�u  ~ o      �t�t 
0 a_list  | � l   �s�r�q�s  �r  �q  � ��� Y    ���p���o� k    ��� ��� r    ��� n    ��� 4    �n�
�n 
cobj� o    �m�m 0 n  � o    �l�l 0 indexes  � o      �k�k 0 an_index  � ��� l   �j���j  �  log "start delete_item"   � ��� . l o g   " s t a r t   d e l e t e _ i t e m "� ��� r    (��� n    %��� 4   " %�i�
�i 
cobj� o   # $�h�h 0 an_index  � n   "��� o     "�g�g 0 	_contents  �  f     � n      ���  ;   & '� o   % &�f�f 
0 a_list  � ��� Z   ) }����� =  ) ,��� o   ) *�e�e 0 an_index  � m   * +�d�d � r   / 8��� n   / 4��� 1   2 4�c
�c 
rest� n  / 2��� o   0 2�b�b 0 	_contents  �  f   / 0� n     ��� o   5 7�a�a 0 	_contents  �  f   4 5� ��� E  ; C��� J   ; A�� ��� n  ; >��� o   < >�`�` 0 _length  �  f   ; <� ��_� m   > ?�^�^���_  � o   A B�]�] 0 an_index  � ��\� r   F W��� n   F S��� 7  I S�[��
�[ 
cobj� m   M O�Z�Z � m   P R�Y�Y��� n  F I��� o   G I�X�X 0 	_contents  �  f   F G� n     ��� o   T V�W�W 0 	_contents  �  f   S T�\  � r   Z }��� b   Z y��� l  Z i��V�U� n   Z i��� 7  ] i�T��
�T 
cobj� m   a c�S�S � l  d h��R�Q� \   d h��� o   e f�P�P 0 an_index  � m   f g�O�O �R  �Q  � n  Z ]��� o   [ ]�N�N 0 	_contents  �  f   Z [�V  �U  � l  i x��M�L� n   i x��� 7  l x�K��
�K 
cobj� l  p t��J�I� [   p t��� o   q r�H�H 0 an_index  � m   r s�G�G �J  �I  � m   u w�F�F��� n  i l��� o   j l�E�E 0 	_contents  �  f   i j�M  �L  � n     ��� o   z |�D�D 0 	_contents  �  f   y z� ��� l  ~ ~�C�B�A�C  �B  �A  � ��� Z   ~ ����@�?� l  ~ ���>�=� ?   ~ ���� n  ~ ���� o    ��<�< 0 _n  �  f   ~ � o   � ��;�; 0 an_index  �>  �=  � r   � ���� [   � ���� l  � ���:�9� n  � ���� o   � ��8�8 0 _n  �  f   � ��:  �9  � m   � ��7�7 � n     ��� o   � ��6�6 0 _n  �  f   � ��@  �?  � ��� l  � ��5�4�3�5  �4  �3  � ��2� r   � ���� \   � ���� l  � ���1�0� n  � ���� o   � ��/�/ 0 _length  �  f   � ��1  �0  � m   � ��.�. � n     ��� o   � ��-�- 0 _length  �  f   � ��2  �p 0 n  � m    �,�, � n    ��� 1    �+
�+ 
leng� o    �*�* 0 indexes  �o  � � � l  � ��)�)    log "end delete_item"    � * l o g   " e n d   d e l e t e _ i t e m "  �( L   � � o   � ��'�' 
0 a_list  �(  o  l     �&�%�$�&  �%  �$   	 l      �#
�#  
nh!
@abstruct
Obtain an item specified with an index number. When a list of indexes is passed as an argument, multiple items will be obtained.
@param an_index(integer or list of integer) : 
an index number or a list of indexes of the items to obtain
@result anything : 
Return an_index th item. error number -1728 will be rased when an item can not be obtained.
    �� ! 
 @ a b s t r u c t 
 O b t a i n   a n   i t e m   s p e c i f i e d   w i t h   a n   i n d e x   n u m b e r .   W h e n   a   l i s t   o f   i n d e x e s   i s   p a s s e d   a s   a n   a r g u m e n t ,   m u l t i p l e   i t e m s   w i l l   b e   o b t a i n e d . 
 @ p a r a m   a n _ i n d e x ( i n t e g e r   o r   l i s t   o f   i n t e g e r )   :   
 a n   i n d e x   n u m b e r   o r   a   l i s t   o f   i n d e x e s   o f   t h e   i t e m s   t o   o b t a i n 
 @ r e s u l t   a n y t h i n g   :   
 R e t u r n   a n _ i n d e x   t h   i t e m .   e r r o r   n u m b e r   - 1 7 2 8   w i l l   b e   r a s e d   w h e n   a n   i t e m   c a n   n o t   b e   o b t a i n e d . 
	  i   j m I      �"�!�" 0 item_at   �  o      �� 0 an_index  �   �!   k     B  Z     �� >     n      m    �
� 
pcls o     �� 0 an_index   m    �
� 
list L     n     4    �
� 
cobj o    �� 0 an_index   n    !  o   	 �� 0 	_contents  !  f    	�  �   "#" l   ����  �  �  # $%$ r    &'& J    ��  ' o      �� 
0 a_list  % ()( r    "*+* I     �,�� 0 	make_with  , -�- o    �� 0 an_index  �  �  + o      �� 0 
index_list  ) ./. V   # ?010 r   - :232 n   - 7454 4   0 7�6
� 
cobj6 l  1 67��
7 n  1 6898 I   2 6�	���	 0 next  �  �  9 o   1 2�� 0 	inde_list  �  �
  5 n  - 0:;: o   . 0�� 0 	_contents  ;  f   - .3 n      <=<  ;   8 9= o   7 8�� 
0 a_list  1 n  ' ,>?> I   ( ,���� 0 has_next  �  �  ? o   ' (� �  0 
index_list  / @��@ L   @ BAA o   @ A���� 
0 a_list  ��   BCB l     ��������  ��  ��  C DED l      ��FG��  F � �!
@abstruct
Obtain items between two indexes.
@param s_index(integer) : 
the first index number
@param e_index(integer) : 
the last index number
@result XList : 
An XList instance of elements from s_index to e_index
   G �HH� ! 
 @ a b s t r u c t 
 O b t a i n   i t e m s   b e t w e e n   t w o   i n d e x e s . 
 @ p a r a m   s _ i n d e x ( i n t e g e r )   :   
 t h e   f i r s t   i n d e x   n u m b e r 
 @ p a r a m   e _ i n d e x ( i n t e g e r )   :   
 t h e   l a s t   i n d e x   n u m b e r 
 @ r e s u l t   X L i s t   :   
 A n   X L i s t   i n s t a n c e   o f   e l e m e n t s   f r o m   s _ i n d e x   t o   e _ i n d e x 
E IJI i   n qKLK I      ��M���� 0 items_in_range  M NON o      ���� 0 s_index  O P��P o      ���� 0 e_index  ��  ��  L L     QQ I     ��R���� 0 	make_with  R S��S n    TUT 7   ��VW
�� 
cobjV o    
���� 0 s_index  W o    ���� 0 e_index  U n   XYX o    ���� 0 	_contents  Y  f    ��  ��  J Z[Z l     ��������  ��  ��  [ \]\ l      ��^_��  ^ � �!
@abstruct
set an item at a specified index.
@description
A synonym of ((<set_item_at>)).
@param an_index(integer) : 
an index number of the item to set
   _ �``4 ! 
 @ a b s t r u c t 
 s e t   a n   i t e m   a t   a   s p e c i f i e d   i n d e x . 
 @ d e s c r i p t i o n 
 A   s y n o n y m   o f   ( ( < s e t _ i t e m _ a t > ) ) . 
 @ p a r a m   a n _ i n d e x ( i n t e g e r )   :   
 a n   i n d e x   n u m b e r   o f   t h e   i t e m   t o   s e t 
] aba i   r ucdc I      ����e�� 0 set_item  ��  e ��fg
�� 
for f o      ���� 0 a_value  g ��h��
�� 
at  h o      ���� 0 an_index  ��  d r     iji o     ���� 0 a_value  j n      klk 4    ��m
�� 
cobjm o    ���� 0 an_index  l n   non o    ���� 0 	_contents  o  f    b pqp l     ��������  ��  ��  q rsr l      ��tu��  t � �!
@abstruct
set an item at a specified index.
@description
A synonym of ((<set_item>)).
@param an_index(integer) : 
an index number of the item to set
   u �vv. ! 
 @ a b s t r u c t 
 s e t   a n   i t e m   a t   a   s p e c i f i e d   i n d e x . 
 @ d e s c r i p t i o n 
 A   s y n o n y m   o f   ( ( < s e t _ i t e m > ) ) . 
 @ p a r a m   a n _ i n d e x ( i n t e g e r )   :   
 a n   i n d e x   n u m b e r   o f   t h e   i t e m   t o   s e t 
s wxw i   v yyzy I      ��{���� 0 set_item_at  { |}| o      ���� 0 a_value  } ~��~ o      ���� 0 an_index  ��  ��  z r     � o     ���� 0 a_value  � n      ��� 4    ���
�� 
cobj� o    ���� 0 an_index  � n   ��� o    ���� 0 	_contents  �  f    x ��� l     ��������  ��  ��  � ��� l      ������  � � �!
@abstruct
Exchange items specified with indexes
@param index1(integer) : 
first index of an element to exchange
@param index2 (integer) : 
second index of an element to exchange
   � ���h ! 
 @ a b s t r u c t 
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
0 index2  � n   ��� o    ���� 0 	_contents  �  f    ��  � ��� l     ��������  ��  ��  � ��� l      ������  � � �!
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
� ��� i   ~ ���� I      ������� 0 has_item  � ���� o      ���� 0 an_item  ��  ��  � L     �� E    ��� n    ��� o    ���� 0 	_contents  �  f     � o    ���� 0 an_item  � ��� l     ��������  ��  ��  � ��� l      ������  � � �!
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
cobj� o   & '���� 0 n  � n  " %��� o   # %���� 0 	_contents  �  f   " #� o   ( )���� 0 an_item  � k   - 2�� ��� r   - 0��� o   - .���� 0 n  � o      ���� 0 an_index  � ����  S   1 2��  ��  ��  �� 0 n  � m    ���� � n   ��� o    ���� 0 _length  �  f    ��  � ��� l  < <��������  ��  ��  � ���� L   < >�� o   < =���� 0 an_index  ��  � ��� l     ��������  ��  ��  � � � l      ����   > 8!
@abstruct
return a copy of stored list.
@result list 
    � p ! 
 @ a b s t r u c t 
 r e t u r n   a   c o p y   o f   s t o r e d   l i s t . 
 @ r e s u l t   l i s t   
   i   � � I      �������� 0 	all_items  ��  ��   k     	 	
	 s      n     o    ���� 0 	_contents    f      o      ���� 
0 a_list  
 �� L    	 o    �� 
0 a_list  ��    l     �~�}�|�~  �}  �|    l     �{�z�y�{  �z  �y    l      �x�x   � �!
@abstruct Return the stored list.
@description
Changing elements in retuend list means changing contents of the XList instance.
When you use this mehtod, you should not change the contents of retunrend list.
@result list 
    �� ! 
 @ a b s t r u c t   R e t u r n   t h e   s t o r e d   l i s t . 
 @ d e s c r i p t i o n 
 C h a n g i n g   e l e m e n t s   i n   r e t u e n d   l i s t   m e a n s   c h a n g i n g   c o n t e n t s   o f   t h e   X L i s t   i n s t a n c e . 
 W h e n   y o u   u s e   t h i s   m e h t o d ,   y o u   s h o u l d   n o t   c h a n g e   t h e   c o n t e n t s   o f   r e t u n r e n d   l i s t . 
 @ r e s u l t   l i s t   
  i   � � I      �w�v�u�w 0 as_list  �v  �u   L      n      o    �t�t 0 	_contents     f      !"! l     �s�r�q�s  �r  �q  " #$# l      �p%&�p  % � �!
@abstruct A synonym of ((<as_list>)).
@description
return the stored list. 

Changing elements in retuend list means changing contents of the XList instance.
It is recommended not to use this method.
@result list 
   & �''� ! 
 @ a b s t r u c t   A   s y n o n y m   o f   ( ( < a s _ l i s t > ) ) . 
 @ d e s c r i p t i o n 
 r e t u r n   t h e   s t o r e d   l i s t .   
 
 C h a n g i n g   e l e m e n t s   i n   r e t u e n d   l i s t   m e a n s   c h a n g i n g   c o n t e n t s   o f   t h e   X L i s t   i n s t a n c e . 
 I t   i s   r e c o m m e n d e d   n o t   t o   u s e   t h i s   m e t h o d . 
 @ r e s u l t   l i s t   
$ ()( i   � �*+* I      �o�n�m�o 0 list_ref  �n  �m  + l    ,-., L     // n    010 o    �l�l 0 	_contents  1  f     -   deprecated   . �22    d e p r e c a t e d) 343 l     �k�j�i�k  �j  �i  4 565 l     �h�g�f�h  �g  �f  6 787 l      �e9:�e  9 } w!
@abstruct
Add each item contained passed list at end of the reciver's XList instance.
@param a_list(list)
@result me
   : �;; � ! 
 @ a b s t r u c t 
 A d d   e a c h   i t e m   c o n t a i n e d   p a s s e d   l i s t   a t   e n d   o f   t h e   r e c i v e r ' s   X L i s t   i n s t a n c e . 
 @ p a r a m   a _ l i s t ( l i s t ) 
 @ r e s u l t   m e 
8 <=< i   � �>?> I      �d@�c�d 0 add_from_list  @ A�bA o      �a�a 
0 a_list  �b  �c  ? k     BB CDC r     	EFE b     GHG n    IJI o    �`�` 0 	_contents  J  f     H o    �_�_ 
0 a_list  F n     KLK o    �^�^ 0 	_contents  L  f    D MNM r   
 OPO [   
 QRQ l  
 S�]�\S n  
 TUT o    �[�[ 0 _length  U  f   
 �]  �\  R l   V�Z�YV I   �XW�W
�X .corecnte****       ****W o    �V�V 
0 a_list  �W  �Z  �Y  P n     XYX o    �U�U 0 _length  Y  f    N Z�TZ L    [[  f    �T  = \]\ l     �S�R�Q�S  �R  �Q  ] ^_^ l      �P`a�P  ` ! !@group Conversion to Text    a �bb 6 ! @ g r o u p   C o n v e r s i o n   t o   T e x t  _ cdc l     �O�N�M�O  �N  �M  d efe l      �Lgh�L  g � � deprecated
@abstruct
Join every elements with given a delimiter as ((<XText>))
@param a_delimiter (string or Unicode text): 
text to be used as a delimiter to join text list
@result script object : a ((<XText>)) instance
   h �ii�   d e p r e c a t e d 
 @ a b s t r u c t 
 J o i n   e v e r y   e l e m e n t s   w i t h   g i v e n   a   d e l i m i t e r   a s   ( ( < X T e x t > ) ) 
 @ p a r a m   a _ d e l i m i t e r   ( s t r i n g   o r   U n i c o d e   t e x t ) :   
 t e x t   t o   b e   u s e d   a s   a   d e l i m i t e r   t o   j o i n   t e x t   l i s t 
 @ r e s u l t   s c r i p t   o b j e c t   :   a   ( ( < X T e x t > ) )   i n s t a n c e 
f jkj i   � �lml I      �Kn�J�K 0 as_xtext_with  n o�Io o      �H�H 0 a_delimiter  �I  �J  m k     pp qrq p      ss �G�F�G 0 xtext XText�F  r tut r     vwv I     �Ex�D�E 0 as_text_with  x y�Cy o    �B�B 0 a_delimiter  �C  �D  w o      �A�A 
0 a_text  u z�@z L   	 {{ n  	 |}| I   
 �?~�>�? 0 	make_with  ~ �= o   
 �<�< 
0 a_text  �=  �>  } o   	 
�;�; 0 xtext XText�@  k ��� l     �:�9�8�:  �9  �8  � ��� l     �7�6�5�7  �6  �5  � ��� l      �4���4  � � �!
@abstruct A synonym of ((<as_unicode_with>)). 
Join every elements by given a delimiter as Unicode text.
@param a_delimiter (string or Unicode text): 
text to be used as a delimiter to join text list
@result Unicode text
   � ���� ! 
 @ a b s t r u c t   A   s y n o n y m   o f   ( ( < a s _ u n i c o d e _ w i t h > ) ) .   
 J o i n   e v e r y   e l e m e n t s   b y   g i v e n   a   d e l i m i t e r   a s   U n i c o d e   t e x t . 
 @ p a r a m   a _ d e l i m i t e r   ( s t r i n g   o r   U n i c o d e   t e x t ) :   
 t e x t   t o   b e   u s e d   a s   a   d e l i m i t e r   t o   j o i n   t e x t   l i s t 
 @ r e s u l t   U n i c o d e   t e x t 
� ��� i   � ���� I      �3��2�3 0 as_text_with  � ��1� o      �0�0 0 a_delimiters  �1  �2  � k     �� ��� r     ��� o     �/�/ 0 a_delimiters  � 1    �.
�. 
txdl� ��-� L    �� c    ��� n   	��� o    	�,�, 0 	_contents  �  f    � m   	 
�+
�+ 
utxt�-  � ��� l     �*�)�(�*  �)  �(  � ��� l      �'���'  � � �!
@abstruct
Join every elements by given a delimiter as Unicode text
@param a_delimiter (string or Unicode text): 
text to be used as a delimiter to join text list
@result Unicode text
   � ���r ! 
 @ a b s t r u c t 
 J o i n   e v e r y   e l e m e n t s   b y   g i v e n   a   d e l i m i t e r   a s   U n i c o d e   t e x t 
 @ p a r a m   a _ d e l i m i t e r   ( s t r i n g   o r   U n i c o d e   t e x t ) :   
 t e x t   t o   b e   u s e d   a s   a   d e l i m i t e r   t o   j o i n   t e x t   l i s t 
 @ r e s u l t   U n i c o d e   t e x t 
� ��� i   � ���� I      �&��%�& 0 as_unicode_with  � ��$� o      �#�# 0 a_delimiter  �$  �%  � L     �� I     �"��!�" 0 as_text_with  � �� � o    �� 0 a_delimiter  �   �!  � ��� l     ����  �  �  � ��� l      ����  � � �!
@abstruct
Join every elements with given a delimiter as string
@param a_delimiter (string or Unicode text): 
text to be used as a delimiter to join text list
@result string
   � ���^ ! 
 @ a b s t r u c t 
 J o i n   e v e r y   e l e m e n t s   w i t h   g i v e n   a   d e l i m i t e r   a s   s t r i n g 
 @ p a r a m   a _ d e l i m i t e r   ( s t r i n g   o r   U n i c o d e   t e x t ) :   
 t e x t   t o   b e   u s e d   a s   a   d e l i m i t e r   t o   j o i n   t e x t   l i s t 
 @ r e s u l t   s t r i n g 
� ��� i   � ���� I      ���� 0 as_string_with  � ��� o      �� 0 a_delimiter  �  �  � k     �� ��� r     ��� o     �� 0 a_delimiter  � 1    �
� 
txdl� ��� L    �� c    ��� n   	��� o    	�� 0 	_contents  �  f    � m   	 
�
� 
TEXT�  � ��� l     ����  �  �  � ��� l      ����  ���!
@abstruct
Return instance of given class object by passing a text joining the list.
@description
Equivalent to the following:

class_object's make_with(x_text's as_list_with(a_delimiters)
	
It is assumed XText is given to the class_object parameter.

@param a_delimiter (text) :  text to be used as a delimiter to join text list
@param class_object (script) :  a class to make an instance with accepting a text.
@result script : instance of class_object
   � ���� ! 
 @ a b s t r u c t 
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
� ��� i   � ���� I      ���� 0 join_as  � ��� o      �� 0 
a_delimter  � ��
� o      �	�	 0 class_object  �
  �  � L     �� n    ��� I    ���� 0 	make_with  � ��� I    ���� 0 as_text_with  � ��� o    �� 0 	delimiter  �  �  �  �  � o     �� 0 class_object  � ��� l     � �����   ��  ��  � ��� l      ������  � &  !@group Loop with Script Object    � ��� @ ! @ g r o u p   L o o p   w i t h   S c r i p t   O b j e c t  � ��� l     ��������  ��  ��  � ��� l      ������  ���!@abstruct
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
�� boovfals�  S     ��  ��  �� 0 an_item  � n   ��� o    ���� 0 	_contents  �  f    � ���� L   * ,��  f   * +��  � � � l     ��������  ��  ��     l      ����  ��!@abstruct
Repeat to call do handler of given script object with passing a reference to each item in the XList as an argument without stopping.
@description 
The parameter �gblock�h is a script object which have a do handler accepting only one argument. 
A difference from ((<each>)) is that a result of do handler is igrored to gain performance.
Threre is no way to stop repeating.
@param
block (script object) : must have a do handler which require only argument.
@result me
    �� ! @ a b s t r u c t 
 R e p e a t   t o   c a l l   d o   h a n d l e r   o f   g i v e n   s c r i p t   o b j e c t   w i t h   p a s s i n g   a   r e f e r e n c e   t o   e a c h   i t e m   i n   t h e   X L i s t   a s   a n   a r g u m e n t   w i t h o u t   s t o p p i n g . 
 @ d e s c r i p t i o n   
 T h e   p a r a m e t e r    b l o c k    i s   a   s c r i p t   o b j e c t   w h i c h   h a v e   a   d o   h a n d l e r   a c c e p t i n g   o n l y   o n e   a r g u m e n t .   
 A   d i f f e r e n c e   f r o m   ( ( < e a c h > ) )   i s   t h a t   a   r e s u l t   o f   d o   h a n d l e r   i s   i g r o r e d   t o   g a i n   p e r f o r m a n c e . 
 T h r e r e   i s   n o   w a y   t o   s t o p   r e p e a t i n g . 
 @ p a r a m 
 b l o c k   ( s c r i p t   o b j e c t )   :   m u s t   h a v e   a   d o   h a n d l e r   w h i c h   r e q u i r e   o n l y   a r g u m e n t . 
 @ r e s u l t   m e 
  i   � �	 I      ��
���� 0 	each_rush  
 �� o      ���� 	0 block  ��  ��  	 k     "  X     �� n    I    ������ 0 do   �� n     1    ��
�� 
pcnt o    ���� 0 an_item  ��  ��   o    ���� 	0 block  �� 0 an_item   n    o    ���� 0 	_contents    f     �� L     "  f     !��    l     ��������  ��  ��    l      �� ��  ��!@abstruct
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
     �!!v ! @ a b s t r u c t 
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
 "#" i   � �$%$ I      ��&���� 0 	enumerate  & '��' o      ���� 	0 block  ��  ��  % k     *(( )*) I     �������� 	0 reset  ��  ��  * +��+ V    *,-, Z    %./����. =   010 n   232 I    ��4���� 0 do  4 565 I    �������� 0 next  ��  ��  6 7��7  f    ��  ��  3 o    ���� 	0 block  1 m    ��
�� boovfals/  S     !��  ��  - I   
 �������� 0 has_next  ��  ��  ��  # 898 l     ��������  ��  ��  9 :;: l      ��<=��  <��!@abstruct 
Repeat to call do handler of given script object with passing each element as an argument. 
A XList consisting of the results of do handler is returned.

@description 
A parameter �gblock�h is a script object which have a do handler accpepting only one argument.

Each element in the target XList will be passed to the do handler.

@param block (script object) : must have a do handler which require only argument.
@result Instance of XList
   = �>>� ! @ a b s t r u c t   
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
; ?@? i   � �ABA I      ��C���� 0 map  C D��D o      ���� 	0 block  ��  ��  B k     1EE FGF r     	HIH I     ��J���� 0 	make_with  J K��K J    ����  ��  ��  I o      ���� 0 
new_x_list  G LML X   
 .N��ON r    )PQP l   $R����R n   $STS I    $��U���� 0 do  U V��V n     WXW 1     ��
�� 
pcntX o    ���� 0 an_item  ��  ��  T o    ���� 	0 block  ��  ��  Q n      YZY  ;   ' (Z n   $ '[\[ o   % '���� 0 	_contents  \ o   $ %���� 0 
new_x_list  �� 0 an_item  O n   ]^] o    ���� 0 	_contents  ^  f    M _��_ L   / 1`` o   / 0���� 0 
new_x_list  ��  @ aba l     ��������  ��  ��  b cdc l      ��ef��  e��!@abstruct
Repeat to call do handler of given script object with passing each element as an argument.
An AppleScript's list of the results of do handler is returned.

@description 
A parameter �gblock�h is a script object which have a do handler accpepting only one argument.

Each elements in the target XList will be passed to the do handler.

@param block(script object) :
must have a do handler which require one argument.
@result list
   f �ggl ! @ a b s t r u c t 
 R e p e a t   t o   c a l l   d o   h a n d l e r   o f   g i v e n   s c r i p t   o b j e c t   w i t h   p a s s i n g   e a c h   e l e m e n t   a s   a n   a r g u m e n t . 
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
d hih i   � �jkj I      ��l���� 0 map_as_list  l m��m o      ���� 	0 block  ��  ��  k L     nn n    
opo I    
�������� 0 as_list  ��  ��  p I     ��q���� 0 map  q r��r o    ���� 	0 block  ��  ��  i sts l     ��������  ��  ��  t uvu l      ��wx��  w * $!@group Make a copy of the instance    x �yy H ! @ g r o u p   M a k e   a   c o p y   o f   t h e   i n s t a n c e  v z{z l     ��������  ��  ��  { |}| l      ��~��  ~ � �!@abstruct
Make a new instance which share internal list with the original.
The internal counter for the iterator will be copied.
@result XList
    ���  ! @ a b s t r u c t 
 M a k e   a   n e w   i n s t a n c e   w h i c h   s h a r e   i n t e r n a l   l i s t   w i t h   t h e   o r i g i n a l . 
 T h e   i n t e r n a l   c o u n t e r   f o r   t h e   i t e r a t o r   w i l l   b e   c o p i e d . 
 @ r e s u l t   X L i s t 
} ��� i   � ���� I      �������� 0 shallow_copy  ��  ��  � k     �� ��� r     
��� n    ��� I    ������� 0 	make_with  � ���� n   ��� o    ���� 0 	_contents  �  f    ��  ��  �  f     � o      ���� 
0 x_list  � ��� r    ��� n   ��� o    ���� 0 _n  �  f    � n     ��� o    ���� 0 _n  � o    ���� 
0 x_list  � ���� L    �� o    ���� 
0 x_list  ��  � ��� l     ��~�}�  �~  �}  � ��� l      �|���|  � f `!@abstruct
Make a new instance which have copied internal list from the original.
@result XList
   � ��� � ! @ a b s t r u c t 
 M a k e   a   n e w   i n s t a n c e   w h i c h   h a v e   c o p i e d   i n t e r n a l   l i s t   f r o m   t h e   o r i g i n a l . 
 @ r e s u l t   X L i s t 
� ��� i   � ���� I      �{�z�y�{ 0 	deep_copy  �z  �y  � k     �� ��� r     ��� n    
��� I    
�x��w�x 0 	make_with  � ��v� I    �u�t�s�u 0 	all_items  �t  �s  �v  �w  �  f     � o      �r�r 
0 x_list  � ��� r    ��� n   ��� o    �q�q 0 _n  �  f    � n     ��� o    �p�p 0 _n  � o    �o�o 
0 x_list  � ��n� L    �� o    �m�m 
0 x_list  �n  � ��� l     �l�k�j�l  �k  �j  � ��� l      �i���i  � a [!@abstruct
Make a shallow copy with resetting the internal iterator counter.
@result XList
   � ��� � ! @ a b s t r u c t 
 M a k e   a   s h a l l o w   c o p y   w i t h   r e s e t t i n g   t h e   i n t e r n a l   i t e r a t o r   c o u n t e r . 
 @ r e s u l t   X L i s t 
� ��� i   � ���� I      �h�g�f�h 0 iterator  �g  �f  � L     	�� n    ��� I    �e��d�e 0 	make_with  � ��c� n   ��� o    �b�b 0 	_contents  �  f    �c  �d  �  f     � ��� l     �a�`�_�a  �`  �_  � ��� i   � ���� I     �^�]�\
�^ .ascrcmnt****      � ****�]  �\  � O    ��� I   �[��Z
�[ .ascrcmnt****      � ****� l   	��Y�X� n   	��� I    	�W�V�U�W 0 dump  �V  �U  �  f    �Y  �X  �Z  � 1     �T
�T 
ascr� ��� l     �S�R�Q�S  �R  �Q  � ��� i   � ���� I      �P�O�N�P 0 dump  �O  �N  � k     %�� ��� h     �M��M 0 xlistdumper XListDumper� k      �� ��� j     �L��L 0 an_index  � m     �K�K  � ��J� i    ��� I      �I��H�I 0 do  � ��G� o      �F�F 0 an_item  �G  �H  � k     6�� ��� r     ��� [     ��� o     �E�E 0 an_index  � m    �D�D � o      �C�C 0 an_index  � ��� r    ��� l   ��B�A� c    ��� o    �@�@ 0 an_index  � m    �?
�? 
utxt�B  �A  � o      �>�> 
0 output  � ��� Z    /���=�� =   ��� n    ��� m    �<
�< 
pcls� o    �;�; 0 an_item  � m    �:
�: 
scpt� r     '   n    % I   ! %�9�8�7�9 0 dump  �8  �7   o     !�6�6 0 an_item   o      �5�5 0 	dump_data  �=  � r   * / c   * - o   * +�4�4 0 an_item   m   + ,�3
�3 
utxt o      �2�2 0 	dump_data  � �1 L   0 6		 b   0 5

 b   0 3 o   0 1�0�0 
0 output   1   1 2�/
�/ 
tab  o   3 4�.�. 0 	dump_data  �1  �J  �  r     I    �-�,�- 0 map   �+ o   	 
�*�* 0 xlistdumper XListDumper�+  �,   o      �)�) 0 	dump_list    n    I    �(�'�( 0 unshift   �& b     b     m     �  [ n    !  1    �%
�% 
pnam!  f     m    "" �##  ]�&  �'   o    �$�$ 0 	dump_list   $�#$ L    %%% n   $&'& I    $�"(�!�" 0 as_unicode_with  ( )� ) o     �
� 
ret �   �!  ' o    �� 0 	dump_list  �#  � *+* l     ����  �  �  + ,-, l      �./�  .  == private    / �00  = =   p r i v a t e  - 121 i   � �343 I      ���� 	0 debug  �  �  4 k     J55 676 O     898 k    :: ;<; I    �=�� 	0 setup  = >�>  f    	�  �  < ?�? r    @A@ I    �B�� 0 load  B C�C m    DD �EE  U n i t T e s t�  �  A o      �� 0 test Test�  9 4     �F
� 
scptF m    GG �HH  M o d u l e L o a d e r7 IJI r    #KLK I    !�M�� 0 	make_with  M N�N J    OO PQP m    RR �SS  aQ T�
T m    UU �VV  b�
  �  �  L o      �	�	 
0 a_list  J WXW n  $ *YZY I   % *�[�� 0 	delete_at  [ \�\ m   % &�� �  �  Z o   $ %�� 
0 a_list  X ]^] n  + :_`_ I   , :�a�� 0 assert_true  a bcb =  , 5ded n  , 1fgf I   - 1�� ��� 0 as_list  �   ��  g o   , -���� 
0 a_list  e J   1 4hh i��i m   1 2jj �kk  b��  c l��l m   5 6mm �nn $ F a i l d   t o   d e l e t e _ a t��  �  ` o   + ,���� 0 test Test^ opo I  ; @��q��
�� .corecnte****       ****q o   ; <���� 
0 a_list  ��  p r��r n  A Jsts I   B J��u���� 0 assert_true  u vwv =  B Exyx 1   B C��
�� 
rslty m   C D���� w z��z m   E F{{ �||  F a i l d   t o   c o u n t��  ��  t o   A B���� 0 test Test��  2 }~} l     ��������  ��  ��  ~ � i   � ���� I      �������� 0 open_helpbook  ��  ��  � Q     ,���� O   ��� I   
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
�� .corecrel****      � null��  ��  �  � ���� 0 	make_with  �� 	*jvk+  � �� F���������� 0 	make_with  �� ����� �  ���� 
0 a_list  ��  � ��~�}� 
0 a_list  �~ 0 a_parent  �} 0 xlistinstance XListInstance� �| O��| 0 xlistinstance XListInstance� �{��z�y���x
�{ .ascrinit****      � ****� k     ��  Q��  T��  W��  [�w�w  �z  �y  � �v�u�t�s
�v 
pare�u 0 	_contents  �t 0 _length  �s 0 _n  � �r�q�p�o�n
�r 
pare�q 0 	_contents  
�p .corecnte****       ****�o 0 _length  �n 0 _n  �x b  N  Ob   �Ob   j �Ok��� )E�O��K S�� �m g�l�k���j�m 0 make_with_list  �l �i��i �  �h�h 
0 a_list  �k  � �g�g 
0 a_list  � �f�f 0 	make_with  �j *�k+  � �e w�d�c���b�e 0 make_with_text  �d �a��a �  �`�_�` 
0 a_text  �_ 0 a_delimiter  �c  � �^�]�\�[�^ 
0 a_text  �] 0 a_delimiter  �\ 0 	pre_delim  �[ 
0 a_list  � �Z�Y�X�W
�Z 
ascr
�Y 
txdl
�X 
citm�W 0 	make_with  �b  ��,E�O���,FO��-E�O���,FO*�k+ � �V ��U�T���S�V 0 make_with_xtext  �U �R��R �  �Q�P�Q 
0 x_text  �P 0 
delimiters  �T  � �O�N�O 
0 x_text  �N 0 
delimiters  � �M�L�M 0 as_list_with  �L 0 	make_with  �S *��k+  k+ � �K ��J�I���H�K 0 next  �J  �I  � �G�F�G 0 an_item  �F 0 msg  � 
�E�D�C�B��A�@�? ��>�E 0 	_contents  
�D 
cobj�C 0 _n  �B 0 msg  � �=�<�;
�= 
errn�<�@�;  �A 0 _length  
�@ 
errn�?G�>�@�H = )�,�)�,E/E�W  X  )�,)�, )��l�Y )��l�O)�,k)�,FO�� �: ��9�8���7�: 0 	next_item  �9  �8  �  � �6�6 0 next  �7 *j+  � �5�4�3���2�5 0 has_next  �4  �3  �  � �1�0�1 0 _n  �0 0 _length  �2 	)�,)�,� �/�.�-� �,�/ 0 current_item  �.  �-  �    �+�*�)�+ 0 	_contents  
�* 
cobj�) 0 _n  �, )�,�)�,k/E� �(1�'�&�%�( 0 current_index  �'  �&     �$�$ 0 _n  �% )�,k� �#B�"�!� �# 0 decrement_index  �"  �!     �� 0 _n  �  )�,k )�,k)�,FY h� �\���� 0 increment_index  �  �     �� 0 _n  � )�,k )�,k)�,FY h� �v���� 	0 reset  �  �     �� 0 _n  � 	k)�,FO)� ����	
�� 0 push  � ��   �� 0 an_item  �  	 �� 0 an_item  
 ��� 0 	_contents  � 0 _length  � �)�,6FO)�,k)�,F� ���
�	�� 0 pop  �
  �	   �� 0 a_result   ������� � 0 	_contents  
� 
cobj�  �  
� 
msng����  0 _length  � F )�,�i/E�W 	X  �O )�,[�\[Zk\Z�2)�,FW X  jv)�,FO)�,k)�,FO�� ����������� 0 unshift  �� ����   ���� 0 an_item  ��   ���� 0 an_item   �������� 0 	_contents  �� 0 increment_index  �� 0 _length  �� �)�,5FO*j+ O)�,k)�,FO)� ���������� 	0 shift  ��  ��   ���� 0 a_result   ������������������ 0 	_contents  
�� 
cobj��  ��  
�� 
msng
�� 
rest�� 0 decrement_index  �� 0 _length  �� 3 )�,�k/E�W 	X  �O)�,�,)�,FO*j+ O)�,k)�,FO�� ��N�������� 0 count_items  ��  ��     ������ 0 	_contents  
�� .corecnte****       ****�� 	)�,j � ��X�������� 0 item_counts  ��  ��     ������ 0 	_contents  
�� .corecnte****       ****�� 	)�,j � ��b������
�� .corecnte****       ****��  ��     ������ 0 	_contents  
�� .corecnte****       ****�� 	)�,j � ��q�������� 0 	delete_at  �� ����   ���� 0 indexes  ��   ���������� 0 indexes  �� 
0 a_list  �� 0 n  �� 0 an_index   ����������������
�� 
list
�� 
leng
�� 
cobj�� 0 	_contents  
�� 
rest�� 0 _length  ������ 0 _n  �� ���&E�OjvE�O �k��,Ekh ��/E�O)�,�/�6FO�k  )�,�,)�,FY D)�,ilv� )�,[�\[Zk\Z�2)�,FY %)�,[�\[Zk\Z�k2)�,[�\[Z�k\Zi2%)�,FO)�,� )�,k)�,FY hO)�,k)�,F[OY�uO�� ���������� 0 item_at  �� ����   ���� 0 an_index  ��   ���������� 0 an_index  �� 
0 a_list  �� 0 
index_list  �� 0 	inde_list   ��������������
�� 
pcls
�� 
list�� 0 	_contents  
�� 
cobj�� 0 	make_with  �� 0 has_next  �� 0 next  �� C��,� )�,�/EY hOjvE�O*�k+ E�O h�j+ )�,�j+ /�6F[OY��O�� ��L���� ���� 0 items_in_range  �� ��!�� !  ������ 0 s_index  �� 0 e_index  ��   ������ 0 s_index  �� 0 e_index    �������� 0 	_contents  
�� 
cobj�� 0 	make_with  �� *)�,[�\[Z�\Z�2k+ � ��d����"#���� 0 set_item  ��  �� ����$
�� 
for �� 0 a_value  $ ������
�� 
at  �� 0 an_index  ��  " ������ 0 a_value  �� 0 an_index  # ������ 0 	_contents  
�� 
cobj�� 	�)�,�/F� ��z����%&���� 0 set_item_at  �� ��'�� '  ������ 0 a_value  �� 0 an_index  ��  % ������ 0 a_value  �� 0 an_index  & ������ 0 	_contents  
�� 
cobj�� 	�)�,�/F� �������()���� 0 exchange_items  �� ��*�� *  ������ 
0 index1  �� 
0 index2  ��  ( �������� 
0 index1  �� 
0 index2  �� 
0 a_buff  ) ������ 0 	_contents  
�� 
cobj��  )�,�/E�O)�,�/)�,�/FO�)�,�/F� �������+,���� 0 has_item  �� �-� -  �~�~ 0 an_item  ��  + �}�} 0 an_item  , �|�| 0 	_contents  �� )�,�� �{��z�y./�x�{ 0 index_of  �z �w0�w 0  �v�v 0 an_item  �y  . �u�t�s�u 0 an_item  �t 0 an_index  �s 0 n  / �r�q�p�o�r 0 has_item  �q 0 _length  �p 0 	_contents  
�o 
cobj�x ?*�k+   jY hOjE�O %k)�,Ekh )�,�/�  
�E�OY h[OY��O�� �n�m�l12�k�n 0 	all_items  �m  �l  1 �j�j 
0 a_list  2 �i�i 0 	_contents  �k 
)�,EQ�O�� �h�g�f34�e�h 0 as_list  �g  �f  3  4 �d�d 0 	_contents  �e )�,E� �c+�b�a56�`�c 0 list_ref  �b  �a  5  6 �_�_ 0 	_contents  �` )�,E� �^?�]�\78�[�^ 0 add_from_list  �] �Z9�Z 9  �Y�Y 
0 a_list  �\  7 �X�X 
0 a_list  8 �W�V�U�W 0 	_contents  �V 0 _length  
�U .corecnte****       ****�[ )�,�%)�,FO)�,�j )�,FO)� �Tm�S�R:;�Q�T 0 as_xtext_with  �S �P<�P <  �O�O 0 a_delimiter  �R  : �N�M�N 0 a_delimiter  �M 
0 a_text  ; �L�K�J�L 0 as_text_with  �K 0 xtext XText�J 0 	make_with  �Q *�k+  E�O��k+ � �I��H�G=>�F�I 0 as_text_with  �H �E?�E ?  �D�D 0 a_delimiters  �G  = �C�C 0 a_delimiters  > �B�A�@
�B 
txdl�A 0 	_contents  
�@ 
utxt�F �*�,FO)�,�&� �?��>�=@A�<�? 0 as_unicode_with  �> �;B�; B  �:�: 0 a_delimiter  �=  @ �9�9 0 a_delimiter  A �8�8 0 as_text_with  �< *�k+  � �7��6�5CD�4�7 0 as_string_with  �6 �3E�3 E  �2�2 0 a_delimiter  �5  C �1�1 0 a_delimiter  D �0�/�.
�0 
txdl�/ 0 	_contents  
�. 
TEXT�4 �*�,FO)�,�&� �-��,�+FG�*�- 0 join_as  �, �)H�) H  �(�'�( 0 
a_delimter  �' 0 class_object  �+  F �&�%�$�& 0 
a_delimter  �% 0 class_object  �$ 0 	delimiter  G �#�"�# 0 as_text_with  �" 0 	make_with  �* �*�k+  k+ � �!�� �IJ��! 0 each  �  �K� K  �� 	0 block  �  I ��� 	0 block  � 0 an_item  J ������� 0 	_contents  
� 
kocl
� 
cobj
� .corecnte****       ****
� 
pcnt� 0 do  � - ()�,[��l kh ���,k+ f  Y h[OY��O)� �	��LM�� 0 	each_rush  � �N� N  �� 	0 block  �  L ��� 	0 block  � 0 an_item  M ��
�	���� 0 	_contents  
�
 
kocl
�	 
cobj
� .corecnte****       ****
� 
pcnt� 0 do  � # )�,[��l kh ���,k+ [OY��O)� �%��OP�� 0 	enumerate  � �Q� Q  � �  	0 block  �  O ���� 	0 block  P ���������� 	0 reset  �� 0 has_next  �� 0 next  �� 0 do  � +*j+  O #h*j+ �*j+ )l+ f  Y h[OY��� ��B����RS���� 0 map  �� ��T�� T  ���� 	0 block  ��  R �������� 	0 block  �� 0 
new_x_list  �� 0 an_item  S ���������������� 0 	make_with  �� 0 	_contents  
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
pcnt�� 0 do  �� 2*jvk+  E�O #)�,[��l kh ���,k+ ��,6F[OY��O�� ��k����UV���� 0 map_as_list  �� ��W�� W  ���� 	0 block  ��  U ���� 	0 block  V ������ 0 map  �� 0 as_list  �� *�k+  j+ � �������XY���� 0 shallow_copy  ��  ��  X ���� 
0 x_list  Y �������� 0 	_contents  �� 0 	make_with  �� 0 _n  �� ))�,k+ E�O)�,��,FO�� �������Z[���� 0 	deep_copy  ��  ��  Z ���� 
0 x_list  [ �������� 0 	all_items  �� 0 	make_with  �� 0 _n  �� )*j+  k+ E�O)�,��,FO�� �������\]���� 0 iterator  ��  ��  \  ] ������ 0 	_contents  �� 0 	make_with  �� 
))�,k+ � �������^_��
�� .ascrcmnt****      � ****��  ��  ^  _ ������
�� 
ascr�� 0 dump  
�� .ascrcmnt****      � ****�� � )j+ j U� �������`a���� 0 dump  ��  ��  ` ������ 0 xlistdumper XListDumper�� 0 	dump_list  a 
���b����"�������� 0 xlistdumper XListDumperb ��c����de��
�� .ascrinit****      � ****c k     ff �gg �����  ��  ��  d ������ 0 an_index  �� 0 do  e ��h�� 0 an_index  h �������ij���� 0 do  �� ��k�� k  ���� 0 an_item  ��  i �������� 0 an_item  �� 
0 output  �� 0 	dump_data  j ����������
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
ret �� 0 as_unicode_with  �� &��K S�O*�k+ E�O��)�,%�%k+ O��k+ 	� ��4����lm���� 	0 debug  ��  ��  l ������ 0 test Test�� 
0 a_list  m ��G��D��RU������jm������{
�� 
scpt�� 	0 setup  �� 0 load  �� 0 	make_with  �� 0 	delete_at  �� 0 as_list  �� 0 assert_true  
�� .corecnte****       ****
�� 
rslt�� K)��/ *)k+ O*�k+ E�UO*��lvk+ E�O�kk+ O��j+ 	�kv �l+ O�j O��k �l+ � �������no���� 0 open_helpbook  ��  ��  n ������ 0 msg  �� 	0 errno  o 	���������p������
�� 
scpt
�� .earsffdralis        afdr�� 0 do  �� 0 msg  p ������
�� 
errn�� 	0 errno  ��  
�� .miscactvnull��� ��� null
�� 
ret 
�� .sysodisAaleR        TEXT�� - )��/ *)j k+ UW X  *j O��%�%j � �������qr��
�� .aevtoappnull  �   � ****��  ��  q  r �� 0 open_helpbook  �� *j+  ascr  ��ޭ