FasdUAS 1.101.10   ��   ��    k             j     �� 
�� 
pnam  m        � 	 	 
 X L i s t   
  
 j    �� 
�� 
vers  m       �    1 . 6      l     ��������  ��  ��        j    �� �� 0 xtext XText  I   ������
�� .MoloMkMsMoSp    ��� TEXT��  ��        l     ��������  ��  ��        l      ��  ��    8 2!@references
XText || help:openbook='XText Help'     �   d ! @ r e f e r e n c e s  
 X T e x t   | |   h e l p : o p e n b o o k = ' X T e x t   H e l p '       l     ��������  ��  ��        l      ��   ��    � �!@title XList Reference* Version : 1.6* Author : Tetsuro KURITA ((<tkurita@mac.com>))XList provides a wapper object to treat AppleScript's list as iterator, stack and queue.      � ! !b ! @ t i t l e   X L i s t   R e f e r e n c e  *   V e r s i o n   :   1 . 6  *   A u t h o r   :   T e t s u r o   K U R I T A   ( ( < t k u r i t a @ m a c . c o m > ) )  X L i s t   p r o v i d e s   a   w a p p e r   o b j e c t   t o   t r e a t   A p p l e S c r i p t ' s   l i s t   a s   i t e r a t o r ,   s t a c k   a n d   q u e u e .    " # " l     ��������  ��  ��   #  $ % $ l      �� & '��   & ! !@group Constructor Method     ' � ( ( 6 ! @ g r o u p   C o n s t r u c t o r   M e t h o d   %  ) * ) l     ��������  ��  ��   *  + , + l      �� - .��   - a [!
@abstruct 
Meke an instance of empty XList.
@result script object : a new XList instance
    . � / / � ! 
 @ a b s t r u c t   
 M e k e   a n   i n s t a n c e   o f   e m p t y   X L i s t . 
 @ r e s u l t   s c r i p t   o b j e c t   :   a   n e w   X L i s t   i n s t a n c e 
 ,  0 1 0 i     2 3 2 I     ������
�� .corecrel****      � null��  ��   3 L      4 4 I     �� 5���� 0 	make_with   5  6�� 6 J    ����  ��  ��   1  7 8 7 l     ��������  ��  ��   8  9 : 9 l      �� ; <��   ; � �!
@abstruct 
Meke an instance of XList with given an AppleScript's  list object.
@param�@a_list (list)
@result script object : a new XList instance
    < � = =& ! 
 @ a b s t r u c t   
 M e k e   a n   i n s t a n c e   o f   X L i s t   w i t h   g i v e n   a n   A p p l e S c r i p t ' s     l i s t   o b j e c t . 
 @ p a r a m0  a _ l i s t   ( l i s t ) 
 @ r e s u l t   s c r i p t   o b j e c t   :   a   n e w   X L i s t   i n s t a n c e 
 :  > ? > i     @ A @ I      �� B���� 0 	make_with   B  C�� C o      ���� 
0 a_list  ��  ��   A k      D D  E F E r      G H G  f      H o      ���� 0 a_parent   F  I J I h    �� K�� 0 xlist XList K k       L L  M N M j     �� O
�� 
pare O o     ���� 0 a_parent   N  P Q P j   	 �� R�� 0 	_contents   R o   	 ���� 
0 a_list   Q  S T S j    �� U�� 0 _length   U I   �� V��
�� .corecnte****       **** V o    ���� 
0 a_list  ��   T  W�� W j    �� X�� 0 _n   X m    ���� ��   J  Y Z Y l   ��������  ��  ��   Z  [�� [ L     \ \ o    ���� 0 xlist XList��   ?  ] ^ ] l     ��������  ��  ��   ^  _ ` _ l      �� a b��   a � �!@abstructA synonym of ((<make_with>))@description
Meke an instance of XList with given an AppleScript's  list object.
@param�@a_list (list)
@result script object : a new XList instance
    b � c cx !  @ a b s t r u c t  A   s y n o n y m   o f   ( ( < m a k e _ w i t h > ) )  @ d e s c r i p t i o n 
 M e k e   a n   i n s t a n c e   o f   X L i s t   w i t h   g i v e n   a n   A p p l e S c r i p t ' s     l i s t   o b j e c t . 
 @ p a r a m0  a _ l i s t   ( l i s t ) 
 @ r e s u l t   s c r i p t   o b j e c t   :   a   n e w   X L i s t   i n s t a n c e 
 `  d e d i     f g f I      �� h���� 0 make_with_list   h  i�� i o      ���� 
0 a_list  ��  ��   g L      j j I     �� k���� 0 	make_with   k  l�� l o    ���� 
0 a_list  ��  ��   e  m n m l     ��������  ��  ��   n  o p o l      �� q r��   q � �!
@abstruct 
Meke an instance of XList with from a list splitting a text with a delimiter.
@param�@a_text (Unicode or string)@param a_delimiter (Unicode or string)
@result script object : a new XList instance
    r � s s� ! 
 @ a b s t r u c t   
 M e k e   a n   i n s t a n c e   o f   X L i s t   w i t h   f r o m   a   l i s t   s p l i t t i n g   a   t e x t   w i t h   a   d e l i m i t e r . 
 @ p a r a m0  a _ t e x t   ( U n i c o d e   o r   s t r i n g )  @ p a r a m   a _ d e l i m i t e r   ( U n i c o d e   o r   s t r i n g ) 
 @ r e s u l t   s c r i p t   o b j e c t   :   a   n e w   X L i s t   i n s t a n c e 
 p  t u t i     v w v I      �� x���� 0 make_with_text   x  y z y o      ���� 
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
0 a_list  ��  ��  ��   u  � � � l     ��������  ��  ��   �  � � � l      �� � ���   � $ !@group  Methods for Iterator     � � � � < ! @ g r o u p     M e t h o d s   f o r   I t e r a t o r   �  � � � l     ��������  ��  ��   �  � � � l      �� � ���   � � �!
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
 �  � � � i      � � � I      �������� 0 next  ��  ��   � k     < � �  � � � Q     / � � � � r     � � � n     � � � 4    �� �
�� 
cobj � l    ����� � n    � � � o    
���� 0 _n   �  f    ��  ��   � n    � � � o    ���� 0 	_contents   �  f     � o      ���� 0 an_item   � R      �� � �
�� .ascrerr ****      � **** � o      ���� 0 msg   � �� ���
�� 
errn � d       � � m      �������   � Z    / � ��� � � ?     � � � n    � � � o    ���� 0 _n   �  f     � n    � � � o    ���� 0 _length   �  f     � R     &�� � �
�� .ascrerr ****      � **** � m   $ % � � � � �  N o   n e x t   i t e m . � �� ���
�� 
errn � m   " #����G��  ��   � R   ) /�� � �
�� .ascrerr ****      � **** � o   - .���� 0 msg   � � ��~
� 
errn � m   + ,�}�}�@�~   �  � � � l  0 0�|�{�z�|  �{  �z   �  � � � r   0 9 � � � [   0 5 � � � l  0 3 ��y�x � n  0 3 � � � o   1 3�w�w 0 _n   �  f   0 1�y  �x   � m   3 4�v�v  � n      � � � o   6 8�u�u 0 _n   �  f   5 6 �  ��t � L   : < � � o   : ;�s�s 0 an_item  �t   �  � � � l     �r�q�p�r  �q  �p   �  � � � i   ! $ � � � I      �o�n�m�o 0 	next_item  �n  �m   � L      � � I     �l�k�j�l 0 next  �k  �j   �  � � � l     �i�h�g�i  �h  �g   �  � � � l      �f � ��f   � � �!
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
 �  � � � i   % ( � � � I      �e�d�c�e 0 has_next  �d  �c   � L      � � B     � � � n     � � � o    �b�b 0 _n   �  f      � n    � � � o    �a�a 0 _length   �  f     �  � � � l     �`�_�^�`  �_  �^   �  � � � l      �] � ��]   � [ U!
@abstruct
The item obtained by previous ((<next>))() is returned.
@result anything
    � � � � � ! 
 @ a b s t r u c t 
 T h e   i t e m   o b t a i n e d   b y   p r e v i o u s   ( ( < n e x t > ) ) ( )   i s   r e t u r n e d . 
 @ r e s u l t   a n y t h i n g 
 �  �  � i   ) , I      �\�[�Z�\ 0 current_item  �[  �Z   L      n      4    
�Y
�Y 
cobj l   	�X�W \    		 l   
�V�U
 n    o    �T�T 0 _n    f    �V  �U  	 m    �S�S �X  �W   n     o    �R�R 0 	_contents    f        l     �Q�P�O�Q  �P  �O    l      �N�N   l f!
@abstruct
An index number of an item obtained by previous ((<next>))() is returned.
@result integer
    � � ! 
 @ a b s t r u c t 
 A n   i n d e x   n u m b e r   o f   a n   i t e m   o b t a i n e d   b y   p r e v i o u s   ( ( < n e x t > ) ) ( )   i s   r e t u r n e d . 
 @ r e s u l t   i n t e g e r 
  i   - 0 I      �M�L�K�M 0 current_index  �L  �K   L      \      l    �J�I n     o    �H�H 0 _n    f     �J  �I   m    �G�G   !  l     �F�E�D�F  �E  �D  ! "#" l      �C$%�C  $ y s!
@abstruct�@
Decrements the index of the item obtained by ((<next>))(). i.e. same item can be obtained once more.
   % �&& � ! 
 @ a b s t r u c t0  
 D e c r e m e n t s   t h e   i n d e x   o f   t h e   i t e m   o b t a i n e d   b y   ( ( < n e x t > ) ) ( ) .   i . e .   s a m e   i t e m   c a n   b e   o b t a i n e d   o n c e   m o r e . 
# '(' i   1 4)*) I      �B�A�@�B 0 decrement_index  �A  �@  * Z     +,�?�>+ ?     -.- n    /0/ o    �=�= 0 _n  0  f     . m    �<�< , r    121 \    343 l   5�;�:5 n   676 o   	 �9�9 0 _n  7  f    	�;  �:  4 m    �8�8 2 n     898 o    �7�7 0 _n  9  f    �?  �>  ( :;: l     �6�5�4�6  �5  �4  ; <=< l      �3>?�3  > ` Z!
@abstruct
Increments the index of the item obtained by ((<next>))(). i.e. skip an item.
   ? �@@ � ! 
 @ a b s t r u c t 
 I n c r e m e n t s   t h e   i n d e x   o f   t h e   i t e m   o b t a i n e d   b y   ( ( < n e x t > ) ) ( ) .   i . e .   s k i p   a n   i t e m . 
= ABA i   5 8CDC I      �2�1�0�2 0 increment_index  �1  �0  D Z     EF�/�.E ?     GHG n    IJI o    �-�- 0 _n  J  f     H m    �,�, F r    KLK [    MNM l   O�+�*O n   PQP o   	 �)�) 0 _n  Q  f    	�+  �*  N m    �(�( L n     RSR o    �'�' 0 _n  S  f    �/  �.  B TUT l     �&�%�$�&  �%  �$  U VWV l      �#XY�#  X H B!
@abstruct
Make ((<next>))() return items form first.
@result
me
   Y �ZZ � ! 
 @ a b s t r u c t 
 M a k e   ( ( < n e x t > ) ) ( )   r e t u r n   i t e m s   f o r m   f i r s t . 
 @ r e s u l t 
 m e 
W [\[ i   9 <]^] I      �"�!� �" 	0 reset  �!  �   ^ k     __ `a` r     bcb m     �� c n     ded o    �� 0 _n  e  f    a f�f L    gg  f    �  \ hih l     ����  �  �  i jkj l      �lm�  l  !@group Stack and Quene    m �nn 0 ! @ g r o u p   S t a c k   a n d   Q u e n e  k opo l     ����  �  �  p qrq l      �st�  s u o!
@abstruct
Append an item at the end of the list.
@param an_item(anything) : 
an item to append into the list
   t �uu � ! 
 @ a b s t r u c t 
 A p p e n d   a n   i t e m   a t   t h e   e n d   o f   t h e   l i s t . 
 @ p a r a m   a n _ i t e m ( a n y t h i n g )   :   
 a n   i t e m   t o   a p p e n d   i n t o   t h e   l i s t 
r vwv i   = @xyx I      �z�� 0 push  z {�{ o      �� 0 an_item  �  �  y k     || }~} r     � o     �� 0 an_item  � n      ���  ;    � n   ��� o    �� 0 	_contents  �  f    ~ ��� r    ��� [    ��� l   
���� n   
��� o    
�� 0 _length  �  f    �  �  � m   
 �
�
 � n     ��� o    �	�	 0 _length  �  f    �  w ��� l     ����  �  �  � ��� l      ����  � v p!
@abstruct
Obtain last item in the stored list, and remove the item.
@result anything : 
last item in the list
   � ��� � ! 
 @ a b s t r u c t 
 O b t a i n   l a s t   i t e m   i n   t h e   s t o r e d   l i s t ,   a n d   r e m o v e   t h e   i t e m . 
 @ r e s u l t   a n y t h i n g   :   
 l a s t   i t e m   i n   t h e   l i s t 
� ��� i   A D��� I      ���� 0 pop  �  �  � k     E�� ��� Q     ���� r    ��� n    	��� 4   	��
� 
cobj� m    � � ��� n   ��� o    ���� 0 	_contents  �  f    � o      ���� 0 a_result  � R      ������
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
� ��� i   E H��� I      ������� 0 unshift  � ���� o      ���� 0 an_item  ��  ��  � k     �� ��� r     ��� o     ���� 0 an_item  � n      ���  :    � n   ��� o    ���� 0 	_contents  �  f    � ��� I    �������� 0 increment_index  ��  ��  � ��� r    ��� [    ��� l   ������ n   ��� o    ���� 0 _length  �  f    ��  ��  � m    ���� � n     ��� o    ���� 0 _length  �  f    � ���� L    ��  f    ��  � ��� l     ��������  ��  ��  � ��� l      ������  � j d!
@abstruct
Obtain first item in the list and remove it.
@result anything : 
first item in the list
   � ��� � ! 
 @ a b s t r u c t 
 O b t a i n   f i r s t   i t e m   i n   t h e   l i s t   a n d   r e m o v e   i t . 
 @ r e s u l t   a n y t h i n g   :   
 f i r s t   i t e m   i n   t h e   l i s t 
� ��� i   I L��� I      �������� 	0 shift  ��  ��  � k     2�� ��� Q     � � r     n    	 4   	��
�� 
cobj m    ����  n    o    ���� 0 	_contents    f     o      ���� 0 a_result    R      ������
�� .ascrerr ****      � ****��  ��   L    		 m    ��
�� 
msng� 

 l   ��������  ��  ��    r     n     1    ��
�� 
rest n    o    ���� 0 	_contents    f     n      o    ���� 0 	_contents    f      I     %�������� 0 decrement_index  ��  ��    r   & / \   & + l  & )���� n  & )  o   ' )���� 0 _length     f   & '��  ��   m   ) *����  n     !"! o   , .���� 0 _length  "  f   + , #��# L   0 2$$ o   0 1���� 0 a_result  ��  � %&% l     ��������  ��  ��  & '(' l     ��������  ��  ��  ( )*) l      ��+,��  + # !@group Accessing List Items    , �-- : ! @ g r o u p   A c c e s s i n g   L i s t   I t e m s  * ./. l      ��01��  0 < 6!
@abstruct
Return number of elements
@result integer
   1 �22 l ! 
 @ a b s t r u c t 
 R e t u r n   n u m b e r   o f   e l e m e n t s 
 @ r e s u l t   i n t e g e r 
/ 343 i   M P565 I      �������� 0 count_items  ��  ��  6 L     77 I    ��8��
�� .corecnte****       ****8 n    9:9 o    ���� 0 	_contents  :  f     ��  4 ;<; l     ��������  ��  ��  < =>= i   Q T?@? I      �������� 0 item_counts  ��  ��  @ L     AA I    ��B��
�� .corecnte****       ****B n    CDC o    ���� 0 	_contents  D  f     ��  > EFE l     ��������  ��  ��  F GHG i   U XIJI I     ������
�� .corecnte****       ****��  ��  J L     KK I    ��L��
�� .corecnte****       ****L n    MNM o    ���� 0 	_contents  N  f     ��  H OPO l     ��������  ��  ��  P QRQ l      ��ST��  S � �!
@abstruct
Delete an item specified with an index number.
@param indexes(integer or list of interger) :
an index number or list of indexes of items to delete
@result list : a list of deleted items form the XList contents   T �UU� ! 
 @ a b s t r u c t 
 D e l e t e   a n   i t e m   s p e c i f i e d   w i t h   a n   i n d e x   n u m b e r . 
 @ p a r a m   i n d e x e s ( i n t e g e r   o r   l i s t   o f   i n t e r g e r )   : 
 a n   i n d e x   n u m b e r   o r   l i s t   o f   i n d e x e s   o f   i t e m s   t o   d e l e t e 
 @ r e s u l t   l i s t   :    a   l i s t   o f   d e l e t e d   i t e m s   f o r m   t h e   X L i s t   c o n t e n t s R VWV i   Y \XYX I      ��Z���� 0 	delete_at  Z [��[ o      ���� 0 indexes  ��  ��  Y k     �\\ ]^] r     _`_ c     aba o     ���� 0 indexes  b m    ��
�� 
list` o      ���� 0 indexes  ^ cdc r    
efe J    ����  f o      ���� 
0 a_list  d ghg l   ��������  ��  ��  h iji Y    �k��lm�k k    �nn opo r    qrq n    sts 4    �~u
�~ 
cobju o    �}�} 0 n  t o    �|�| 0 indexes  r o      �{�{ 0 an_index  p vwv l   �zxy�z  x  log "start delete_item"   y �zz . l o g   " s t a r t   d e l e t e _ i t e m "w {|{ r    (}~} n    %� 4   " %�y�
�y 
cobj� o   # $�x�x 0 an_index  � n   "��� o     "�w�w 0 	_contents  �  f     ~ n      ���  ;   & '� o   % &�v�v 
0 a_list  | ��� Z   ) }����� =  ) ,��� o   ) *�u�u 0 an_index  � m   * +�t�t � r   / 8��� n   / 4��� 1   2 4�s
�s 
rest� n  / 2��� o   0 2�r�r 0 	_contents  �  f   / 0� n     ��� o   5 7�q�q 0 	_contents  �  f   4 5� ��� E  ; C��� J   ; A�� ��� n  ; >��� o   < >�p�p 0 _length  �  f   ; <� ��o� m   > ?�n�n���o  � o   A B�m�m 0 an_index  � ��l� r   F W��� n   F S��� 7  I S�k��
�k 
cobj� m   M O�j�j � m   P R�i�i��� n  F I��� o   G I�h�h 0 	_contents  �  f   F G� n     ��� o   T V�g�g 0 	_contents  �  f   S T�l  � r   Z }��� b   Z y��� l  Z i��f�e� n   Z i��� 7  ] i�d��
�d 
cobj� m   a c�c�c � l  d h��b�a� \   d h��� o   e f�`�` 0 an_index  � m   f g�_�_ �b  �a  � n  Z ]��� o   [ ]�^�^ 0 	_contents  �  f   Z [�f  �e  � l  i x��]�\� n   i x��� 7  l x�[��
�[ 
cobj� l  p t��Z�Y� [   p t��� o   q r�X�X 0 an_index  � m   r s�W�W �Z  �Y  � m   u w�V�V��� n  i l��� o   j l�U�U 0 	_contents  �  f   i j�]  �\  � n     ��� o   z |�T�T 0 	_contents  �  f   y z� ��� l  ~ ~�S�R�Q�S  �R  �Q  � ��� Z   ~ ����P�O� l  ~ ���N�M� ?   ~ ���� n  ~ ���� o    ��L�L 0 _n  �  f   ~ � o   � ��K�K 0 an_index  �N  �M  � r   � ���� [   � ���� l  � ���J�I� n  � ���� o   � ��H�H 0 _n  �  f   � ��J  �I  � m   � ��G�G � n     ��� o   � ��F�F 0 _n  �  f   � ��P  �O  � ��� l  � ��E�D�C�E  �D  �C  � ��B� r   � ���� \   � ���� l  � ���A�@� n  � ���� o   � ��?�? 0 _length  �  f   � ��A  �@  � m   � ��>�> � n     ��� o   � ��=�= 0 _length  �  f   � ��B  �� 0 n  l m    �<�< m n    ��� 1    �;
�; 
leng� o    �:�: 0 indexes  �  j ��� l  � ��9���9  �  log "end delete_item"   � ��� * l o g   " e n d   d e l e t e _ i t e m "� ��8� L   � ��� o   � ��7�7 
0 a_list  �8  W ��� l     �6�5�4�6  �5  �4  � ��� l      �3���3  �nh!
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
� ��� i   ] `��� I      �2��1�2 0 item_at  � ��0� o      �/�/ 0 an_index  �0  �1  � k     B�� ��� Z     ���.�-� >       n      1    �,
�, 
pcls o     �+�+ 0 an_index   m    �*
�* 
list� L     n     4    �)
�) 
cobj o    �(�( 0 an_index   n   	 o   	 �'�' 0 	_contents  	  f    	�.  �-  � 

 l   �&�%�$�&  �%  �$    r     J    �#�#   o      �"�" 
0 a_list    r    " I     �!� �! 0 	make_with   � o    �� 0 an_index  �  �    o      �� 0 
index_list    V   # ? r   - : n   - 7 4   0 7�
� 
cobj l  1 6�� n  1 6 !  I   2 6���� 0 next  �  �  ! o   1 2�� 0 	inde_list  �  �   n  - 0"#" o   . 0�� 0 	_contents  #  f   - . n      $%$  ;   8 9% o   7 8�� 
0 a_list   n  ' ,&'& I   ( ,���� 0 has_next  �  �  ' o   ' (�� 0 
index_list   (�( L   @ B)) o   @ A�� 
0 a_list  �  � *+* l     ����  �  �  + ,-, l      �
./�
  . � �!
@abstruct
Obtain items between two indexes.
@param s_index(integer) : 
the first index number
@param e_index(integer) : 
the last index number
@result XList : 
An XList instance of elements from s_index to e_index
   / �00� ! 
 @ a b s t r u c t 
 O b t a i n   i t e m s   b e t w e e n   t w o   i n d e x e s . 
 @ p a r a m   s _ i n d e x ( i n t e g e r )   :   
 t h e   f i r s t   i n d e x   n u m b e r 
 @ p a r a m   e _ i n d e x ( i n t e g e r )   :   
 t h e   l a s t   i n d e x   n u m b e r 
 @ r e s u l t   X L i s t   :   
 A n   X L i s t   i n s t a n c e   o f   e l e m e n t s   f r o m   s _ i n d e x   t o   e _ i n d e x 
- 121 i   a d343 I      �	5��	 0 items_in_range  5 676 o      �� 0 s_index  7 8�8 o      �� 0 e_index  �  �  4 L     99 I     �:�� 0 	make_with  : ;�; n    <=< 7   �>?
� 
cobj> o    
� �  0 s_index  ? o    ���� 0 e_index  = n   @A@ o    ���� 0 	_contents  A  f    �  �  2 BCB l     ��������  ��  ��  C DED l      ��FG��  F � �!
@abstruct
set an item at a specified index.
@description
A synonym of ((<set_item_at>)).
@param an_index(integer) : 
an index number of the item to set
   G �HH4 ! 
 @ a b s t r u c t 
 s e t   a n   i t e m   a t   a   s p e c i f i e d   i n d e x . 
 @ d e s c r i p t i o n 
 A   s y n o n y m   o f   ( ( < s e t _ i t e m _ a t > ) ) . 
 @ p a r a m   a n _ i n d e x ( i n t e g e r )   :   
 a n   i n d e x   n u m b e r   o f   t h e   i t e m   t o   s e t 
E IJI i   e hKLK I      ����M�� 0 set_item  ��  M ��NO
�� 
for N o      ���� 0 a_value  O ��P��
�� 
at  P o      ���� 0 an_index  ��  L r     QRQ o     ���� 0 a_value  R n      STS 4    ��U
�� 
cobjU o    ���� 0 an_index  T n   VWV o    ���� 0 	_contents  W  f    J XYX l     ��������  ��  ��  Y Z[Z l      ��\]��  \ � �!
@abstruct
set an item at a specified index.
@description
A synonym of ((<set_item>)).
@param an_index(integer) : 
an index number of the item to set
   ] �^^. ! 
 @ a b s t r u c t 
 s e t   a n   i t e m   a t   a   s p e c i f i e d   i n d e x . 
 @ d e s c r i p t i o n 
 A   s y n o n y m   o f   ( ( < s e t _ i t e m > ) ) . 
 @ p a r a m   a n _ i n d e x ( i n t e g e r )   :   
 a n   i n d e x   n u m b e r   o f   t h e   i t e m   t o   s e t 
[ _`_ i   i laba I      ��c���� 0 set_item_at  c ded o      ���� 0 a_value  e f��f o      ���� 0 an_index  ��  ��  b r     ghg o     ���� 0 a_value  h n      iji 4    ��k
�� 
cobjk o    ���� 0 an_index  j n   lml o    ���� 0 	_contents  m  f    ` non l     ��������  ��  ��  o pqp l      ��rs��  r � �!@abstructExchange items specified with indexes@param index1(integer) : first index of an element to exchange<!-- end locale -->@param index2 (integer) : second index of an element to exchange   s �tt� !  @ a b s t r u c t  E x c h a n g e   i t e m s   s p e c i f i e d   w i t h   i n d e x e s  @ p a r a m   i n d e x 1 ( i n t e g e r )   :    f i r s t   i n d e x   o f   a n   e l e m e n t   t o   e x c h a n g e  < ! - -   e n d   l o c a l e   - - >  @ p a r a m   i n d e x 2   ( i n t e g e r )   :    s e c o n d   i n d e x   o f   a n   e l e m e n t   t o   e x c h a n g e q uvu i   m pwxw I      ��y���� 0 exchange_items  y z{z o      ���� 
0 index1  { |��| o      ���� 
0 index2  ��  ��  x k     }} ~~ r     ��� n     ��� 4    ���
�� 
cobj� o    ���� 
0 index1  � n    ��� o    ���� 0 	_contents  �  f     � o      ���� 
0 a_buff   ��� r   	 ��� n   	 ��� 4    ���
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
0 index2  � n   ��� o    ���� 0 	_contents  �  f    ��  v ��� l     ��������  ��  ��  � ��� l      ������  � � �!
@abstruct
Check whether the object "an_item" is included in the XList instance or not.@param an_item(boolean)
@result anything : 
if an_item is in the XList instance, ture will be returned.
   � ���� ! 
 @ a b s t r u c t 
 C h e c k   w h e t h e r   t h e   o b j e c t   " a n _ i t e m "   i s   i n c l u d e d   i n   t h e   X L i s t   i n s t a n c e   o r   n o t .  @ p a r a m   a n _ i t e m ( b o o l e a n ) 
 @ r e s u l t   a n y t h i n g   :   
 i f   a n _ i t e m   i s   i n   t h e   X L i s t   i n s t a n c e ,   t u r e   w i l l   b e   r e t u r n e d . 
� ��� i   q t��� I      ������� 0 has_item  � ���� o      ���� 0 an_item  ��  ��  � L     �� E    ��� n    ��� o    ���� 0 	_contents  �  f     � o    ���� 0 an_item  � ��� l     ��������  ��  ��  � ��� l      ������  � � �!
@abstruct
Obtain an index number of the object "an_item" in the XList instance.@param an_item(integer)
@result anything : 
an index number of an_item
   � ���2 ! 
 @ a b s t r u c t 
 O b t a i n   a n   i n d e x   n u m b e r   o f   t h e   o b j e c t   " a n _ i t e m "   i n   t h e   X L i s t   i n s t a n c e .  @ p a r a m   a n _ i t e m ( i n t e g e r ) 
 @ r e s u l t   a n y t h i n g   :   
 a n   i n d e x   n u m b e r   o f   a n _ i t e m 
� ��� i   u x��� I      ������� 0 index_of  � ���� o      ���� 0 an_item  ��  ��  � k     >�� ��� Z     ������� H     �� I     ������� 0 has_item  � ���� o    ���� 0 an_item  ��  ��  � L   
 �� m   
 ����  ��  ��  � ��� l   ��������  ��  ��  � ��� r    ��� m    ����  � o      ���� 0 an_index  � ��� Y    ;�������� Z   " 6������� =  " *��� n   " (��� 4   % (���
�� 
cobj� o   & '���� 0 n  � n  " %��� o   # %���� 0 	_contents  �  f   " #� o   ( )���� 0 an_item  � k   - 2�� ��� r   - 0��� o   - .���� 0 n  � o      ���� 0 an_index  � ����  S   1 2��  ��  ��  �� 0 n  � m    ���� � n   ��� o    ���� 0 _length  �  f    ��  � ��� l  < <��������  ��  ��  � ���� L   < >�� o   < =���� 0 an_index  ��  � ��� l     ��������  ��  ��  � ��� l      ������  � > 8!@abstructreturn a copy of stored list.@result list    � ��� p !  @ a b s t r u c t  r e t u r n   a   c o p y   o f   s t o r e d   l i s t .  @ r e s u l t   l i s t   � ��� i   y |��� I      �������� 0 	all_items  ��  ��  � k     	�� ��� s     ��� n    ��� o    ���� 0 	_contents  �  f     � o      ���� 
0 a_list  � ���� L    	�� o    ���� 
0 a_list  ��  � ��� l     ��������  ��  ��  � ��� l      ������  � � �!
@abstruct
return the stored list.
@descriptionChanging elements in retuend list means changing contents of the XList instance.It is recommended not to use this method.
@result list 
   � ���t ! 
 @ a b s t r u c t 
 r e t u r n   t h e   s t o r e d   l i s t . 
 @ d e s c r i p t i o n  C h a n g i n g   e l e m e n t s   i n   r e t u e n d   l i s t   m e a n s   c h a n g i n g   c o n t e n t s   o f   t h e   X L i s t   i n s t a n c e .  I t   i s   r e c o m m e n d e d   n o t   t o   u s e   t h i s   m e t h o d . 
 @ r e s u l t   l i s t   
�    i   } � I      �������� 0 list_ref  ��  ��   L      n     o    ���� 0 	_contents    f       l     ��������  ��  ��   	
	 l      ����   ~ x!
@abstruct
Add each item contained passed list at end of the reciver's XList instance.
@param a_list(list)
@result me
    � � ! 
 @ a b s t r u c t 
 A d d   e a c h   i t e m   c o n t a i n e d   p a s s e d   l i s t   a t   e n d   o f   t h e   r e c i v e r ' s   X L i s t   i n s t a n c e . 
 @ p a r a m   a _ l i s t ( l i s t )  
 @ r e s u l t   m e 

  i   � � I      ������ 0 add_from_list   �� o      �� 
0 a_list  ��  ��   k       r     	 b      n     o    �~�~ 0 	_contents    f      o    �}�} 
0 a_list   n      o    �|�| 0 	_contents    f       r   
 !"! [   
 #$# l  
 %�{�z% n  
 &'& o    �y�y 0 _length  '  f   
 �{  �z  $ l   (�x�w( I   �v)�u
�v .corecnte****       ****) o    �t�t 
0 a_list  �u  �x  �w  " n     *+* o    �s�s 0 _length  +  f      ,�r, L    --  f    �r   ./. l     �q�p�o�q  �p  �o  / 010 l      �n23�n  2 ! !@group Conversion to Text    3 �44 6 ! @ g r o u p   C o n v e r s i o n   t o   T e x t  1 565 l     �m�l�k�m  �l  �k  6 787 l      �j9:�j  9 � �!
@abstruct
Join every elements with given a delimiters as ((<XText>))
@param a_delimiter (string or Unicode text): text to be used as a delimiter to join text list@result script object : a ((<XText>)) instance
   : �;;� ! 
 @ a b s t r u c t 
 J o i n   e v e r y   e l e m e n t s   w i t h   g i v e n   a   d e l i m i t e r s   a s   ( ( < X T e x t > ) ) 
 @ p a r a m   a _ d e l i m i t e r   ( s t r i n g   o r   U n i c o d e   t e x t ) :    t e x t   t o   b e   u s e d   a s   a   d e l i m i t e r   t o   j o i n   t e x t   l i s t  @ r e s u l t   s c r i p t   o b j e c t   :   a   ( ( < X T e x t > ) )   i n s t a n c e 
8 <=< i   � �>?> I      �i@�h�i 0 as_xtext_with  @ A�gA o      �f�f 0 a_delimiter  �g  �h  ? k     BB CDC r     EFE I     �eG�d�e 0 as_unicode_with  G H�cH o    �b�b 0 a_delimiter  �c  �d  F o      �a�a 
0 a_text  D I�`I L   	 JJ n  	 KLK I    �_M�^�_ 0 	make_with  M N�]N o    �\�\ 
0 a_text  �]  �^  L o   	 �[�[ 0 xtext XText�`  = OPO l     �Z�Y�X�Z  �Y  �X  P QRQ l      �WST�W  S � �!
@abstruct
Join every elements with given a delimiters as Unicode text
@param a_delimiter (string or Unicode text): text to be used as a delimiter to join text list@result Unicode text
   T �UUx ! 
 @ a b s t r u c t 
 J o i n   e v e r y   e l e m e n t s   w i t h   g i v e n   a   d e l i m i t e r s   a s   U n i c o d e   t e x t 
 @ p a r a m   a _ d e l i m i t e r   ( s t r i n g   o r   U n i c o d e   t e x t ) :    t e x t   t o   b e   u s e d   a s   a   d e l i m i t e r   t o   j o i n   t e x t   l i s t  @ r e s u l t   U n i c o d e   t e x t 
R VWV i   � �XYX I      �VZ�U�V 0 as_unicode_with  Z [�T[ o      �S�S 0 a_delimiter  �T  �U  Y k     #\\ ]^] O      _`_ k    aa bcb I    �R�Q�P�R 0 store_delimiters  �Q  �P  c ded r    fgf I    �Oh�N�O 0 	join_list  h iji n   klk o    �M�M 0 	_contents  l  f    j m�Lm o    �K�K 0 a_delimiter  �L  �N  g o      �J�J 
0 a_text  e n�In I    �H�G�F�H 0 restore_delimiters  �G  �F  �I  ` o     �E�E 0 xtext XText^ o�Do L   ! #pp o   ! "�C�C 
0 a_text  �D  W qrq l     �B�A�@�B  �A  �@  r sts l      �?uv�?  u � �!
@abstruct
A synonym of ((<as_unicode_with>)). Join every elements with given a delimiters as Unicode text.@param a_delimiter (string or Unicode text): text to be used as a delimiter to join text list@result Unicode text
   v �ww� ! 
 @ a b s t r u c t 
 A   s y n o n y m   o f   ( ( < a s _ u n i c o d e _ w i t h > ) ) .   J o i n   e v e r y   e l e m e n t s   w i t h   g i v e n   a   d e l i m i t e r s   a s   U n i c o d e   t e x t .  @ p a r a m   a _ d e l i m i t e r   ( s t r i n g   o r   U n i c o d e   t e x t ) :    t e x t   t o   b e   u s e d   a s   a   d e l i m i t e r   t o   j o i n   t e x t   l i s t  @ r e s u l t   U n i c o d e   t e x t 
t xyx i   � �z{z I      �>|�=�> 0 as_text_with  | }�<} o      �;�; 0 a_delimiter  �<  �=  { L     ~~ I     �:�9�: 0 as_unicode_with   ��8� o    �7�7 0 a_delimiter  �8  �9  y ��� l     �6�5�4�6  �5  �4  � ��� l      �3���3  � � �!
@abstruct
Join every elements with given a delimiters as string
@param a_delimiter (string or Unicode text): text to be used as a delimiter to join text list@result string
   � ���` ! 
 @ a b s t r u c t 
 J o i n   e v e r y   e l e m e n t s   w i t h   g i v e n   a   d e l i m i t e r s   a s   s t r i n g 
 @ p a r a m   a _ d e l i m i t e r   ( s t r i n g   o r   U n i c o d e   t e x t ) :    t e x t   t o   b e   u s e d   a s   a   d e l i m i t e r   t o   j o i n   t e x t   l i s t  @ r e s u l t   s t r i n g 
� ��� i   � ���� I      �2��1�2 0 as_string_with  � ��0� o      �/�/ 0 a_delimiter  �0  �1  � k     #�� ��� O      ��� k    �� ��� I    �.�-�,�. 0 store_delimiters  �-  �,  � ��� r    ��� I    �+��*�+ 0 join_as_string  � ��� n   ��� o    �)�) 0 	_contents  �  f    � ��(� o    �'�' 0 a_delimiter  �(  �*  � o      �&�& 
0 a_text  � ��%� I    �$�#�"�$ 0 restore_delimiters  �#  �"  �%  � o     �!�! 0 xtext XText� �� � L   ! #�� o   ! "�� 
0 a_text  �   � ��� l     ����  �  �  � ��� l     ����  �  �  � ��� l      ����  � &  !@group Loop with Script Object    � ��� @ ! @ g r o u p   L o o p   w i t h   S c r i p t   O b j e c t  � ��� l     ����  �  �  � ��� l      ����  ���!
@abstruct 
Call do handler of given script object with passing a reference to each item in the XList as an argument.
@description 
a_script must have a�@do handler which require only argument. The do handler must return true or false. When the do handler return false, the process is stoped immediately.
@param
a_script(script object) : must have a do handler which require only argument. The do handler must return boolean.
   � ���V ! 
 @ a b s t r u c t   
 C a l l   d o   h a n d l e r   o f   g i v e n   s c r i p t   o b j e c t   w i t h   p a s s i n g   a   r e f e r e n c e   t o   e a c h   i t e m   i n   t h e   X L i s t   a s   a n   a r g u m e n t . 
 @ d e s c r i p t i o n   
 a _ s c r i p t   m u s t   h a v e   a0  d o   h a n d l e r   w h i c h   r e q u i r e   o n l y   a r g u m e n t .   T h e   d o   h a n d l e r   m u s t   r e t u r n   t r u e   o r   f a l s e .   W h e n   t h e   d o   h a n d l e r   r e t u r n   f a l s e ,   t h e   p r o c e s s   i s   s t o p e d   i m m e d i a t e l y .  
 @ p a r a m 
 a _ s c r i p t ( s c r i p t   o b j e c t )   :   m u s t   h a v e   a   d o   h a n d l e r   w h i c h   r e q u i r e   o n l y   a r g u m e n t .   T h e   d o   h a n d l e r   m u s t   r e t u r n   b o o l e a n . 
� ��� i   � ���� I      ���� 0 each  � ��� o      �� 0 a_script  �  �  � k     +�� ��� r     ��� I     ���� 0 iterator  �  �  � o      �� 0 an_iter  � ��� V    +��� Z    &���
�	� =   ��� n   ��� I    ���� 0 do  � ��� n   ��� I    ���� 0 next  �  �  � o    �� 0 an_iter  �  �  � o    �� 0 a_script  � m    � 
�  boovfals�  S   ! "�
  �	  � n   ��� I    �������� 0 has_next  ��  ��  � o    ���� 0 an_iter  �  � ��� l     ��������  ��  ��  � ��� l      ������  ���!
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
  
 @ p a r a m 
 a _ s c r i p t ( s c r i p t   o b j e c t )   :   m u s t   h a v e   a   d o   h a n d l e r   w h i c h   r e q u i r e   o n l y   a r g u m e n t .   T h e   d o   h a n d l e r   m u s t   r e t u r n   b o o l e a n . 
� ��� i   � ���� I      ������� 0 	enumerate  � ���� o      ���� 0 a_script  ��  ��  � k     *�� ��� I     �������� 	0 reset  ��  ��  � ���� V    *��� Z    %������� =   ��� n   ��� I    ������� 0 do  � ��� I    �������� 0 next  ��  ��  � ����  f    ��  ��  � o    ���� 0 a_script  � m    ��
�� boovfals�  S     !��  ��  � I   
 �������� 0 has_next  ��  ��  ��  � ��� l     ��������  ��  ��  � ��� l      ������  ���!
@abstruct 
Call do handler of given script object with each items in the list as and argument. A XList consisting of the results of do handler is returned.
@description 
A parameter &quot;a_script&quot; must have a�@do handler which require only argument.

Each elements in the target XList will be passed to the do handler.

@param a_script(script object) :
must have a do handler which require only argument.
@result Instance of XList
   � ���l ! 
 @ a b s t r u c t   
 C a l l   d o   h a n d l e r   o f   g i v e n   s c r i p t   o b j e c t   w i t h   e a c h   i t e m s   i n   t h e   l i s t   a s   a n d   a r g u m e n t .   A   X L i s t   c o n s i s t i n g   o f   t h e   r e s u l t s   o f   d o   h a n d l e r   i s   r e t u r n e d . 
 @ d e s c r i p t i o n   
 A   p a r a m e t e r   & q u o t ; a _ s c r i p t & q u o t ;   m u s t   h a v e   a0  d o   h a n d l e r   w h i c h   r e q u i r e   o n l y   a r g u m e n t . 
 
 E a c h   e l e m e n t s   i n   t h e   t a r g e t   X L i s t   w i l l   b e   p a s s e d   t o   t h e   d o   h a n d l e r . 
 
 @ p a r a m   a _ s c r i p t ( s c r i p t   o b j e c t )   : 
 m u s t   h a v e   a   d o   h a n d l e r   w h i c h   r e q u i r e   o n l y   a r g u m e n t . 
 @ r e s u l t   I n s t a n c e   o f   X L i s t 
� ��� i   � ���� I      ������� 0 map  � ���� o      ���� 0 a_script  ��  ��  � k     �� ��� r     ��� I     ������� 0 map_as_list  � ���� o    ���� 0 a_script  ��  ��  � o      ���� 
0 a_list  � ���� L   	 �� I   	 �� ���� 0 make_with_list    �� o   
 ���� 
0 a_list  ��  ��  ��  �  l     ��������  ��  ��    l      ����  ��!@abstruct
Call do handler of given script object with each items in the list as and argument. An AppleScript's list of the results of do handler is returned.
@description 
A parameter &quot;a_script&quot; must have a�@do handler which require only argument.

Each elements in the target XList will be passed to the do handler.

@param a_script(script object) :
must have a do handler which require one argument.
@result list
    �R ! @ a b s t r u c t 
 C a l l   d o   h a n d l e r   o f   g i v e n   s c r i p t   o b j e c t   w i t h   e a c h   i t e m s   i n   t h e   l i s t   a s   a n d   a r g u m e n t .   A n   A p p l e S c r i p t ' s   l i s t   o f   t h e   r e s u l t s   o f   d o   h a n d l e r   i s   r e t u r n e d . 
 @ d e s c r i p t i o n   
 A   p a r a m e t e r   & q u o t ; a _ s c r i p t & q u o t ;   m u s t   h a v e   a0  d o   h a n d l e r   w h i c h   r e q u i r e   o n l y   a r g u m e n t . 
 
 E a c h   e l e m e n t s   i n   t h e   t a r g e t   X L i s t   w i l l   b e   p a s s e d   t o   t h e   d o   h a n d l e r . 
 
 @ p a r a m   a _ s c r i p t ( s c r i p t   o b j e c t )   : 
 m u s t   h a v e   a   d o   h a n d l e r   w h i c h   r e q u i r e   o n e   a r g u m e n t . 
 @ r e s u l t   l i s t 
 	
	 l     ��������  ��  ��  
  i   � � I      ������ 0 map_as_list   �� o      ���� 0 a_script  ��  ��   k     ,  r      J     ����   o      ���� 
0 a_list    r     I    
�������� 0 iterator  ��  ��   o      ���� 0 an_iter    V    ) r    $ l   ! ����  n   !!"! I    !��#���� 0 do  # $��$ n   %&% I    �������� 0 next  ��  ��  & o    ���� 0 an_iter  ��  ��  " o    ���� 0 a_script  ��  ��   n      '('  ;   " #( o   ! "���� 
0 a_list   n   )*) I    �������� 0 has_next  ��  ��  * o    ���� 0 an_iter   +��+ L   * ,,, o   * +���� 
0 a_list  ��   -.- l     ��������  ��  ��  . /0/ l      ��12��  1 * $!@group Make a copy of the instance    2 �33 H ! @ g r o u p   M a k e   a   c o p y   o f   t h e   i n s t a n c e  0 454 l     ��������  ��  ��  5 676 l      ��89��  8 � �!@abstruct
Make a new instance which share internal list with the original.
The internal counter for the iterator will be copied.
@result XList
   9 �::  ! @ a b s t r u c t 
 M a k e   a   n e w   i n s t a n c e   w h i c h   s h a r e   i n t e r n a l   l i s t   w i t h   t h e   o r i g i n a l . 
 T h e   i n t e r n a l   c o u n t e r   f o r   t h e   i t e r a t o r   w i l l   b e   c o p i e d . 
 @ r e s u l t   X L i s t 
7 ;<; i   � �=>= I      �������� 0 shallow_copy  ��  ��  > k     ?? @A@ r     
BCB n    DED I    ��F���� 0 	make_with  F G��G n   HIH o    ���� 0 	_contents  I  f    ��  ��  E  f     C o      ���� 
0 x_list  A JKJ r    LML n   NON o    ���� 0 _n  O  f    M n     PQP o    ���� 0 _n  Q o    ���� 
0 x_list  K R��R L    SS o    ���� 
0 x_list  ��  < TUT l     ��������  ��  ��  U VWV l      ��XY��  X f `!@abstruct
Make a new instance which have copied internal list from the original.
@result XList
   Y �ZZ � ! @ a b s t r u c t 
 M a k e   a   n e w   i n s t a n c e   w h i c h   h a v e   c o p i e d   i n t e r n a l   l i s t   f r o m   t h e   o r i g i n a l . 
 @ r e s u l t   X L i s t 
W [\[ i   � �]^] I      �������� 0 	deep_copy  ��  ��  ^ k     __ `a` r     bcb n    
ded I    
��f���� 0 	make_with  f g��g I    �������� 0 	all_items  ��  ��  ��  ��  e  f     c o      ���� 
0 x_list  a hih r    jkj n   lml o    ���� 0 _n  m  f    k n     non o    ���� 0 _n  o o    ���� 
0 x_list  i p��p L    qq o    ���� 
0 x_list  ��  \ rsr l     ��������  ��  ��  s tut l      ��vw��  v a [!@abstruct
Make a shallow copy with resetting the internal iterator counter.
@result XList
   w �xx � ! @ a b s t r u c t 
 M a k e   a   s h a l l o w   c o p y   w i t h   r e s e t t i n g   t h e   i n t e r n a l   i t e r a t o r   c o u n t e r . 
 @ r e s u l t   X L i s t 
u yzy i   � �{|{ I      �������� 0 iterator  ��  ��  | L     	}} n    ~~ I    ���~� 0 	make_with  � ��}� n   ��� o    �|�| 0 	_contents  �  f    �}  �~    f     z ��� l     �{�z�y�{  �z  �y  � ��� i   � ���� I     �x�w�v
�x .ascrcmnt****      � ****�w  �v  � O    ��� I   �u��t
�u .ascrcmnt****      � ****� l   	��s�r� n   	��� I    	�q�p�o�q 0 dump  �p  �o  �  f    �s  �r  �t  � 1     �n
�n 
ascr� ��� l     �m�l�k�m  �l  �k  � ��� i   � ���� I      �j�i�h�j 0 dump  �i  �h  � k     %�� ��� h     �g��g 0 xlistdumper XListDumper� k      �� ��� j     �f��f 0 an_index  � m     �e�e  � ��d� i    ��� I      �c��b�c 0 do  � ��a� o      �`�` 0 an_item  �a  �b  � k     6�� ��� r     ��� [     ��� o     �_�_ 0 an_index  � m    �^�^ � o      �]�] 0 an_index  � ��� r    ��� l   ��\�[� c    ��� o    �Z�Z 0 an_index  � m    �Y
�Y 
utxt�\  �[  � o      �X�X 
0 output  � ��� Z    /���W�� =   ��� n    ��� 1    �V
�V 
pcls� o    �U�U 0 an_item  � m    �T
�T 
scpt� r     '��� n    %��� I   ! %�S�R�Q�S 0 dump  �R  �Q  � o     !�P�P 0 an_item  � o      �O�O 0 	dump_data  �W  � r   * /��� c   * -��� o   * +�N�N 0 an_item  � m   + ,�M
�M 
utxt� o      �L�L 0 	dump_data  � ��K� L   0 6�� b   0 5��� b   0 3��� o   0 1�J�J 
0 output  � 1   1 2�I
�I 
tab � o   3 4�H�H 0 	dump_data  �K  �d  � ��� r    ��� I    �G��F�G 0 map  � ��E� o   	 
�D�D 0 xlistdumper XListDumper�E  �F  � o      �C�C 0 	dump_list  � ��� n   ��� I    �B��A�B 0 unshift  � ��@� b    ��� b    ��� m    �� ���  [� n   ��� 1    �?
�? 
pnam�  f    � m    �� ���  ]�@  �A  � o    �>�> 0 	dump_list  � ��=� L    %�� n   $��� I    $�<��;�< 0 as_unicode_with  � ��:� o     �9
�9 
ret �:  �;  � o    �8�8 0 	dump_list  �=  � ��� l     �7�6�5�7  �6  �5  � ��� l      �4���4  �  == private    � ���  = =   p r i v a t e  � ��� i   � ���� I      �3�2�1�3 	0 debug  �2  �1  � k     T�� ��� O     ��� k    �� ��� I    �0��/�0 
0 export  � ��.�  f   	 
�.  �/  � ��� I   �-�,�
�- .MoloBootscpt        scpt�,  � �+��*
�+ 
forM�  f    �*  � ��)� r    ��� I   �( �'
�( .MololoMoscpt        TEXT  m     �  T e s t�'  � o      �&�& 0 test Test�)  � l    �%�$ I    �#�"�!
�# .MoloMKloscpt    ��� null�"  �!  �%  �$  �  r     + I     )� ��  0 	make_with   	�	 J   ! %

  m   ! " �  a � m   " # �  b�  �  �   o      �� 
0 a_list    n  , 2 I   - 2��� 0 	delete_at   � m   - .�� �  �   o   , -�� 
0 a_list    n  3 B I   4 B��� 0 assert_true    =  4 =  n  4 9!"! I   5 9���� 0 list_ref  �  �  " o   4 5�� 
0 a_list    J   9 <## $�$ m   9 :%% �&&  b�   '�' m   = >(( �)) $ F a i l d   t o   d e l e t e _ a t�  �   o   3 4�� 0 test Test *+* I  C H�,�
� .corecnte****       ****, o   C D�� 
0 a_list  �  + -�
- n  I T./. I   J T�	0��	 0 assert_true  0 121 =  J M343 1   J K�
� 
rslt4 m   K L�� 2 5�5 m   M P66 �77  F a i l d   t o   c o u n t�  �  / o   I J�� 0 test Test�
  � 898 l     ����  �  �  9 :;: i   � �<=< I     � ����
�  .aevtoappnull  �   � ****��  ��  = k     >> ?@? l     ��AB��  A  return debug()   B �CC  r e t u r n   d e b u g ( )@ D��D Q     EFGE I   ��HI
�� .HBsushHBTEXT    ��� fileH l   J����J I   ��K��
�� .earsffdralis        afdrK  f    ��  ��  ��  I ��L��
�� 
rcIPL m   	 
��
�� boovtrue��  F R      ��MN
�� .ascrerr ****      � ****M o      ���� 0 msg  N ��O��
�� 
errnO o      ���� 	0 errno  ��  G I   ��P��
�� .sysodisAaleR        TEXTP l   Q����Q b    RSR b    TUT o    ���� 0 msg  U o    ��
�� 
ret S o    ���� 	0 errno  ��  ��  ��  ��  ; V��V l     ��������  ��  ��  ��       2��W  XYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~��������  W 0������������������������������������������������������������������������������������������������
�� 
pnam
�� 
vers�� 0 xtext XText
�� .corecrel****      � null�� 0 	make_with  �� 0 make_with_list  �� 0 make_with_text  �� 0 next  �� 0 	next_item  �� 0 has_next  �� 0 current_item  �� 0 current_index  �� 0 decrement_index  �� 0 increment_index  �� 	0 reset  �� 0 push  �� 0 pop  �� 0 unshift  �� 	0 shift  �� 0 count_items  �� 0 item_counts  
�� .corecnte****       ****�� 0 	delete_at  �� 0 item_at  �� 0 items_in_range  �� 0 set_item  �� 0 set_item_at  �� 0 exchange_items  �� 0 has_item  �� 0 index_of  �� 0 	all_items  �� 0 list_ref  �� 0 add_from_list  �� 0 as_xtext_with  �� 0 as_unicode_with  �� 0 as_text_with  �� 0 as_string_with  �� 0 each  �� 0 	enumerate  �� 0 map  �� 0 map_as_list  �� 0 shallow_copy  �� 0 	deep_copy  �� 0 iterator  
�� .ascrcmnt****      � ****�� 0 dump  �� 	0 debug  
�� .aevtoappnull  �   � ****X ������
�� 
pcls
�� 
MoSp��  Y �� 3��������
�� .corecrel****      � null��  ��  �  � ���� 0 	make_with  �� 	*jvk+  Z �� A���������� 0 	make_with  �� ����� �  ���� 
0 a_list  ��  � �������� 
0 a_list  �� 0 a_parent  �� 0 xlist XList� �� K��� 0 xlist XList� �����������
�� .ascrinit****      � ****� k     ��  M��  P��  S��  W����  ��  ��  � ��������
�� 
pare�� 0 	_contents  �� 0 _length  �� 0 _n  � ����������
�� 
pare�� 0 	_contents  
�� .corecnte****       ****�� 0 _length  �� 0 _n  �� b  N  Ob   �Ob   j �Ok��� )E�O��K S�O�[ �� g���������� 0 make_with_list  �� ����� �  ���� 
0 a_list  ��  � ���� 
0 a_list  � ���� 0 	make_with  �� *�k+  \ �� w���������� 0 make_with_text  �� ����� �  ������ 
0 a_text  �� 0 a_delimiter  ��  � ���������� 
0 a_text  �� 0 a_delimiter  �� 0 	pre_delim  �� 
0 a_list  � ��~�}�|
� 
ascr
�~ 
txdl
�} 
citm�| 0 	make_with  ��  ��,E�O���,FO��-E�O���,FO*�k+ ] �{ ��z�y���x�{ 0 next  �z  �y  � �w�v�w 0 an_item  �v 0 msg  � 
�u�t�s�r��q�p�o ��n�u 0 	_contents  
�t 
cobj�s 0 _n  �r 0 msg  � �m�l�k
�m 
errn�l�@�k  �q 0 _length  
�p 
errn�oG�n�@�x = )�,�)�,E/E�W  X  )�,)�, )��l�Y )��l�O)�,k)�,FO�^ �j ��i�h���g�j 0 	next_item  �i  �h  �  � �f�f 0 next  �g *j+  _ �e ��d�c���b�e 0 has_next  �d  �c  �  � �a�`�a 0 _n  �` 0 _length  �b 	)�,)�,` �_�^�]���\�_ 0 current_item  �^  �]  �  � �[�Z�Y�[ 0 	_contents  
�Z 
cobj�Y 0 _n  �\ )�,�)�,k/Ea �X�W�V���U�X 0 current_index  �W  �V  �  � �T�T 0 _n  �U )�,kb �S*�R�Q���P�S 0 decrement_index  �R  �Q  �  � �O�O 0 _n  �P )�,k )�,k)�,FY hc �ND�M�L���K�N 0 increment_index  �M  �L  �  � �J�J 0 _n  �K )�,k )�,k)�,FY hd �I^�H�G���F�I 	0 reset  �H  �G  �  � �E�E 0 _n  �F 	k)�,FO)e �Dy�C�B���A�D 0 push  �C �@��@ �  �?�? 0 an_item  �B  � �>�> 0 an_item  � �=�<�= 0 	_contents  �< 0 _length  �A �)�,6FO)�,k)�,Ff �;��:�9���8�; 0 pop  �:  �9  � �7�7 0 a_result  � �6�5�4�3�2�1�0�6 0 	_contents  
�5 
cobj�4  �3  
�2 
msng�1���0 0 _length  �8 F )�,�i/E�W 	X  �O )�,[�\[Zk\Z�2)�,FW X  jv)�,FO)�,k)�,FO�g �/��.�-���,�/ 0 unshift  �. �+��+ �  �*�* 0 an_item  �-  � �)�) 0 an_item  � �(�'�&�( 0 	_contents  �' 0 increment_index  �& 0 _length  �, �)�,5FO*j+ O)�,k)�,FO)h �%��$�#���"�% 	0 shift  �$  �#  � �!�! 0 a_result  � � ��������  0 	_contents  
� 
cobj�  �  
� 
msng
� 
rest� 0 decrement_index  � 0 _length  �" 3 )�,�k/E�W 	X  �O)�,�,)�,FO*j+ O)�,k)�,FO�i �6������ 0 count_items  �  �  �  � ��� 0 	_contents  
� .corecnte****       ****� 	)�,j j �@������ 0 item_counts  �  �  �  � ��� 0 	_contents  
� .corecnte****       ****� 	)�,j k �J��
���	
� .corecnte****       ****�  �
  �  � ��� 0 	_contents  
� .corecnte****       ****�	 	)�,j l �Y������ 0 	delete_at  � ��� �  �� 0 indexes  �  � � �������  0 indexes  �� 
0 a_list  �� 0 n  �� 0 an_index  � ����������������
�� 
list
�� 
leng
�� 
cobj�� 0 	_contents  
�� 
rest�� 0 _length  ������ 0 _n  � ���&E�OjvE�O �k��,Ekh ��/E�O)�,�/�6FO�k  )�,�,)�,FY D)�,ilv� )�,[�\[Zk\Z�2)�,FY %)�,[�\[Zk\Z�k2)�,[�\[Z�k\Zi2%)�,FO)�,� )�,k)�,FY hO)�,k)�,F[OY�uO�m ������������� 0 item_at  �� ����� �  ���� 0 an_index  ��  � ���������� 0 an_index  �� 
0 a_list  �� 0 
index_list  �� 0 	inde_list  � ��������������
�� 
pcls
�� 
list�� 0 	_contents  
�� 
cobj�� 0 	make_with  �� 0 has_next  �� 0 next  �� C��,� )�,�/EY hOjvE�O*�k+ E�O h�j+ )�,�j+ /�6F[OY��O�n ��4���������� 0 items_in_range  �� ����� �  ������ 0 s_index  �� 0 e_index  ��  � ������ 0 s_index  �� 0 e_index  � �������� 0 	_contents  
�� 
cobj�� 0 	make_with  �� *)�,[�\[Z�\Z�2k+ o ��L���������� 0 set_item  ��  �� �����
�� 
for �� 0 a_value  � ������
�� 
at  �� 0 an_index  ��  � ������ 0 a_value  �� 0 an_index  � ������ 0 	_contents  
�� 
cobj�� 	�)�,�/Fp ��b���������� 0 set_item_at  �� ����� �  ������ 0 a_value  �� 0 an_index  ��  � ������ 0 a_value  �� 0 an_index  � ������ 0 	_contents  
�� 
cobj�� 	�)�,�/Fq ��x���������� 0 exchange_items  �� ����� �  ������ 
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
)�,EQ�O�u ������������ 0 list_ref  ��  ��  �  � ���� 0 	_contents  �� )�,Ev ������������ 0 add_from_list  �� ����� �  ���� 
0 a_list  ��  � ���� 
0 a_list  � �������� 0 	_contents  �� 0 _length  
�� .corecnte****       ****�� )�,�%)�,FO)�,�j )�,FO)w ��?���������� 0 as_xtext_with  �� ����� �  ���� 0 a_delimiter  ��  � ������ 0 a_delimiter  �� 
0 a_text  � ������ 0 as_unicode_with  �� 0 	make_with  �� *�k+  E�Ob  �k+ x �Y�~�}���|� 0 as_unicode_with  �~ �{��{ �  �z�z 0 a_delimiter  �}  � �y�x�y 0 a_delimiter  �x 
0 a_text  � �w�v�u�t�w 0 store_delimiters  �v 0 	_contents  �u 0 	join_list  �t 0 restore_delimiters  �| $b   *j+  O*)�,�l+ E�O*j+ UO�y �s{�r�q���p�s 0 as_text_with  �r �o��o �  �n�n 0 a_delimiter  �q  � �m�m 0 a_delimiter  � �l�l 0 as_unicode_with  �p *�k+  z �k��j�i���h�k 0 as_string_with  �j �g��g �  �f�f 0 a_delimiter  �i  � �e�d�e 0 a_delimiter  �d 
0 a_text  � �c�b�a�`�c 0 store_delimiters  �b 0 	_contents  �a 0 join_as_string  �` 0 restore_delimiters  �h $b   *j+  O*)�,�l+ E�O*j+ UO�{ �_��^�]���\�_ 0 each  �^ �[��[ �  �Z�Z 0 a_script  �]  � �Y�X�Y 0 a_script  �X 0 an_iter  � �W�V�U�T�W 0 iterator  �V 0 has_next  �U 0 next  �T 0 do  �\ ,*j+  E�O "h�j+ ��j+ k+ f  Y h[OY��| �S��R�Q���P�S 0 	enumerate  �R �O��O �  �N�N 0 a_script  �Q  � �M�M 0 a_script  � �L�K�J�I�L 	0 reset  �K 0 has_next  �J 0 next  �I 0 do  �P +*j+  O #h*j+ �*j+ )l+ f  Y h[OY��} �H��G�F���E�H 0 map  �G �D��D �  �C�C 0 a_script  �F  � �B�A�B 0 a_script  �A 
0 a_list  � �@�?�@ 0 map_as_list  �? 0 make_with_list  �E *�k+  E�O*�k+ ~ �>�=�<���;�> 0 map_as_list  �= �:��: �  �9�9 0 a_script  �<  � �8�7�6�8 0 a_script  �7 
0 a_list  �6 0 an_iter  � �5�4�3�2�5 0 iterator  �4 0 has_next  �3 0 next  �2 0 do  �; -jvE�O*j+  E�O h�j+ ��j+ k+ �6F[OY��O� �1>�0�/���.�1 0 shallow_copy  �0  �/  � �-�- 
0 x_list  � �,�+�*�, 0 	_contents  �+ 0 	make_with  �* 0 _n  �. ))�,k+ E�O)�,��,FO�� �)^�(�'���&�) 0 	deep_copy  �(  �'  � �%�% 
0 x_list  � �$�#�"�$ 0 	all_items  �# 0 	make_with  �" 0 _n  �& )*j+  k+ E�O)�,��,FO�� �!|� �����! 0 iterator  �   �  �  � ��� 0 	_contents  � 0 	make_with  � 
))�,k+ � �������
� .ascrcmnt****      � ****�  �  �  � ���
� 
ascr� 0 dump  
� .ascrcmnt****      � ****� � )j+ j U� �������� 0 dump  �  �  � ��� 0 xlistdumper XListDumper� 0 	dump_list  � 
���������
�	� 0 xlistdumper XListDumper� �������
� .ascrinit****      � ****� k     �� �   ���  �  �  � ��� 0 an_index  � 0 do  � �� 0 an_index   � ��������  0 do  �� ����   ���� 0 an_item  ��   �������� 0 an_item  �� 
0 output  �� 0 	dump_data   ����������
�� 
utxt
�� 
pcls
�� 
scpt�� 0 dump  
�� 
tab �� 7b   kEc   Ob   �&E�O��,�  �j+ E�Y ��&E�O��%�%� j�OL � 0 map  
� 
pnam� 0 unshift  
�
 
ret �	 0 as_unicode_with  � &��K S�O*�k+ E�O��)�,%�%k+ O��k+ 	� ����������� 	0 debug  ��  ��   ������ 0 test Test�� 
0 a_list   ����������������%(������6
�� .MoloMKloscpt    ��� null�� 
0 export  
�� 
forM
�� .MoloBootscpt        scpt
�� .MololoMoscpt        TEXT�� 0 	make_with  �� 0 	delete_at  �� 0 list_ref  �� 0 assert_true  
�� .corecnte****       ****
�� 
rslt�� U*j   *)k+ O*�)l O�j E�UO*��lvk+ E�O�kk+ 	O��j+ 
�kv �l+ O�j O��k a l+ � ��=������
�� .aevtoappnull  �   � ****��  ��   ������ 0 msg  �� 	0 errno   ��������	����
�� .earsffdralis        afdr
�� 
rcIP
�� .HBsushHBTEXT    ��� file�� 0 msg  	 ������
�� 
errn�� 	0 errno  ��  
�� 
ret 
�� .sysodisAaleR        TEXT��   )j  �el W X  ��%�%j ascr  ��ޭ