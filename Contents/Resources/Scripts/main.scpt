FasdUAS 1.101.10   ��   ��    k             j     �� 
�� 
pnam  m        � 	 	 
 X L i s t   
  
 j    �� 
�� 
vers  m       �    1 . 5 b      l     ��������  ��  ��        j    �� �� 0 xtext XText  I   ������
�� .MoloMkMsMoSp    ��� TEXT��  ��        l     ��������  ��  ��        l      ��  ��    8 2!@references
XText || help:openbook='XText Help'     �   d ! @ r e f e r e n c e s  
 X T e x t   | |   h e l p : o p e n b o o k = ' X T e x t   H e l p '       l     ��������  ��  ��        l      ��   ��   @:!@title XList Reference* Version : 1.4.2* Author : Tetsuro KURITA ((<tkurita@mac.com>))<!--begin locale ja-->���X�g�� iterator, stack, queue �ȂǂƂ��Ĉ����X�N���v�g�I�u�W�F�N�g�B<!--begin locale en-->XList provides a wapper object to treat AppleScript's list as iterator, stack and queue.<!--end locale-->      � ! !F ! @ t i t l e   X L i s t   R e f e r e n c e  *   V e r s i o n   :   1 . 4 . 2  *   A u t h o r   :   T e t s u r o   K U R I T A   ( ( < t k u r i t a @ m a c . c o m > ) )  < ! - - b e g i n   l o c a l e   j a - - > 0�0�0�0�   i t e r a t o r ,   s t a c k ,   q u e u e  0j0i0h0W0fbq0F0�0�0�0�0�0�0�0�0�0�0�0  < ! - - b e g i n   l o c a l e   e n - - >  X L i s t   p r o v i d e s   a   w a p p e r   o b j e c t   t o   t r e a t   A p p l e S c r i p t ' s   l i s t   a s   i t e r a t o r ,   s t a c k   a n d   q u e u e .  < ! - - e n d   l o c a l e - - >    " # " l     ��������  ��  ��   #  $ % $ l      �� & '��   & ! !@group Constructor Method     ' � ( ( 6 ! @ g r o u p   C o n s t r u c t o r   M e t h o d   %  ) * ) l     ��������  ��  ��   *  + , + l      �� - .��   - � �!
@abstruct 
<!--begin locale ja-->
XList �I�u�W�F�N�g�̃C���X�^���X�����܂��B���e�͐ݒ肳��Ă��܂���B
<!--begin locale en-->
Meke an instance of empty XList.
<!--end locale-->

@result script object : a new XList instance
    . � / /� ! 
 @ a b s t r u c t   
 < ! - - b e g i n   l o c a l e   j a - - > 
 X L i s t  0�0�0�0�0�0�0n0�0�0�0�0�0�0�O\0�0~0Y0Q�[�0o�-[�0U0�0f0D0~0[0�0 
 < ! - - b e g i n   l o c a l e   e n - - > 
 M e k e   a n   i n s t a n c e   o f   e m p t y   X L i s t . 
 < ! - - e n d   l o c a l e - - > 
 
 @ r e s u l t   s c r i p t   o b j e c t   :   a   n e w   X L i s t   i n s t a n c e 
 ,  0 1 0 i     2 3 2 I     ������
�� .corecrel****      � null��  ��   3 L      4 4 I     �� 5���� 0 	make_with   5  6�� 6 J    ����  ��  ��   1  7 8 7 l     ��������  ��  ��   8  9 : 9 l      �� ; <��   ;!
@abstruct 
<!--begin locale ja-->
�^�������X�g�����Ƃ� XList �I�u�W�F�N�g�̃C���X�^���X�����܂��B
<!--begin locale en-->
Meke an instance of XList with given an AppleScript's  list object.
<!--end locale-->
@param�@a_list (list)
@result script object : a new XList instance
    < � = =� ! 
 @ a b s t r u c t   
 < ! - - b e g i n   l o c a l e   j a - - > 
N0H0_0�0�0�0�0�0h0k   X L i s t  0�0�0�0�0�0�0n0�0�0�0�0�0�0�O\0�0~0Y0 
 < ! - - b e g i n   l o c a l e   e n - - > 
 M e k e   a n   i n s t a n c e   o f   X L i s t   w i t h   g i v e n   a n   A p p l e S c r i p t ' s     l i s t   o b j e c t . 
 < ! - - e n d   l o c a l e - - > 
 @ p a r a m0  a _ l i s t   ( l i s t ) 
 @ r e s u l t   s c r i p t   o b j e c t   :   a   n e w   X L i s t   i n s t a n c e 
 :  > ? > i     @ A @ I      �� B���� 0 	make_with   B  C�� C o      ���� 
0 a_list  ��  ��   A k      D D  E F E r      G H G  f      H o      ���� 0 a_parent   F  I J I h    �� K�� 0 xlist XList K k       L L  M N M j     �� O
�� 
pare O o     ���� 0 a_parent   N  P Q P j   	 �� R�� 0 	_contents   R o   	 ���� 
0 a_list   Q  S T S j    �� U�� 0 _length   U I   �� V��
�� .corecnte****       **** V o    ���� 
0 a_list  ��   T  W�� W j    �� X�� 0 _n   X m    ���� ��   J  Y Z Y l   ��������  ��  ��   Z  [�� [ L     \ \ o    ���� 0 xlist XList��   ?  ] ^ ] l     ��������  ��  ��   ^  _ ` _ l      �� a b��   a��!@abstruct<!-- begin locale ja -->((<make_with>)) �Ɠ����ł��B<!-- begin locale en -->A synonym of ((<make_with>))<!-- end locale -->
@description
<!--begin locale ja-->
�^�������X�g�����Ƃ� XList �I�u�W�F�N�g�̃C���X�^���X�����܂��B
<!--begin locale en-->
Meke an instance of XList with given an AppleScript's  list object.
<!--end locale-->
@param�@a_list (list)
@result script object : a new XList instance
    b � c c� !  @ a b s t r u c t  < ! - -   b e g i n   l o c a l e   j a   - - >  ( ( < m a k e _ w i t h > ) )  0hT0X0g0Y0  < ! - -   b e g i n   l o c a l e   e n   - - >  A   s y n o n y m   o f   ( ( < m a k e _ w i t h > ) )  < ! - -   e n d   l o c a l e   - - > 
 @ d e s c r i p t i o n 
 < ! - - b e g i n   l o c a l e   j a - - > 
N0H0_0�0�0�0�0�0h0k   X L i s t  0�0�0�0�0�0�0n0�0�0�0�0�0�0�O\0�0~0Y0 
 < ! - - b e g i n   l o c a l e   e n - - > 
 M e k e   a n   i n s t a n c e   o f   X L i s t   w i t h   g i v e n   a n   A p p l e S c r i p t ' s     l i s t   o b j e c t . 
 < ! - - e n d   l o c a l e - - > 
 @ p a r a m0  a _ l i s t   ( l i s t ) 
 @ r e s u l t   s c r i p t   o b j e c t   :   a   n e w   X L i s t   i n s t a n c e 
 `  d e d i     f g f I      �� h���� 0 make_with_list   h  i�� i o      ���� 
0 a_list  ��  ��   g L      j j I     �� k���� 0 	make_with   k  l�� l o    ���� 
0 a_list  ��  ��   e  m n m l     ��������  ��  ��   n  o p o l      �� q r��   qrl!
@abstruct 
<!--begin locale ja-->
�e�L�X�g����؂蕶���ŕ����������X�g�����Ƃ� XList �I�u�W�F�N�g�̃C���X�^���X�����܂��B
<!--begin locale en-->
Meke an instance of XList with from a list splitting a text with a delimiter.
<!--end locale-->
@param�@a_text (Unicode or string)@param a_delimiter (Unicode or string)
@result script object : a new XList instance
    r � s s� ! 
 @ a b s t r u c t   
 < ! - - b e g i n   l o c a l e   j a - - > 
0�0�0�0�0�S:R0�e�[W0gRRr0W0_0�0�0�0�0�0h0k   X L i s t  0�0�0�0�0�0�0n0�0�0�0�0�0�0�O\0�0~0Y0 
 < ! - - b e g i n   l o c a l e   e n - - > 
 M e k e   a n   i n s t a n c e   o f   X L i s t   w i t h   f r o m   a   l i s t   s p l i t t i n g   a   t e x t   w i t h   a   d e l i m i t e r . 
 < ! - - e n d   l o c a l e - - > 
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
0 a_list  ��  ��  ��   u  � � � l     ��������  ��  ��   �  � � � l      �� � ���   � $ !@group  Methods for Iterator     � � � � < ! @ g r o u p     M e t h o d s   f o r   I t e r a t o r   �  � � � l     ��������  ��  ��   �  � � � l      �� � ���   ���!
@abstruct
<!--begin locale ja-->
�O��� ((<next>))() �Ŏ擾�������ڂ̎��̗v�f���擾���܂��B
<!--begin locale en-->
return an item in the list next to the item obtained by previous ((<next>))()
<!--end locale-->
@description
<!--begin locale ja-->
���X�g�̍Ō�̍��ڂ܂ŗ��Ă��āA���̍��ڂ������ꍇ�́Aerror number 1351 �𔭐����܂��B
<!--begin locale en-->
When the last item have been already returned, error number 1351 is raised.
<!--end locale-->

@result anything
    � � � �> ! 
 @ a b s t r u c t 
 < ! - - b e g i n   l o c a l e   j a - - > 
RMV�0n   ( ( < n e x t > ) ) ( )  0gS�_�0W0_�v�0nk!0n��} 0�S�_�0W0~0Y0 
 < ! - - b e g i n   l o c a l e   e n - - > 
 r e t u r n   a n   i t e m   i n   t h e   l i s t   n e x t   t o   t h e   i t e m   o b t a i n e d   b y   p r e v i o u s   ( ( < n e x t > ) ) ( ) 
 < ! - - e n d   l o c a l e - - > 
 @ d e s c r i p t i o n 
 < ! - - b e g i n   l o c a l e   j a - - > 
0�0�0�0ng _�0n�v�0~0gge0f0D0f0k!0n�v�0Lq!0DX4T0o0 e r r o r   n u m b e r   1 3 5 1  0�vzu0W0~0Y0 
 < ! - - b e g i n   l o c a l e   e n - - > 
 W h e n   t h e   l a s t   i t e m   h a v e   b e e n   a l r e a d y   r e t u r n e d ,   e r r o r   n u m b e r   1 3 5 1   i s   r a i s e d . 
 < ! - - e n d   l o c a l e - - > 
 
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
errn � m   + ,�}�}�@�~   �  � � � l  0 0�|�{�z�|  �{  �z   �  � � � r   0 9 � � � [   0 5 � � � l  0 3 ��y�x � n  0 3 � � � o   1 3�w�w 0 _n   �  f   0 1�y  �x   � m   3 4�v�v  � n      � � � o   6 8�u�u 0 _n   �  f   5 6 �  ��t � L   : < � � o   : ;�s�s 0 an_item  �t   �  � � � l     �r�q�p�r  �q  �p   �  � � � i   ! $ � � � I      �o�n�m�o 0 	next_item  �n  �m   � L      � � I     �l�k�j�l 0 next  �k  �j   �  � � � l     �i�h�g�i  �h  �g   �  � � � l      �f � ��f   ���!
@abstruct
<!--begin locale ja-->
((<next>))() �Ŏ��̗v�f���擾�ł��邩�ǂ������肵�܂��B
<!--begin locale en-->
check whether ((<next>))() can return a next item or not
<!--end locale-->
@description 
<!--begin locale ja-->
((<next>))() �ōŌ�̍��ڂ܂Ŏ擾���Ă����� false
<!--begin locale en-->
false should be returned, when the last item have been already returned with ((<next>))().
<!--end locale-->
@result boolean
    � � � � ! 
 @ a b s t r u c t 
 < ! - - b e g i n   l o c a l e   j a - - > 
 ( ( < n e x t > ) ) ( )  0gk!0n��} 0�S�_�0g0M0�0K0i0F0KR$[�0W0~0Y0 
 < ! - - b e g i n   l o c a l e   e n - - > 
 c h e c k   w h e t h e r   ( ( < n e x t > ) ) ( )   c a n   r e t u r n   a   n e x t   i t e m   o r   n o t 
 < ! - - e n d   l o c a l e - - > 
 @ d e s c r i p t i o n   
 < ! - - b e g i n   l o c a l e   j a - - > 
 ( ( < n e x t > ) ) ( )  0gg _�0n�v�0~0gS�_�0W0f0D0_0�   f a l s e 
 < ! - - b e g i n   l o c a l e   e n - - > 
 f a l s e   s h o u l d   b e   r e t u r n e d ,   w h e n   t h e   l a s t   i t e m   h a v e   b e e n   a l r e a d y   r e t u r n e d   w i t h   ( ( < n e x t > ) ) ( ) . 
 < ! - - e n d   l o c a l e - - > 
 @ r e s u l t   b o o l e a n 
 �  � � � i   % ( � � � I      �e�d�c�e 0 has_next  �d  �c   � L      � � B     � � � n     � � � o    �b�b 0 _n   �  f      � n    � � � o    �a�a 0 _length   �  f     �  � � � l     �`�_�^�`  �_  �^   �  � � � l      �] � ��]   � � �!
@abstruct
<!--begin locale ja-->
���O�� ((<next>))() �Ŏ擾�����v�f�Ɠ����v�f���擾���܂��B
<!--begin locale en-->
The item obtained by previous ((<next>))() is returned.
<!--end locale-->
@result anything
    � � � �t ! 
 @ a b s t r u c t 
 < ! - - b e g i n   l o c a l e   j a - - > 
v�RM0n   ( ( < n e x t > ) ) ( )  0gS�_�0W0_��} 0hT0X��} 0�S�_�0W0~0Y0 
 < ! - - b e g i n   l o c a l e   e n - - > 
 T h e   i t e m   o b t a i n e d   b y   p r e v i o u s   ( ( < n e x t > ) ) ( )   i s   r e t u r n e d . 
 < ! - - e n d   l o c a l e - - > 
 @ r e s u l t   a n y t h i n g 
 �  �  � i   ) , I      �\�[�Z�\ 0 current_item  �[  �Z   L      n      4    
�Y
�Y 
cobj l   	�X�W \    		 l   
�V�U
 n    o    �T�T 0 _n    f    �V  �U  	 m    �S�S �X  �W   n     o    �R�R 0 	_contents    f        l     �Q�P�O�Q  �P  �O    l      �N�N   � �!
@abstruct
<!--begin locale ja-->
���O�� ((<next>))() �Ŏ擾�����v�f�̃C���f�b�N�X
<!--begin locale en-->
An index number of an item obtained by previous ((<next>))() is returned.
<!--end locale-->
@result integer
    �� ! 
 @ a b s t r u c t 
 < ! - - b e g i n   l o c a l e   j a - - > 
v�RM0n   ( ( < n e x t > ) ) ( )  0gS�_�0W0_��} 0n0�0�0�0�0�0� 
 < ! - - b e g i n   l o c a l e   e n - - > 
 A n   i n d e x   n u m b e r   o f   a n   i t e m   o b t a i n e d   b y   p r e v i o u s   ( ( < n e x t > ) ) ( )   i s   r e t u r n e d . 
 < ! - - e n d   l o c a l e - - > 
 @ r e s u l t   i n t e g e r 
  i   - 0 I      �M�L�K�M 0 current_index  �L  �K   L      \      l    �J�I n     o    �H�H 0 _n    f     �J  �I   m    �G�G   !  l     �F�E�D�F  �E  �D  ! "#" l      �C$%�C  $ � �!
@abstruct�@
<!--begin locale ja-->
((<next>))() �Ŏ擾���郊�X�g���ڂ� index ��������߂��܂��B
<!--begin locale en-->
Decrements the index of the item obtained by ((<next>))(). i.e. same item can be obtained once more.
<!--end locale-->
   % �&&� ! 
 @ a b s t r u c t0  
 < ! - - b e g i n   l o c a l e   j a - - > 
 ( ( < n e x t > ) ) ( )  0gS�_�0Y0�0�0�0Șv�0n   i n d e x  0�N 0d]�0Mb;0W0~0Y0 
 < ! - - b e g i n   l o c a l e   e n - - > 
 D e c r e m e n t s   t h e   i n d e x   o f   t h e   i t e m   o b t a i n e d   b y   ( ( < n e x t > ) ) ( ) .   i . e .   s a m e   i t e m   c a n   b e   o b t a i n e d   o n c e   m o r e . 
 < ! - - e n d   l o c a l e - - > 
# '(' i   1 4)*) I      �B�A�@�B 0 decrement_index  �A  �@  * Z     +,�?�>+ ?     -.- n    /0/ o    �=�= 0 _n  0  f     . m    �<�< , r    121 \    343 l   5�;�:5 n   676 o   	 �9�9 0 _n  7  f    	�;  �:  4 m    �8�8 2 n     898 o    �7�7 0 _n  9  f    �?  �>  ( :;: l     �6�5�4�6  �5  �4  ; <=< l      �3>?�3  > �!
@abstruct
<!--begin locale ja-->
((<next>))() �Ŏ擾���郊�X�g���ڂ� index ������₵�܂��B�܂�A����ڂ��X�L�b�v�����܂��B
<!--begin locale en-->
Increments the index of the item obtained by ((<next>))(). i.e. skip an item.
<!--end locale-->

   ? �@@� ! 
 @ a b s t r u c t 
 < ! - - b e g i n   l o c a l e   j a - - > 
 ( ( < n e x t > ) ) ( )  0gS�_�0Y0�0�0�0Șv�0n   i n d e x  0�N 0dX�0�0W0~0Y00d0~0�0N 0d�v�0�0�0�0�0�0U0[0~0Y0 
 < ! - - b e g i n   l o c a l e   e n - - > 
 I n c r e m e n t s   t h e   i n d e x   o f   t h e   i t e m   o b t a i n e d   b y   ( ( < n e x t > ) ) ( ) .   i . e .   s k i p   a n   i t e m . 
 < ! - - e n d   l o c a l e - - > 
 
= ABA i   5 8CDC I      �2�1�0�2 0 increment_index  �1  �0  D Z     EF�/�.E ?     GHG n    IJI o    �-�- 0 _n  J  f     H m    �,�, F r    KLK [    MNM l   O�+�*O n   PQP o   	 �)�) 0 _n  Q  f    	�+  �*  N m    �(�( L n     RSR o    �'�' 0 _n  S  f    �/  �.  B TUT l     �&�%�$�&  �%  �$  U VWV l      �#XY�#  X � �!
@abstruct
<!--begin locale ja-->
((<next>))() �Ŏ擾���郊�X�g���ڂ��͂��߂ɖ߂��܂��B
<!--begin locale en-->
Make ((<next>))() return items form first.
<!--end locale-->
   Y �ZZ2 ! 
 @ a b s t r u c t 
 < ! - - b e g i n   l o c a l e   j a - - > 
 ( ( < n e x t > ) ) ( )  0gS�_�0Y0�0�0�0Șv�0�0o0X0�0kb;0W0~0Y0 
 < ! - - b e g i n   l o c a l e   e n - - > 
 M a k e   ( ( < n e x t > ) ) ( )   r e t u r n   i t e m s   f o r m   f i r s t . 
 < ! - - e n d   l o c a l e - - > 
W [\[ i   9 <]^] I      �"�!� �" 	0 reset  �!  �   ^ r     _`_ m     �� ` n     aba o    �� 0 _n  b  f    \ cdc l     ����  �  �  d efe l      �gh�  g  !@group Stack and Quene    h �ii 0 ! @ g r o u p   S t a c k   a n d   Q u e n e  f jkj l     ����  �  �  k lml l      �no�  n-'!
@abstruct
<!--begin locale ja-->
���X�g�̍Ō�ɗv�f��t�������܂��B
<!--begin locale en-->
Append an item at the end of the list.
<!--end locale-->
@param an_item(anything) : 
<!--begin locale ja-->���X�g�ɕt�������鍀��
<!--begin locale en-->an item to append into the list
<!--end locale-->
   o �pp ! 
 @ a b s t r u c t 
 < ! - - b e g i n   l o c a l e   j a - - > 
0�0�0�0ng _�0k��} 0�N�0QR�0H0~0Y0 
 < ! - - b e g i n   l o c a l e   e n - - > 
 A p p e n d   a n   i t e m   a t   t h e   e n d   o f   t h e   l i s t . 
 < ! - - e n d   l o c a l e - - > 
 @ p a r a m   a n _ i t e m ( a n y t h i n g )   :   
 < ! - - b e g i n   l o c a l e   j a - - >0�0�0�0kN�0QR�0H0��v� 
 < ! - - b e g i n   l o c a l e   e n - - > a n   i t e m   t o   a p p e n d   i n t o   t h e   l i s t 
 < ! - - e n d   l o c a l e - - > 
m qrq i   = @sts I      �u�� 0 push  u v�v o      �� 0 an_item  �  �  t k     ww xyx r     z{z o     �� 0 an_item  { n      |}|  ;    } n   ~~ o    �� 0 	_contents    f    y ��� r    ��� [    ��� l   
���� n   
��� o    
�� 0 _length  �  f    �  �  � m   
 �� � n     ��� o    �
�
 0 _length  �  f    �  r ��� l     �	���	  �  �  � ��� l      ����  �<6!
@abstruct
<!--begin locale ja-->
���X�g�̍Ō�̗v�f���擾���āA���X�g����폜���܂��B
<!--begin locale en-->
Obtain last item in the stored list, and remove the item.
<!--end locale-->
@result anything : 
<!--begin locale ja-->���X�g�̍Ō�̍���
<!--begin locale en-->last item in the list <!--end locale-->
   � ���& ! 
 @ a b s t r u c t 
 < ! - - b e g i n   l o c a l e   j a - - > 
0�0�0�0ng _�0n��} 0�S�_�0W0f00�0�0�0K0�RJ�d0W0~0Y0 
 < ! - - b e g i n   l o c a l e   e n - - > 
 O b t a i n   l a s t   i t e m   i n   t h e   s t o r e d   l i s t ,   a n d   r e m o v e   t h e   i t e m . 
 < ! - - e n d   l o c a l e - - > 
 @ r e s u l t   a n y t h i n g   :   
 < ! - - b e g i n   l o c a l e   j a - - >0�0�0�0ng _�0n�v� 
 < ! - - b e g i n   l o c a l e   e n - - > l a s t   i t e m   i n   t h e   l i s t   < ! - - e n d   l o c a l e - - > 
� ��� i   A D��� I      ���� 0 pop  �  �  � k     E�� ��� Q     ���� r    ��� n    	��� 4   	��
� 
cobj� m    ����� n   ��� o    � �  0 	_contents  �  f    � o      ���� 0 a_result  � R      ������
�� .ascrerr ****      � ****��  ��  � L    �� m    ��
�� 
msng� ��� l   ��������  ��  ��  � ��� Q    8���� r    *��� n    &��� 7   &����
�� 
cobj� m     "���� � m   # %������� n   ��� o    ���� 0 	_contents  �  f    � n     ��� o   ' )���� 0 	_contents  �  f   & '� R      ������
�� .ascrerr ****      � ****��  ��  � r   2 8��� J   2 4����  � n     ��� o   5 7���� 0 	_contents  �  f   4 5� ��� l  9 9��������  ��  ��  � ��� r   9 B��� \   9 >��� l  9 <������ n  9 <��� o   : <���� 0 _length  �  f   9 :��  ��  � m   < =���� � n     ��� o   ? A���� 0 _length  �  f   > ?� ���� L   C E�� o   C D���� 0 a_result  ��  � ��� l     ��������  ��  ��  � ��� l      ������  �)#!
@abstruct
<!--begin locale ja-->
���X�g�̐擪�ɗv�f��t�������܂��B
<!--begin locale en-->
Append an item at the beginning of the list.
<!--end locale-->
@param an_item(anything) :
<!--begin locale ja-->���X�g�ɕt�������鍀��
<!--begin locale en-->an item to be appended
<!--end locale-->
   � ��� ! 
 @ a b s t r u c t 
 < ! - - b e g i n   l o c a l e   j a - - > 
0�0�0�0nQH�-0k��} 0�N�0QR�0H0~0Y0 
 < ! - - b e g i n   l o c a l e   e n - - > 
 A p p e n d   a n   i t e m   a t   t h e   b e g i n n i n g   o f   t h e   l i s t . 
 < ! - - e n d   l o c a l e - - > 
 @ p a r a m   a n _ i t e m ( a n y t h i n g )   : 
 < ! - - b e g i n   l o c a l e   j a - - >0�0�0�0kN�0QR�0H0��v� 
 < ! - - b e g i n   l o c a l e   e n - - > a n   i t e m   t o   b e   a p p e n d e d 
 < ! - - e n d   l o c a l e - - > 
� ��� i   E H��� I      ������� 0 unshift  � ���� o      ���� 0 an_item  ��  ��  � k     �� ��� r     ��� o     ���� 0 an_item  � n      ���  :    � n   ��� o    ���� 0 	_contents  �  f    � ��� I    �������� 0 increment_index  ��  ��  � ��� r    ��� [    ��� l   ������ n   ��� o    ���� 0 _length  �  f    ��  ��  � m    ���� � n     ��� o    ���� 0 _length  �  f    � ���� L    ��  f    ��  � ��� l     ��������  ��  ��  � ��� l      ������  �0*!
@abstruct
<!--begin locale ja-->
���X�g�̐擪�̗v�f���擾���āA���X�g����폜���܂��B
<!--begin locale en-->
Obtain first item in the list and remove it.
<!--end locale-->
@result anything : 
<!--begin locale ja-->���X�g�̐擪�̗v�f
<!--begin locale en-->first item in the list <!--end locale-->
   � ��� ! 
 @ a b s t r u c t 
 < ! - - b e g i n   l o c a l e   j a - - > 
0�0�0�0nQH�-0n��} 0�S�_�0W0f00�0�0�0K0�RJ�d0W0~0Y0 
 < ! - - b e g i n   l o c a l e   e n - - > 
 O b t a i n   f i r s t   i t e m   i n   t h e   l i s t   a n d   r e m o v e   i t . 
 < ! - - e n d   l o c a l e - - > 
 @ r e s u l t   a n y t h i n g   :   
 < ! - - b e g i n   l o c a l e   j a - - >0�0�0�0nQH�-0n��}  
 < ! - - b e g i n   l o c a l e   e n - - > f i r s t   i t e m   i n   t h e   l i s t   < ! - - e n d   l o c a l e - - > 
� ��� i   I L��� I      �������� 	0 shift  ��  ��  � k     2�� ��� Q     ���� r    ��� n    	� � 4   	��
�� 
cobj m    ����   n    o    ���� 0 	_contents    f    � o      ���� 0 a_result  � R      ������
�� .ascrerr ****      � ****��  ��  � L     m    ��
�� 
msng�  l   ��������  ��  ��    r    	
	 n     1    ��
�� 
rest n    o    ���� 0 	_contents    f    
 n      o    ���� 0 	_contents    f      I     %�������� 0 decrement_index  ��  ��    r   & / \   & + l  & )���� n  & ) o   ' )���� 0 _length    f   & '��  ��   m   ) *����  n      o   , .���� 0 _length    f   + , �� L   0 2 o   0 1���� 0 a_result  ��  �  !  l     ��������  ��  ��  ! "#" l     ��������  ��  ��  # $%$ l      ��&'��  & # !@group Accessing List Items    ' �(( : ! @ g r o u p   A c c e s s i n g   L i s t   I t e m s  % )*) l      ��+,��  + � �!
@abstruct
<!--begin locale ja-->
�v�f�̐���Ԃ��܂��B
<!--begin locale en-->
Return number of elements
<!--end locale-->
@result integer
   , �-- ! 
 @ a b s t r u c t 
 < ! - - b e g i n   l o c a l e   j a - - > 
��} 0nep0���0W0~0Y0 
 < ! - - b e g i n   l o c a l e   e n - - > 
 R e t u r n   n u m b e r   o f   e l e m e n t s 
 < ! - - e n d   l o c a l e - - > 
 @ r e s u l t   i n t e g e r 
* ./. i   M P010 I      �������� 0 count_items  ��  ��  1 L     22 I    ��3��
�� .corecnte****       ****3 n    454 o    ���� 0 	_contents  5  f     ��  / 676 l     ��������  ��  ��  7 898 i   Q T:;: I      �������� 0 item_counts  ��  ��  ; L     << I    ��=��
�� .corecnte****       ****= n    >?> o    ���� 0 	_contents  ?  f     ��  9 @A@ l     ��������  ��  ��  A BCB i   U XDED I     ������
�� .corecnte****       ****��  ��  E L     FF I    ��G��
�� .corecnte****       ****G n    HIH o    ���� 0 	_contents  I  f     ��  C JKJ l     ��������  ��  ��  K LML l      ��NO��  N!
@abstruct
<!--begin locale ja-->
�w�肵���C���f�b�N�X�̗v�f���폜���܂��B
<!--begin locale en-->
Delete an item specified with an index number.
<!--end locale-->
@param indexes(integer or list of interger) :
<!--begin locale ja-->�폜����v�f�̃C���f�b�N�X�A�������̓C���f�b�N�X�̃��X�g
<!--begin locale en-->an index number or list of indexes of items to delete
<!--end locale-->@result list : <!--begin locale ja-->�폜���ꂽ�v�f�̃��X�g<!--begin locale en-->a list of deleted items form the XList contents<!--end locale-->   O �PP� ! 
 @ a b s t r u c t 
 < ! - - b e g i n   l o c a l e   j a - - > 
c[�0W0_0�0�0�0�0�0�0n��} 0�RJ�d0W0~0Y0 
 < ! - - b e g i n   l o c a l e   e n - - > 
 D e l e t e   a n   i t e m   s p e c i f i e d   w i t h   a n   i n d e x   n u m b e r . 
 < ! - - e n d   l o c a l e - - > 
 @ p a r a m   i n d e x e s ( i n t e g e r   o r   l i s t   o f   i n t e r g e r )   : 
 < ! - - b e g i n   l o c a l e   j a - - >RJ�d0Y0���} 0n0�0�0�0�0�0�00�0W0O0o0�0�0�0�0�0�0n0�0�0� 
 < ! - - b e g i n   l o c a l e   e n - - > a n   i n d e x   n u m b e r   o r   l i s t   o f   i n d e x e s   o f   i t e m s   t o   d e l e t e 
 < ! - - e n d   l o c a l e - - >  @ r e s u l t   l i s t   :    < ! - - b e g i n   l o c a l e   j a - - > RJ�d0U0�0_��} 0n0�0�0�  < ! - - b e g i n   l o c a l e   e n - - >  a   l i s t   o f   d e l e t e d   i t e m s   f o r m   t h e   X L i s t   c o n t e n t s  < ! - - e n d   l o c a l e - - > M QRQ i   Y \STS I      ��U���� 0 	delete_at  U V��V o      ���� 0 indexes  ��  ��  T k     �WW XYX r     Z[Z c     \]\ o     ���� 0 indexes  ] m    ��
�� 
list[ o      ���� 0 indexes  Y ^_^ r    
`a` J    ����  a o      ���� 
0 a_list  _ bcb l   ��������  ��  ��  c ded Y    �f��gh��f k    �ii jkj r    lml n    non 4    �p
� 
cobjp o    �~�~ 0 n  o o    �}�} 0 indexes  m o      �|�| 0 an_index  k qrq l   �{st�{  s  log "start delete_item"   t �uu . l o g   " s t a r t   d e l e t e _ i t e m "r vwv r    (xyx n    %z{z 4   " %�z|
�z 
cobj| o   # $�y�y 0 an_index  { n   "}~} o     "�x�x 0 	_contents  ~  f     y n      �  ;   & '� o   % &�w�w 
0 a_list  w ��� Z   ) }����� =  ) ,��� o   ) *�v�v 0 an_index  � m   * +�u�u � r   / 8��� n   / 4��� 1   2 4�t
�t 
rest� n  / 2��� o   0 2�s�s 0 	_contents  �  f   / 0� n     ��� o   5 7�r�r 0 	_contents  �  f   4 5� ��� E  ; C��� J   ; A�� ��� n  ; >��� o   < >�q�q 0 _length  �  f   ; <� ��p� m   > ?�o�o���p  � o   A B�n�n 0 an_index  � ��m� r   F W��� n   F S��� 7  I S�l��
�l 
cobj� m   M O�k�k � m   P R�j�j��� n  F I��� o   G I�i�i 0 	_contents  �  f   F G� n     ��� o   T V�h�h 0 	_contents  �  f   S T�m  � r   Z }��� b   Z y��� l  Z i��g�f� n   Z i��� 7  ] i�e��
�e 
cobj� m   a c�d�d � l  d h��c�b� \   d h��� o   e f�a�a 0 an_index  � m   f g�`�` �c  �b  � n  Z ]��� o   [ ]�_�_ 0 	_contents  �  f   Z [�g  �f  � l  i x��^�]� n   i x��� 7  l x�\��
�\ 
cobj� l  p t��[�Z� [   p t��� o   q r�Y�Y 0 an_index  � m   r s�X�X �[  �Z  � m   u w�W�W��� n  i l��� o   j l�V�V 0 	_contents  �  f   i j�^  �]  � n     ��� o   z |�U�U 0 	_contents  �  f   y z� ��� l  ~ ~�T�S�R�T  �S  �R  � ��� Z   ~ ����Q�P� l  ~ ���O�N� ?   ~ ���� n  ~ ���� o    ��M�M 0 _n  �  f   ~ � o   � ��L�L 0 an_index  �O  �N  � r   � ���� [   � ���� l  � ���K�J� n  � ���� o   � ��I�I 0 _n  �  f   � ��K  �J  � m   � ��H�H � n     ��� o   � ��G�G 0 _n  �  f   � ��Q  �P  � ��� l  � ��F�E�D�F  �E  �D  � ��C� r   � ���� \   � ���� l  � ���B�A� n  � ���� o   � ��@�@ 0 _length  �  f   � ��B  �A  � m   � ��?�? � n     ��� o   � ��>�> 0 _length  �  f   � ��C  �� 0 n  g m    �=�= h n    ��� 1    �<
�< 
leng� o    �;�; 0 indexes  ��  e ��� l  � ��:���:  �  log "end delete_item"   � ��� * l o g   " e n d   d e l e t e _ i t e m "� ��9� L   � ��� o   � ��8�8 
0 a_list  �9  R ��� l     �7�6�5�7  �6  �5  � ��� l      �4���4  ��!
@abstruct
<!--begin locale ja-->
�w�肵���C���f�b�N�X�̗v�f���擾���܂��B�C���f�b�N�X�̃��X�g��n���ƕ����̍��ڂ��擾�ł��܂��B
<!--begin locale en-->
Obtain an item specified with an index number. When a list of indexes is passed as an argument, multiple items will be obtained.
<!--end locale-->
@param an_index(integer or list of integer) : 
<!--begin locale ja-->�v�f�̃C���f�b�N�X�������̓C���f�b�N�X�̃��X�g
<!--begin locale en-->an index number or a list of indexes of the items to obtain
<!--end locale-->
@result anything : 
<!--begin locale ja-->an_index �Ԗڂ̗v�f�B�擾�Ɏ��s�����Ƃ��� error number -1728 �͔������܂��B
<!--begin locale en-->Return an_index th item. error number -1728 will be rased when an item can not be obtained. <!--end locale-->
   � ���B ! 
 @ a b s t r u c t 
 < ! - - b e g i n   l o c a l e   j a - - > 
c[�0W0_0�0�0�0�0�0�0n��} 0�S�_�0W0~0Y00�0�0�0�0�0�0n0�0�0�0�n!0Y0h�ep0n�v�0�S�_�0g0M0~0Y0 
 < ! - - b e g i n   l o c a l e   e n - - > 
 O b t a i n   a n   i t e m   s p e c i f i e d   w i t h   a n   i n d e x   n u m b e r .   W h e n   a   l i s t   o f   i n d e x e s   i s   p a s s e d   a s   a n   a r g u m e n t ,   m u l t i p l e   i t e m s   w i l l   b e   o b t a i n e d . 
 < ! - - e n d   l o c a l e - - > 
 @ p a r a m   a n _ i n d e x ( i n t e g e r   o r   l i s t   o f   i n t e g e r )   :   
 < ! - - b e g i n   l o c a l e   j a - - >��} 0n0�0�0�0�0�0�0�0W0O0o0�0�0�0�0�0�0n0�0�0� 
 < ! - - b e g i n   l o c a l e   e n - - > a n   i n d e x   n u m b e r   o r   a   l i s t   o f   i n d e x e s   o f   t h e   i t e m s   t o   o b t a i n 
 < ! - - e n d   l o c a l e - - > 
 @ r e s u l t   a n y t h i n g   :   
 < ! - - b e g i n   l o c a l e   j a - - > a n _ i n d e x  ujv�0n��} 0S�_�0kY1eW0W0_0h0M0o   e r r o r   n u m b e r   - 1 7 2 8  0ovzu0W0~0Y0 
 < ! - - b e g i n   l o c a l e   e n - - > R e t u r n   a n _ i n d e x   t h   i t e m .   e r r o r   n u m b e r   - 1 7 2 8   w i l l   b e   r a s e d   w h e n   a n   i t e m   c a n   n o t   b e   o b t a i n e d .   < ! - - e n d   l o c a l e - - > 
� ��� i   ] `��� I      �3��2�3 0 item_at  � ��1� o      �0�0 0 an_index  �1  �2  � k     B�� ��� Z     ���/�.� >    ��� n     ��� 1    �-
�- 
pcls� o     �,�, 0 an_index  � m    �+
�+ 
list� L    �� n       4    �*
�* 
cobj o    �)�) 0 an_index   n    o   	 �(�( 0 	_contents    f    	�/  �.  �  l   �'�&�%�'  �&  �%    r    	
	 J    �$�$  
 o      �#�# 
0 a_list    r    " I     �"�!�" 0 	make_with   �  o    �� 0 an_index  �   �!   o      �� 0 
index_list    V   # ? r   - : n   - 7 4   0 7�
� 
cobj l  1 6�� n  1 6 I   2 6���� 0 next  �  �   o   1 2�� 0 	inde_list  �  �   n  - 0 o   . 0�� 0 	_contents    f   - . n         ;   8 9  o   7 8�� 
0 a_list   n  ' ,!"! I   ( ,���� 0 has_next  �  �  " o   ' (�� 0 
index_list   #�# L   @ B$$ o   @ A�� 
0 a_list  �  � %&% l     ����  �  �  & '(' l      �)*�  )a[!
@abstruct
<!--begin locale ja-->
�w�肵���C���f�b�N�X�͈̗̔͂v�f���擾���܂��B
<!--begin locale en-->
Obtain items between two indexes.
<!--end locale-->
@param s_index(integer) : 
<!--begin locale ja-->�ŏ��̗v�f�̃C���f�b�N�X
<!--begin locale en-->the first index number
<!--end locale-->
@param e_index(integer) : 
<!--begin locale ja-->�Ō�̗v�f�̃C���f�b�N�X
<!--begin locale en-->the last index number
<!--end locale-->
@result XList : 
<!--begin locale ja-->s_index ���� e_index �܂ł̗v�f�� XList
<!--begin locale en-->An XList instance of elements from s_index to e_index <!--end locale-->
   * �++H ! 
 @ a b s t r u c t 
 < ! - - b e g i n   l o c a l e   j a - - > 
c[�0W0_0�0�0�0�0�0�0n{�V�0n��} 0�S�_�0W0~0Y0 
 < ! - - b e g i n   l o c a l e   e n - - > 
 O b t a i n   i t e m s   b e t w e e n   t w o   i n d e x e s . 
 < ! - - e n d   l o c a l e - - > 
 @ p a r a m   s _ i n d e x ( i n t e g e r )   :   
 < ! - - b e g i n   l o c a l e   j a - - >g R0n��} 0n0�0�0�0�0�0� 
 < ! - - b e g i n   l o c a l e   e n - - > t h e   f i r s t   i n d e x   n u m b e r 
 < ! - - e n d   l o c a l e - - > 
 @ p a r a m   e _ i n d e x ( i n t e g e r )   :   
 < ! - - b e g i n   l o c a l e   j a - - >g _�0n��} 0n0�0�0�0�0�0� 
 < ! - - b e g i n   l o c a l e   e n - - > t h e   l a s t   i n d e x   n u m b e r 
 < ! - - e n d   l o c a l e - - > 
 @ r e s u l t   X L i s t   :   
 < ! - - b e g i n   l o c a l e   j a - - > s _ i n d e x  0K0�   e _ i n d e x  0~0g0n��} 0n   X L i s t 
 < ! - - b e g i n   l o c a l e   e n - - > A n   X L i s t   i n s t a n c e   o f   e l e m e n t s   f r o m   s _ i n d e x   t o   e _ i n d e x   < ! - - e n d   l o c a l e - - > 
( ,-, i   a d./. I      �
0�	�
 0 items_in_range  0 121 o      �� 0 s_index  2 3�3 o      �� 0 e_index  �  �	  / L     44 I     �5�� 0 	make_with  5 6�6 n    787 7   �9:
� 
cobj9 o    
�� 0 s_index  : o    � �  0 e_index  8 n   ;<; o    ���� 0 	_contents  <  f    �  �  - =>= l     ��������  ��  ��  > ?@? l      ��AB��  A-'!
@abstruct
<!--begin locale ja-->
�w�肵���C���f�b�N�X�̗v�f��ݒ肵�܂��B
<!--begin locale en-->
set an item at a specified index.
<!--end locale-->
@param an_index(integer) : 
<!--begin locale ja-->�v�f�̃C���f�b�N�X
<!--begin locale en-->an index number of the item to set
<!--end locale-->
   B �CC ! 
 @ a b s t r u c t 
 < ! - - b e g i n   l o c a l e   j a - - > 
c[�0W0_0�0�0�0�0�0�0n��} 0��-[�0W0~0Y0 
 < ! - - b e g i n   l o c a l e   e n - - > 
 s e t   a n   i t e m   a t   a   s p e c i f i e d   i n d e x . 
 < ! - - e n d   l o c a l e - - > 
 @ p a r a m   a n _ i n d e x ( i n t e g e r )   :   
 < ! - - b e g i n   l o c a l e   j a - - >��} 0n0�0�0�0�0�0� 
 < ! - - b e g i n   l o c a l e   e n - - > a n   i n d e x   n u m b e r   o f   t h e   i t e m   t o   s e t 
 < ! - - e n d   l o c a l e - - > 
@ DED i   e hFGF I      ����H�� 0 set_item  ��  H ��IJ
�� 
for I o      ���� 0 a_value  J ��K��
�� 
at  K o      ���� 0 an_index  ��  G r     LML o     ���� 0 a_value  M n      NON 4    ��P
�� 
cobjP o    ���� 0 an_index  O n   QRQ o    ���� 0 	_contents  R  f    E STS l     ��������  ��  ��  T UVU l      ��WX��  W��!@abstruct<!-- begin locale ja -->�C���f�b�N�X�Ŏw�肵���v�f�����ւ��܂��B<!-- begin locale en -->Exchange items specified with indexes<!-- end locale -->@param index1(integer) : <!-- begin locale ja -->����ւ���v�f�̈�ڂ̃C���f�b�N�X<!-- begin locale en -->first index of an element to exchange<!-- end locale -->@param index2 (integer) : <!-- begin locale ja -->����ւ���v�f�̓�ڂ̃C���f�b�N�X<!-- begin locale en -->second index of an element to exchange<!-- end locale -->   X �YY| !  @ a b s t r u c t  < ! - -   b e g i n   l o c a l e   j a   - - > 0�0�0�0�0�0�0gc[�0W0_��} 0�Qe0�f�0H0~0Y0  < ! - -   b e g i n   l o c a l e   e n   - - >  E x c h a n g e   i t e m s   s p e c i f i e d   w i t h   i n d e x e s  < ! - -   e n d   l o c a l e   - - >  @ p a r a m   i n d e x 1 ( i n t e g e r )   :    < ! - -   b e g i n   l o c a l e   j a   - - >Qe0�f�0H0���} 0nN 0dv�0n0�0�0�0�0�0�  < ! - -   b e g i n   l o c a l e   e n   - - > f i r s t   i n d e x   o f   a n   e l e m e n t   t o   e x c h a n g e  < ! - -   e n d   l o c a l e   - - >  @ p a r a m   i n d e x 2   ( i n t e g e r )   :    < ! - -   b e g i n   l o c a l e   j a   - - >Qe0�f�0H0���} 0nN�0dv�0n0�0�0�0�0�0�  < ! - -   b e g i n   l o c a l e   e n   - - > s e c o n d   i n d e x   o f   a n   e l e m e n t   t o   e x c h a n g e  < ! - -   e n d   l o c a l e   - - > V Z[Z i   i l\]\ I      ��^���� 0 exchange_items  ^ _`_ o      ���� 
0 index1  ` a��a o      ���� 
0 index2  ��  ��  ] k     bb cdc r     efe n     ghg 4    ��i
�� 
cobji o    ���� 
0 index1  h n    jkj o    ���� 0 	_contents  k  f     f o      ���� 
0 a_buff  d lml r   	 non n   	 pqp 4    ��r
�� 
cobjr o    ���� 
0 index2  q n  	 sts o   
 ���� 0 	_contents  t  f   	 
o n      uvu 4    ��w
�� 
cobjw o    ���� 
0 index1  v n   xyx o    ���� 0 	_contents  y  f    m z��z r    {|{ o    ���� 
0 a_buff  | n      }~} 4    ��
�� 
cobj o    ���� 
0 index2  ~ n   ��� o    ���� 0 	_contents  �  f    ��  [ ��� l     ��������  ��  ��  � ��� l      ������  ���!
@abstruct
<!--begin locale ja-->
�I�u�W�F�N�g an_item ���܂�ł��邩�ǂ������ׂ܂��B
<!--begin locale en-->Check whether the object "an_item" is included in the XList instance or not.<!--end locale-->
@param an_item(boolean)
@result anything : 
<!--begin locale ja--> an_item ���܂�ł����� true
<!--begin locale en--> if an_item is in the XList instance, ture will be returned. <!--end locale-->
   � ���� ! 
 @ a b s t r u c t 
 < ! - - b e g i n   l o c a l e   j a - - > 
0�0�0�0�0�0�   a n _ i t e m  0�T+0�0g0D0�0K0i0F0K��0y0~0Y0 
 < ! - - b e g i n   l o c a l e   e n - - >  C h e c k   w h e t h e r   t h e   o b j e c t   " a n _ i t e m "   i s   i n c l u d e d   i n   t h e   X L i s t   i n s t a n c e   o r   n o t .  < ! - - e n d   l o c a l e - - >  
 @ p a r a m   a n _ i t e m ( b o o l e a n ) 
 @ r e s u l t   a n y t h i n g   :   
 < ! - - b e g i n   l o c a l e   j a - - >   a n _ i t e m  0�T+0�0g0D0_0�   t r u e 
 < ! - - b e g i n   l o c a l e   e n - - >   i f   a n _ i t e m   i s   i n   t h e   X L i s t   i n s t a n c e ,   t u r e   w i l l   b e   r e t u r n e d .   < ! - - e n d   l o c a l e - - > 
� ��� i   m p��� I      ������� 0 has_item  � ���� o      ���� 0 an_item  ��  ��  � L     �� E    ��� n    ��� o    ���� 0 	_contents  �  f     � o    ���� 0 an_item  � ��� l     ��������  ��  ��  � ��� l      ������  �ic!
@abstruct
<!--begin locale ja-->
�I�u�W�F�N�g an_item �̃C���f�b�N�X���擾���܂��B
<!--begin locale en-->Obtain an index number of the object "an_item" in the XList instance.<!--end locale-->
@param an_item(integer)
@result anything : 
<!--begin locale ja--> an_item �̃C���f�b�N�X
<!--begin locale en--> an index number of an_item <!--end locale-->
   � ���� ! 
 @ a b s t r u c t 
 < ! - - b e g i n   l o c a l e   j a - - > 
0�0�0�0�0�0�   a n _ i t e m  0n0�0�0�0�0�0�0�S�_�0W0~0Y0 
 < ! - - b e g i n   l o c a l e   e n - - >  O b t a i n   a n   i n d e x   n u m b e r   o f   t h e   o b j e c t   " a n _ i t e m "   i n   t h e   X L i s t   i n s t a n c e .  < ! - - e n d   l o c a l e - - >  
 @ p a r a m   a n _ i t e m ( i n t e g e r ) 
 @ r e s u l t   a n y t h i n g   :   
 < ! - - b e g i n   l o c a l e   j a - - >   a n _ i t e m  0n0�0�0�0�0�0� 
 < ! - - b e g i n   l o c a l e   e n - - >   a n   i n d e x   n u m b e r   o f   a n _ i t e m   < ! - - e n d   l o c a l e - - > 
� ��� i   q t��� I      ������� 0 index_of  � ���� o      ���� 0 an_item  ��  ��  � k     >�� ��� Z     ������� H     �� I     ������� 0 has_item  � ���� o    ���� 0 an_item  ��  ��  � L   
 �� m   
 ����  ��  ��  � ��� l   ��������  ��  ��  � ��� r    ��� m    ����  � o      ���� 0 an_index  � ��� Y    ;�������� Z   " 6������� =  " *��� n   " (��� 4   % (���
�� 
cobj� o   & '���� 0 n  � n  " %��� o   # %���� 0 	_contents  �  f   " #� o   ( )���� 0 an_item  � k   - 2�� ��� r   - 0��� o   - .���� 0 n  � o      ���� 0 an_index  � ����  S   1 2��  ��  ��  �� 0 n  � m    ���� � n   ��� o    ���� 0 _length  �  f    ��  � ��� l  < <��������  ��  ��  � ���� L   < >�� o   < =���� 0 an_index  ��  � ��� l     ��������  ��  ��  � ��� l      ������  � � �!@abstruct<!--begin locale ja-->����Ă��郊�X�g�̃R�s�[��Ԃ��܂��B<!--begin locale en-->return a copy of stored list.<!--end locale-->@result list    � ��� !  @ a b s t r u c t  < ! - - b e g i n   l o c a l e   j a - - > Q�S0W0f0D0�0�0�0�0n0�0�0�0���0W0~0Y0  < ! - - b e g i n   l o c a l e   e n - - >  r e t u r n   a   c o p y   o f   s t o r e d   l i s t .  < ! - - e n d   l o c a l e - - >  @ r e s u l t   l i s t   � ��� i   u x��� I      �������� 0 	all_items  ��  ��  � k     	�� ��� s     ��� n    ��� o    ���� 0 	_contents  �  f     � o      ���� 
0 a_list  � ���� L    	�� o    ���� 
0 a_list  ��  � ��� l     ��������  ��  ��  � ��� l      ������  ���!
@abstruct
<!--begin locale ja-->
����Ă��郊�X�g��Ԃ��܂��B
<!--begin locale en-->
return the stored list.
<!--end locale-->@description<!--begin locale ja-->�Ԃ�l�̃��X�g��ύX����ƁAXList �̓��e��ύX���邱�ƂɂȂ�܂��B�ł��邩����A���̃��\�b�h���g��Ȃ����Ƃ��������߂��܂��B<!--begin locale en-->Changing elements in retuend list means changing contents of the XList instance.It is recommended not to use this method.
<!--end locale-->
@result list 
   � ��� ! 
 @ a b s t r u c t 
 < ! - - b e g i n   l o c a l e   j a - - > 
Q�S0W0f0D0�0�0�0�0���0W0~0Y0 
 < ! - - b e g i n   l o c a l e   e n - - > 
 r e t u r n   t h e   s t o r e d   l i s t . 
 < ! - - e n d   l o c a l e - - >  @ d e s c r i p t i o n  < ! - - b e g i n   l o c a l e   j a - - > ��0�P$0n0�0�0�0�Y	f�0Y0�0h0 X L i s t  0nQ�[�0�Y	f�0Y0�0S0h0k0j0�0~0Y0 0g0M0�0K0N0�00S0n0�0�0�0�0�O0�0j0D0S0h0�0J0Y0Y0�0W0~0Y0  < ! - - b e g i n   l o c a l e   e n - - >  C h a n g i n g   e l e m e n t s   i n   r e t u e n d   l i s t   m e a n s   c h a n g i n g   c o n t e n t s   o f   t h e   X L i s t   i n s t a n c e .  I t   i s   r e c o m m e n d e d   n o t   t o   u s e   t h i s   m e t h o d . 
 < ! - - e n d   l o c a l e - - >  
 @ r e s u l t   l i s t   
� ��� i   y |��� I      �������� 0 list_ref  ��  ��  � L     �� n    ��� o    ���� 0 	_contents  �  f     � ��� l     ��������  ��  ��  � ��� l      ������  � �!
@abstruct
<!--begin locale ja-->
�^����ꂽ���X�g�̊e�v�f�� XList �̃C���X�^���X�̖��[�ɒǉ����܂��B
<!--begin locale en-->
Add each item contained passed list at end of the reciver's XList instance.
<!--end locale-->@param a_list(list)
@result me
   � ���� ! 
 @ a b s t r u c t 
 < ! - - b e g i n   l o c a l e   j a - - > 
N0H0�0�0_0�0�0�0nT��} 0�   X L i s t  0n0�0�0�0�0�0�0ng+z�0k��R�0W0~0Y0 
 < ! - - b e g i n   l o c a l e   e n - - > 
 A d d   e a c h   i t e m   c o n t a i n e d   p a s s e d   l i s t   a t   e n d   o f   t h e   r e c i v e r ' s   X L i s t   i n s t a n c e . 
 < ! - - e n d   l o c a l e - - >  @ p a r a m   a _ l i s t ( l i s t )  
 @ r e s u l t   m e 
� ��� i   } ���� I      ������� 0 add_from_list  � ���� o      ���� 
0 a_list  ��  ��  � k     �� ��� r     	��� b     ��� n       o    ���� 0 	_contents    f     � o    ���� 
0 a_list  � n      o    ���� 0 	_contents    f    �  r   
  [   
 	 l  
 
����
 n  
  o    ���� 0 _length    f   
 ��  ��  	 l   ���� I   ����
�� .corecnte****       **** o    ���� 
0 a_list  ��  ��  ��   n      o    ���� 0 _length    f     �� L      f    ��  �  l     ��~�}�  �~  �}    l      �|�|   ! !@group Conversion to Text     � 6 ! @ g r o u p   C o n v e r s i o n   t o   T e x t    l     �{�z�y�{  �z  �y    l      �x�x  ��!
@abstruct
<!--begin locale ja-->
�^����ꂽ��؂蕶���������ėv�f�𕶎���Ƃ��Č������܂��B((<XText>)) �̃C���X�^���X��Ԃ��܂��B
<!--begin locale en-->
Join every elements with given a delimiters as ((<XText>))
<!--end locale-->@param a_delimiter (string or Unicode text): <!--begin locale ja-->��؂蕶��<!--begin locale en-->text to be used as a delimiter to join text list<!--end locale-->@result script object : a ((<XText>)) instance
    �  & ! 
 @ a b s t r u c t 
 < ! - - b e g i n   l o c a l e   j a - - > 
N0H0�0�0_S:R0�e�[W0�0d0K0c0f��} 0�e�[WR0h0W0f}PT0W0~0Y0 ( ( < X T e x t > ) )  0n0�0�0�0�0�0�0���0W0~0Y0 
 < ! - - b e g i n   l o c a l e   e n - - > 
 J o i n   e v e r y   e l e m e n t s   w i t h   g i v e n   a   d e l i m i t e r s   a s   ( ( < X T e x t > ) ) 
 < ! - - e n d   l o c a l e - - >  @ p a r a m   a _ d e l i m i t e r   ( s t r i n g   o r   U n i c o d e   t e x t ) :    < ! - - b e g i n   l o c a l e   j a - - > S:R0�e�[W  < ! - - b e g i n   l o c a l e   e n - - >  t e x t   t o   b e   u s e d   a s   a   d e l i m i t e r   t o   j o i n   t e x t   l i s t  < ! - - e n d   l o c a l e - - >  @ r e s u l t   s c r i p t   o b j e c t   :   a   ( ( < X T e x t > ) )   i n s t a n c e 
 !"! i   � �#$# I      �w%�v�w 0 as_xtext_with  % &�u& o      �t�t 0 a_delimiter  �u  �v  $ k     '' ()( r     *+* I     �s,�r�s 0 as_unicode_with  , -�q- o    �p�p 0 a_delimiter  �q  �r  + o      �o�o 
0 a_text  ) .�n. L   	 // n  	 010 I    �m2�l�m 0 	make_with  2 3�k3 o    �j�j 
0 a_text  �k  �l  1 o   	 �i�i 0 xtext XText�n  " 454 l     �h�g�f�h  �g  �f  5 676 l      �e89�e  8��!
@abstruct
<!--begin locale ja-->
�^����ꂽ��؂蕶���������āAUnicode text �Ƃ��Ă��ׂĂ̗v�f���������܂��B
<!--begin locale en-->
Join every elements with given a delimiters as Unicode text
<!--end locale-->@param a_delimiter (string or Unicode text): <!--begin locale ja-->��؂蕶��<!--begin locale en-->text to be used as a delimiter to join text list<!--end locale-->@result Unicode text
   9 �::� ! 
 @ a b s t r u c t 
 < ! - - b e g i n   l o c a l e   j a - - > 
N0H0�0�0_S:R0�e�[W0�0d0K0c0f0 U n i c o d e   t e x t  0h0W0f0Y0y0f0n��} 0�}PT0W0~0Y0 
 < ! - - b e g i n   l o c a l e   e n - - > 
 J o i n   e v e r y   e l e m e n t s   w i t h   g i v e n   a   d e l i m i t e r s   a s   U n i c o d e   t e x t 
 < ! - - e n d   l o c a l e - - >  @ p a r a m   a _ d e l i m i t e r   ( s t r i n g   o r   U n i c o d e   t e x t ) :    < ! - - b e g i n   l o c a l e   j a - - > S:R0�e�[W  < ! - - b e g i n   l o c a l e   e n - - >  t e x t   t o   b e   u s e d   a s   a   d e l i m i t e r   t o   j o i n   t e x t   l i s t  < ! - - e n d   l o c a l e - - >  @ r e s u l t   U n i c o d e   t e x t 
7 ;<; i   � �=>= I      �d?�c�d 0 as_unicode_with  ? @�b@ o      �a�a 0 a_delimiter  �b  �c  > k     #AA BCB O      DED k    FF GHG I    �`�_�^�` 0 store_delimiters  �_  �^  H IJI r    KLK I    �]M�\�] 0 	join_list  M NON n   PQP o    �[�[ 0 	_contents  Q  f    O R�ZR o    �Y�Y 0 a_delimiter  �Z  �\  L o      �X�X 
0 a_text  J S�WS I    �V�U�T�V 0 restore_delimiters  �U  �T  �W  E o     �S�S 0 xtext XTextC T�RT L   ! #UU o   ! "�Q�Q 
0 a_text  �R  < VWV l     �P�O�N�P  �O  �N  W XYX l      �MZ[�M  Z��!
@abstruct
<!--begin locale ja-->
((<as_unicode_with>)) �Ɠ����B
�^����ꂽ��؂蕶���������āAUnicode text �Ƃ��Ă��ׂĂ̗v�f���������܂��B
<!--begin locale en-->
A synonym of ((<as_unicode_with>)).
Join every elements with given a delimiters as Unicode text.
<!--end locale-->@param a_delimiter (string or Unicode text): <!--begin locale ja-->��؂蕶��<!--begin locale en-->text to be used as a delimiter to join text list<!--end locale-->@result Unicode text
   [ �\\` ! 
 @ a b s t r u c t 
 < ! - - b e g i n   l o c a l e   j a - - > 
 ( ( < a s _ u n i c o d e _ w i t h > ) )  0hT0X0 
N0H0�0�0_S:R0�e�[W0�0d0K0c0f0 U n i c o d e   t e x t  0h0W0f0Y0y0f0n��} 0�}PT0W0~0Y0 
 < ! - - b e g i n   l o c a l e   e n - - > 
 A   s y n o n y m   o f   ( ( < a s _ u n i c o d e _ w i t h > ) ) . 
 J o i n   e v e r y   e l e m e n t s   w i t h   g i v e n   a   d e l i m i t e r s   a s   U n i c o d e   t e x t . 
 < ! - - e n d   l o c a l e - - >  @ p a r a m   a _ d e l i m i t e r   ( s t r i n g   o r   U n i c o d e   t e x t ) :    < ! - - b e g i n   l o c a l e   j a - - > S:R0�e�[W  < ! - - b e g i n   l o c a l e   e n - - >  t e x t   t o   b e   u s e d   a s   a   d e l i m i t e r   t o   j o i n   t e x t   l i s t  < ! - - e n d   l o c a l e - - >  @ r e s u l t   U n i c o d e   t e x t 
Y ]^] i   � �_`_ I      �La�K�L 0 as_text_with  a b�Jb o      �I�I 0 a_delimiter  �J  �K  ` L     cc I     �Hd�G�H 0 as_unicode_with  d e�Fe o    �E�E 0 a_delimiter  �F  �G  ^ fgf l     �D�C�B�D  �C  �B  g hih l      �Ajk�A  j��!
@abstruct
<!--begin locale ja-->
�^����ꂽ��؂蕶���������āA string �Ƃ��Ă��ׂĂ̗v�f���������܂��B
<!--begin locale en-->
Join every elements with given a delimiters as string
<!--end locale-->@param a_delimiter (string or Unicode text): <!--begin locale ja-->��؂蕶��<!--begin locale en-->text to be used as a delimiter to join text list<!--end locale-->@result string
   k �ll� ! 
 @ a b s t r u c t 
 < ! - - b e g i n   l o c a l e   j a - - > 
N0H0�0�0_S:R0�e�[W0�0d0K0c0f0   s t r i n g  0h0W0f0Y0y0f0n��} 0�}PT0W0~0Y0 
 < ! - - b e g i n   l o c a l e   e n - - > 
 J o i n   e v e r y   e l e m e n t s   w i t h   g i v e n   a   d e l i m i t e r s   a s   s t r i n g 
 < ! - - e n d   l o c a l e - - >  @ p a r a m   a _ d e l i m i t e r   ( s t r i n g   o r   U n i c o d e   t e x t ) :    < ! - - b e g i n   l o c a l e   j a - - > S:R0�e�[W  < ! - - b e g i n   l o c a l e   e n - - >  t e x t   t o   b e   u s e d   a s   a   d e l i m i t e r   t o   j o i n   t e x t   l i s t  < ! - - e n d   l o c a l e - - >  @ r e s u l t   s t r i n g 
i mnm i   � �opo I      �@q�?�@ 0 as_string_with  q r�>r o      �=�= 0 a_delimiter  �>  �?  p k     #ss tut O      vwv k    xx yzy I    �<�;�:�< 0 store_delimiters  �;  �:  z {|{ r    }~} I    �9�8�9 0 join_as_string   ��� n   ��� o    �7�7 0 	_contents  �  f    � ��6� o    �5�5 0 a_delimiter  �6  �8  ~ o      �4�4 
0 a_text  | ��3� I    �2�1�0�2 0 restore_delimiters  �1  �0  �3  w o     �/�/ 0 xtext XTextu ��.� L   ! #�� o   ! "�-�- 
0 a_text  �.  n ��� l     �,�+�*�,  �+  �*  � ��� l     �)�(�'�)  �(  �'  � ��� l      �&���&  � &  !@group Loop with Script Object    � ��� @ ! @ g r o u p   L o o p   w i t h   S c r i p t   O b j e c t  � ��� l     �%�$�#�%  �$  �#  � ��� l      �"���"  ��!
@abstruct 
<!--begin locale ja-->
���X�g�̗v�f�������ɂ��ăX�N���v�g�I�u�W�F�N�g�� do �n���h�����J��Ԃ����s���܂��B
<!--begin locale en-->
Call do handler of given script object with each item in the XList as an argument.
<!--end locale-->
@description 
<!--begin locale ja-->
a_script �͈�����������Ƃ� do �n���h�����������Ă��Ȃ���΂Ȃ�܂���Bdo �n���h���̕Ԃ�l�� true �������� false �ł���K�v������܂��Bdo �n���h���� false �� �Ԃ��Ə����𒆎~���܂��B

do �̈����ɂ̓��X�g�̗v�f�ւ̎Q�Ƃ��n����܂��Bcontents �ɒl�������邱�Ƃɂ��A���X�g�̗v�f�����������邱�Ƃ��ł��܂��B
<!--begin locale en-->
a_script must have a�@do handler which require only argument. The do handler must return true or false. When the do handler return false, the process is stoped immediately.A reference to an item of the list is passed to the do handler. You can change elements of the list by assining a value to contents of the reference.
<!--end locale-->
@param
<!--begin locale ja-->
a_script(�X�N���v�g�I�u�W�F�N�g) : ������������Ƃ� do �n���h���������Ă���K�v������܂��B do �n���h���͐^�U�l��Ԃ��Ȃ��Ă͂Ȃ�܂���B
<!--begin locale en-->
a_script(script object) : must have a do handler which require only argument. The do handler must return boolean.
<!--end locale-->
   � ���: ! 
 @ a b s t r u c t   
 < ! - - b e g i n   l o c a l e   j a - - > 
0�0�0�0n��} 0�_ep0k0W0f0�0�0�0�0�0�0�0�0�0�0�0n   d o  0�0�0�0�0�~p0���0W[��L0W0~0Y0 
 < ! - - b e g i n   l o c a l e   e n - - > 
 C a l l   d o   h a n d l e r   o f   g i v e n   s c r i p t   o b j e c t   w i t h   e a c h   i t e m   i n   t h e   X L i s t   a s   a n   a r g u m e n t . 
 < ! - - e n d   l o c a l e - - > 
 @ d e s c r i p t i o n   
 < ! - - b e g i n   l o c a l e   j a - - > 
 a _ s c r i p t  0o_ep0�N 0d0`0Q0h0�   d o  0�0�0�0�0�[���0W0f0D0j0Q0�0p0j0�0~0[0�0 d o  0�0�0�0�0n��0�P$0o   t r u e  0�0W0O0o   f a l s e  0g0B0�_ŉ�0L0B0�0~0Y0 d o  0�0�0�0�0L   f a l s e  0�  ��0Y0hQ�t0�N-kb0W0~0Y0 
 
 d o  0n_ep0k0o0�0�0�0n��} 0x0nS�qg0Ln!0U0�0~0Y0 c o n t e n t s  0kP$0�N�Qe0Y0�0S0h0k0�0�00�0�0�0n��} 0�f�0Mc�0H0�0S0h0L0g0M0~0Y0 
 < ! - - b e g i n   l o c a l e   e n - - > 
 a _ s c r i p t   m u s t   h a v e   a0  d o   h a n d l e r   w h i c h   r e q u i r e   o n l y   a r g u m e n t .   T h e   d o   h a n d l e r   m u s t   r e t u r n   t r u e   o r   f a l s e .   W h e n   t h e   d o   h a n d l e r   r e t u r n   f a l s e ,   t h e   p r o c e s s   i s   s t o p e d   i m m e d i a t e l y .   A   r e f e r e n c e   t o   a n   i t e m   o f   t h e   l i s t   i s   p a s s e d   t o   t h e   d o   h a n d l e r .   Y o u   c a n   c h a n g e   e l e m e n t s   o f   t h e   l i s t   b y   a s s i n i n g   a   v a l u e   t o   c o n t e n t s   o f   t h e   r e f e r e n c e . 
 < ! - - e n d   l o c a l e - - > 
 @ p a r a m 
 < ! - - b e g i n   l o c a l e   j a - - > 
 a _ s c r i p t (0�0�0�0�0�0�0�0�0�0�0� )   :  _ep0�N 0d0`0Q0h0�   d o  0�0�0�0�0�c0c0f0D0�_ŉ�0L0B0�0~0Y0   d o  0�0�0�0�0owP}P$0���0U0j0O0f0o0j0�0~0[0�0 
 < ! - - b e g i n   l o c a l e   e n - - > 
 a _ s c r i p t ( s c r i p t   o b j e c t )   :   m u s t   h a v e   a   d o   h a n d l e r   w h i c h   r e q u i r e   o n l y   a r g u m e n t .   T h e   d o   h a n d l e r   m u s t   r e t u r n   b o o l e a n . 
 < ! - - e n d   l o c a l e - - > 
� ��� i   � ���� I      �!�� �! 0 each  � ��� o      �� 0 a_script  �  �   � X     (���� k    #�� ��� l   ����  � * $if not (a_script's do(an_item)) then   � ��� H i f   n o t   ( a _ s c r i p t ' s   d o ( a n _ i t e m ) )   t h e n� ��� Z    #����� l   ���� =   ��� n   ��� I    ���� 0 do  � ��� o    �� 0 an_item  �  �  � o    �� 0 a_script  � m    �
� boovfals�  �  �  S    �  �  �  � 0 an_item  � l   ���� N    �� n   ��� o    �� 0 	_contents  �  f    �  �  � ��� l     ����  �  �  � ��� l      �
���
  �B<!
@abstruct 
<!--begin locale ja-->
���X�g�̂��ׂĂ̗v�f�������ɂ��ăX�N���v�g�I�u�W�F�N�g�� do �n���h�������s���܂��Bdo �n���h���̕Ԃ�l��v�f�Ƃ��� XList �����ʂɂȂ�܂��B
<!--begin locale en-->
Call do handler of given script object with each items in the list as and argument. A XList consisting of the results of do handler is returned.
<!--end locale-->
@description 
<!--begin locale ja-->
a_script �͈�����������Ƃ� do �n���h�����������Ă��Ȃ���΂Ȃ�܂���B

do �̈����ɂ̓��X�g�̗v�f�ւ̎Q�Ƃ��n����܂��Bcontents �ɒl�������邱�Ƃɂ��A���X�g�̗v�f�����������邱�Ƃ��ł��܂��B
<!--begin locale en-->
a_script must have a�@do handler which require only argument.

A reference to an item of the list is passed to the do handler. You can change elements of the list by assining a value to contents of the reference.
<!--end locale-->
@param a_script(script object) :
<!--begin locale ja--> ������������Ƃ� do �n���h���������Ă���K�v������܂��B
<!--begin locale en--> must have a do handler which require only argument.
<!--end locale-->@result Instance of XList
   � ��� ! 
 @ a b s t r u c t   
 < ! - - b e g i n   l o c a l e   j a - - > 
0�0�0�0n0Y0y0f0n��} 0�_ep0k0W0f0�0�0�0�0�0�0�0�0�0�0�0n   d o  0�0�0�0�0�[��L0W0~0Y0 d o  0�0�0�0�0n��0�P$0���} 0h0W0_   X L i s t  0L}Pg�0k0j0�0~0Y0 
 < ! - - b e g i n   l o c a l e   e n - - > 
 C a l l   d o   h a n d l e r   o f   g i v e n   s c r i p t   o b j e c t   w i t h   e a c h   i t e m s   i n   t h e   l i s t   a s   a n d   a r g u m e n t .   A   X L i s t   c o n s i s t i n g   o f   t h e   r e s u l t s   o f   d o   h a n d l e r   i s   r e t u r n e d . 
 < ! - - e n d   l o c a l e - - > 
 @ d e s c r i p t i o n   
 < ! - - b e g i n   l o c a l e   j a - - > 
 a _ s c r i p t  0o_ep0�N 0d0`0Q0h0�   d o  0�0�0�0�0�[���0W0f0D0j0Q0�0p0j0�0~0[0�0 
 
 d o  0n_ep0k0o0�0�0�0n��} 0x0nS�qg0Ln!0U0�0~0Y0 c o n t e n t s  0kP$0�N�Qe0Y0�0S0h0k0�0�00�0�0�0n��} 0�f�0Mc�0H0�0S0h0L0g0M0~0Y0 
 < ! - - b e g i n   l o c a l e   e n - - > 
 a _ s c r i p t   m u s t   h a v e   a0  d o   h a n d l e r   w h i c h   r e q u i r e   o n l y   a r g u m e n t . 
 
 A   r e f e r e n c e   t o   a n   i t e m   o f   t h e   l i s t   i s   p a s s e d   t o   t h e   d o   h a n d l e r .   Y o u   c a n   c h a n g e   e l e m e n t s   o f   t h e   l i s t   b y   a s s i n i n g   a   v a l u e   t o   c o n t e n t s   o f   t h e   r e f e r e n c e . 
 < ! - - e n d   l o c a l e - - > 
 @ p a r a m   a _ s c r i p t ( s c r i p t   o b j e c t )   : 
 < ! - - b e g i n   l o c a l e   j a - - >  _ep0�N 0d0`0Q0h0�   d o  0�0�0�0�0�c0c0f0D0�_ŉ�0L0B0�0~0Y0 
 < ! - - b e g i n   l o c a l e   e n - - >   m u s t   h a v e   a   d o   h a n d l e r   w h i c h   r e q u i r e   o n l y   a r g u m e n t . 
 < ! - - e n d   l o c a l e - - >  @ r e s u l t   I n s t a n c e   o f   X L i s t 
� ��� i   � ���� I      �	���	 0 map  � ��� o      �� 0 a_script  �  �  � k     �� ��� r     ��� I     ���� 0 map_as_list  � ��� o    �� 0 a_script  �  �  � o      �� 
0 a_list  � �� � L   	 �� I   	 ������� 0 make_with_list  � ���� o   
 ���� 
0 a_list  ��  ��  �   � ��� l     ��������  ��  ��  � ��� l      ������  �-'!
@abstruct 
<!--begin locale ja-->
���X�g�̂��ׂĂ̗v�f�������ɂ��ăX�N���v�g�I�u�W�F�N�g�� do �n���h�������s���܂��Bdo �n���h���̕Ԃ�l�̃��X�g�����ʂɂȂ�܂��B
<!--begin locale en-->
Call do handler of given script object with each items in the list as and argument. An AppleScript's list of the results of do handler is returned.
<!--end locale-->
@description 
<!--begin locale ja-->
a_script �͈�����������Ƃ� do �n���h�����������Ă��Ȃ���΂Ȃ�܂���B

do �̈����ɂ̓��X�g�̗v�f�ւ̎Q�Ƃ��n����܂��Bcontents �ɒl�������邱�Ƃɂ��A���X�g�̗v�f�����������邱�Ƃ��ł��܂��B
<!--begin locale en-->
a_script must have a�@do handler which require only argument.

A reference to an item of the list is passed to the do handler. You can change elements of the list by assining a value to contents of the reference.
<!--end locale-->
@param a_script(script object) :
<!--begin locale ja--> ������������Ƃ� do �n���h���������Ă���K�v������܂��B
<!--begin locale en--> must have a do handler which require only argument.
<!--end locale-->@result list
   � ���� ! 
 @ a b s t r u c t   
 < ! - - b e g i n   l o c a l e   j a - - > 
0�0�0�0n0Y0y0f0n��} 0�_ep0k0W0f0�0�0�0�0�0�0�0�0�0�0�0n   d o  0�0�0�0�0�[��L0W0~0Y0 d o  0�0�0�0�0n��0�P$0n0�0�0�0L}Pg�0k0j0�0~0Y0 
 < ! - - b e g i n   l o c a l e   e n - - > 
 C a l l   d o   h a n d l e r   o f   g i v e n   s c r i p t   o b j e c t   w i t h   e a c h   i t e m s   i n   t h e   l i s t   a s   a n d   a r g u m e n t .   A n   A p p l e S c r i p t ' s   l i s t   o f   t h e   r e s u l t s   o f   d o   h a n d l e r   i s   r e t u r n e d . 
 < ! - - e n d   l o c a l e - - > 
 @ d e s c r i p t i o n   
 < ! - - b e g i n   l o c a l e   j a - - > 
 a _ s c r i p t  0o_ep0�N 0d0`0Q0h0�   d o  0�0�0�0�0�[���0W0f0D0j0Q0�0p0j0�0~0[0�0 
 
 d o  0n_ep0k0o0�0�0�0n��} 0x0nS�qg0Ln!0U0�0~0Y0 c o n t e n t s  0kP$0�N�Qe0Y0�0S0h0k0�0�00�0�0�0n��} 0�f�0Mc�0H0�0S0h0L0g0M0~0Y0 
 < ! - - b e g i n   l o c a l e   e n - - > 
 a _ s c r i p t   m u s t   h a v e   a0  d o   h a n d l e r   w h i c h   r e q u i r e   o n l y   a r g u m e n t . 
 
 A   r e f e r e n c e   t o   a n   i t e m   o f   t h e   l i s t   i s   p a s s e d   t o   t h e   d o   h a n d l e r .   Y o u   c a n   c h a n g e   e l e m e n t s   o f   t h e   l i s t   b y   a s s i n i n g   a   v a l u e   t o   c o n t e n t s   o f   t h e   r e f e r e n c e . 
 < ! - - e n d   l o c a l e - - > 
 @ p a r a m   a _ s c r i p t ( s c r i p t   o b j e c t )   : 
 < ! - - b e g i n   l o c a l e   j a - - >  _ep0�N 0d0`0Q0h0�   d o  0�0�0�0�0�c0c0f0D0�_ŉ�0L0B0�0~0Y0 
 < ! - - b e g i n   l o c a l e   e n - - >   m u s t   h a v e   a   d o   h a n d l e r   w h i c h   r e q u i r e   o n l y   a r g u m e n t . 
 < ! - - e n d   l o c a l e - - >  @ r e s u l t   l i s t 
� ��� i   � ���� I      ������� 0 map_as_list  � ���� o      ���� 0 a_script  ��  ��  � k     )�� ��� r     ��� J     ����  � o      ���� 
0 a_list  � ��� X    &����� r    !��� l   ������ n   ��� I    ������� 0 do  � ���� o    ���� 0 an_item  ��  ��  � o    ���� 0 a_script  ��  ��  � n      ���  ;     � o    ���� 
0 a_list  �� 0 an_item  � l   ������ N    �� n   ��� o   	 ���� 0 	_contents  �  f    	��  ��  � ���� L   ' )�� o   ' (���� 
0 a_list  ��  � ��� l     ��������  ��  ��  � ��� i   � ���� I      �������� 0 	interator  ��  ��  � L     	�� n    ��� I    ������� 0 	make_with  � ���� n   ��� o    ���� 0 	_contents  �  f    ��  ��  �  f     � ��� l     ��������  ��  ��  �    i   � � I      �������� 0 shallow_copy  ��  ��   k       r     
 n    	
	 I    ������ 0 	make_with   �� n    o    ���� 0 	_contents    f    ��  ��  
  f      o      ���� 
0 x_list    r     n    o    ���� 0 _n    f     n      o    ���� 0 _n   o    ���� 
0 x_list   �� L     o    ���� 
0 x_list  ��    l     ��������  ��  ��    i   � � I      �������� 0 	deep_copy  ��  ��   k       !  r     "#" n    
$%$ I    
��&���� 0 	make_with  & '��' I    �������� 0 	all_items  ��  ��  ��  ��  %  f     # o      ���� 
0 x_list  ! ()( r    *+* n   ,-, o    ���� 0 _n  -  f    + n     ./. o    ���� 0 _n  / o    ���� 
0 x_list  ) 0��0 L    11 o    ���� 
0 x_list  ��   232 l     ��������  ��  ��  3 454 i   � �676 I     ������
�� .ascrcmnt****      � ****��  ��  7 O    898 I   ��:��
�� .ascrcmnt****      � ****: l   	;����; n   	<=< I    	�������� 0 dump  ��  ��  =  f    ��  ��  ��  9 1     ��
�� 
ascr5 >?> l     ��������  ��  ��  ? @A@ i   � �BCB I      �������� 0 dump  ��  ��  C k     %DD EFE h     ��G�� 0 xlistdumper XListDumperG k      HH IJI j     ��K�� 0 an_index  K m     ����  J L��L i    MNM I      ��O���� 0 do  O P��P o      ���� 0 an_item  ��  ��  N k     6QQ RSR r     TUT [     VWV o     ���� 0 an_index  W m    ���� U o      ���� 0 an_index  S XYX r    Z[Z l   \����\ c    ]^] o    ���� 0 an_index  ^ m    ��
�� 
utxt��  ��  [ o      ���� 
0 output  Y _`_ Z    /ab��ca =   ded n    fgf 1    ��
�� 
pclsg o    ���� 0 an_item  e m    ��
�� 
scptb r     'hih n    %jkj I   ! %�������� 0 dump  ��  ��  k o     !���� 0 an_item  i o      ���� 0 	dump_data  ��  c r   * /lml c   * -non o   * +���� 0 an_item  o m   + ,��
�� 
utxtm o      ���� 0 	dump_data  ` p��p L   0 6qq b   0 5rsr b   0 3tut o   0 1���� 
0 output  u 1   1 2��
�� 
tab s o   3 4���� 0 	dump_data  ��  ��  F vwv r    xyx I    ��z���� 0 map  z {��{ o   	 
���� 0 xlistdumper XListDumper��  ��  y o      �� 0 	dump_list  w |}| n   ~~ I    �~��}�~ 0 unshift  � ��|� b    ��� b    ��� m    �� ���  [� n   ��� 1    �{
�{ 
pnam�  f    � m    �� ���  ]�|  �}   o    �z�z 0 	dump_list  } ��y� L    %�� n   $��� I    $�x��w�x 0 as_unicode_with  � ��v� o     �u
�u 
ret �v  �w  � o    �t�t 0 	dump_list  �y  A ��� l     �s�r�q�s  �r  �q  � ��� l      �p���p  �  == private    � ���  = =   p r i v a t e  � ��� i   � ���� I      �o�n�m�o 	0 debug  �n  �m  � k     T�� ��� O     ��� k    �� ��� I    �l��k�l 
0 export  � ��j�  f   	 
�j  �k  � ��� I   �i�h�
�i .MoloBootscpt        scpt�h  � �g��f
�g 
forM�  f    �f  � ��e� r    ��� I   �d��c
�d .MololoMoscpt        TEXT� m    �� ���  T e s t�c  � o      �b�b 0 test Test�e  � l    ��a�`� I    �_�^�]
�_ .MoloMKloscpt    ��� null�^  �]  �a  �`  � ��� r     +��� I     )�\��[�\ 0 	make_with  � ��Z� J   ! %�� ��� m   ! "�� ���  a� ��Y� m   " #�� ���  b�Y  �Z  �[  � o      �X�X 
0 a_list  � ��� n  , 2��� I   - 2�W��V�W 0 	delete_at  � ��U� m   - .�T�T �U  �V  � o   , -�S�S 
0 a_list  � ��� n  3 B��� I   4 B�R��Q�R 0 assert_true  � ��� =  4 =��� n  4 9��� I   5 9�P�O�N�P 0 list_ref  �O  �N  � o   4 5�M�M 
0 a_list  � J   9 <�� ��L� m   9 :�� ���  b�L  � ��K� m   = >�� ��� $ F a i l d   t o   d e l e t e _ a t�K  �Q  � o   3 4�J�J 0 test Test� ��� I  C H�I��H
�I .corecnte****       ****� o   C D�G�G 
0 a_list  �H  � ��F� n  I T��� I   J T�E��D�E 0 assert_true  � ��� =  J M��� 1   J K�C
�C 
rslt� m   K L�B�B � ��A� m   M P�� ���  F a i l d   t o   c o u n t�A  �D  � o   I J�@�@ 0 test Test�F  � ��� l     �?�>�=�?  �>  �=  � ��� i   � ���� I     �<�;�:
�< .aevtoappnull  �   � ****�;  �:  � k     �� ��� l     �9���9  �  return debug()   � ���  r e t u r n   d e b u g ( )� ��8� Q     ���� I   �7��
�7 .HBsushHBTEXT    ��� file� l   ��6�5� I   �4��3
�4 .earsffdralis        afdr�  f    �3  �6  �5  � �2��1
�2 
rcIP� m   	 
�0
�0 boovtrue�1  � R      �/��
�/ .ascrerr ****      � ****� o      �.�. 0 msg  � �-��,
�- 
errn� o      �+�+ 	0 errno  �,  � I   �*��)
�* .sysodisAaleR        TEXT� l   ��(�'� b       b     o    �&�& 0 msg   o    �%
�% 
ret  o    �$�$ 	0 errno  �(  �'  �)  �8  �  l     �#�"�!�#  �"  �!   �  l     ����  �  �  �        0�  	
 !"#$%&'()*+,-./0123�   .������������������
�	��������� ������������������������������������
� 
pnam
� 
vers� 0 xtext XText
� .corecrel****      � null� 0 	make_with  � 0 make_with_list  � 0 make_with_text  � 0 next  � 0 	next_item  � 0 has_next  � 0 current_item  � 0 current_index  � 0 decrement_index  � 0 increment_index  � 	0 reset  � 0 push  � 0 pop  �
 0 unshift  �	 	0 shift  � 0 count_items  � 0 item_counts  
� .corecnte****       ****� 0 	delete_at  � 0 item_at  � 0 items_in_range  � 0 set_item  � 0 exchange_items  �  0 has_item  �� 0 index_of  �� 0 	all_items  �� 0 list_ref  �� 0 add_from_list  �� 0 as_xtext_with  �� 0 as_unicode_with  �� 0 as_text_with  �� 0 as_string_with  �� 0 each  �� 0 map  �� 0 map_as_list  �� 0 	interator  �� 0 shallow_copy  �� 0 	deep_copy  
�� .ascrcmnt****      � ****�� 0 dump  �� 	0 debug  
�� .aevtoappnull  �   � **** ������
�� 
pcls
�� 
MoSp��  	 �� 3����45��
�� .corecrel****      � null��  ��  4  5 ���� 0 	make_with  �� 	*jvk+  
 �� A����67���� 0 	make_with  �� ��8�� 8  ���� 
0 a_list  ��  6 �������� 
0 a_list  �� 0 a_parent  �� 0 xlist XList7 �� K9�� 0 xlist XList9 ��:����;<��
�� .ascrinit****      � ****: k     ==  M>>  P??  S@@  W����  ��  ��  ; ��������
�� 
pare�� 0 	_contents  �� 0 _length  �� 0 _n  < ����������
�� 
pare�� 0 	_contents  
�� .corecnte****       ****�� 0 _length  �� 0 _n  �� b  N  Ob   �Ob   j �Ok��� )E�O��K S�O� �� g����AB���� 0 make_with_list  �� ��C�� C  ���� 
0 a_list  ��  A ���� 
0 a_list  B ���� 0 	make_with  �� *�k+   �� w����DE���� 0 make_with_text  �� ��F�� F  ������ 
0 a_text  �� 0 a_delimiter  ��  D ���������� 
0 a_text  �� 0 a_delimiter  �� 0 	pre_delim  �� 
0 a_list  E ��������
�� 
ascr
�� 
txdl
�� 
citm�� 0 	make_with  ��  ��,E�O���,FO��-E�O���,FO*�k+  �� �����GH���� 0 next  ��  ��  G ������ 0 an_item  �� 0 msg  H 
��������I������ ����� 0 	_contents  
�� 
cobj�� 0 _n  �� 0 msg  I ������
�� 
errn���@��  �� 0 _length  
�� 
errn��G���@�� = )�,�)�,E/E�W  X  )�,)�, )��l�Y )��l�O)�,k)�,FO� �� �����JK���� 0 	next_item  ��  ��  J  K ���� 0 next  �� *j+   �� �����LM���� 0 has_next  ��  ��  L  M ������ 0 _n  �� 0 _length  �� 	)�,)�, ������NO���� 0 current_item  ��  ��  N  O �������� 0 	_contents  
�� 
cobj�� 0 _n  �� )�,�)�,k/E ������PQ���� 0 current_index  ��  ��  P  Q ���� 0 _n  �� )�,k ��*����RS���� 0 decrement_index  ��  ��  R  S ���� 0 _n  �� )�,k )�,k)�,FY h ��D����TU���� 0 increment_index  ��  ��  T  U ���� 0 _n  �� )�,k )�,k)�,FY h ��^����VW���� 	0 reset  ��  ��  V  W ���� 0 _n  �� k)�,F �t�~�}XY�|� 0 push  �~ �{Z�{ Z  �z�z 0 an_item  �}  X �y�y 0 an_item  Y �x�w�x 0 	_contents  �w 0 _length  �| �)�,6FO)�,k)�,F �v��u�t[\�s�v 0 pop  �u  �t  [ �r�r 0 a_result  \ �q�p�o�n�m�l�k�q 0 	_contents  
�p 
cobj�o  �n  
�m 
msng�l���k 0 _length  �s F )�,�i/E�W 	X  �O )�,[�\[Zk\Z�2)�,FW X  jv)�,FO)�,k)�,FO� �j��i�h]^�g�j 0 unshift  �i �f_�f _  �e�e 0 an_item  �h  ] �d�d 0 an_item  ^ �c�b�a�c 0 	_contents  �b 0 increment_index  �a 0 _length  �g �)�,5FO*j+ O)�,k)�,FO) �`��_�^`a�]�` 	0 shift  �_  �^  ` �\�\ 0 a_result  a �[�Z�Y�X�W�V�U�T�[ 0 	_contents  
�Z 
cobj�Y  �X  
�W 
msng
�V 
rest�U 0 decrement_index  �T 0 _length  �] 3 )�,�k/E�W 	X  �O)�,�,)�,FO*j+ O)�,k)�,FO� �S1�R�Qbc�P�S 0 count_items  �R  �Q  b  c �O�N�O 0 	_contents  
�N .corecnte****       ****�P 	)�,j  �M;�L�Kde�J�M 0 item_counts  �L  �K  d  e �I�H�I 0 	_contents  
�H .corecnte****       ****�J 	)�,j  �GE�F�Efg�D
�G .corecnte****       ****�F  �E  f  g �C�B�C 0 	_contents  
�B .corecnte****       ****�D 	)�,j  �AT�@�?hi�>�A 0 	delete_at  �@ �=j�= j  �<�< 0 indexes  �?  h �;�:�9�8�; 0 indexes  �: 
0 a_list  �9 0 n  �8 0 an_index  i �7�6�5�4�3�2�1�0
�7 
list
�6 
leng
�5 
cobj�4 0 	_contents  
�3 
rest�2 0 _length  �1���0 0 _n  �> ���&E�OjvE�O �k��,Ekh ��/E�O)�,�/�6FO�k  )�,�,)�,FY D)�,ilv� )�,[�\[Zk\Z�2)�,FY %)�,[�\[Zk\Z�k2)�,[�\[Z�k\Zi2%)�,FO)�,� )�,k)�,FY hO)�,k)�,F[OY�uO� �/��.�-kl�,�/ 0 item_at  �. �+m�+ m  �*�* 0 an_index  �-  k �)�(�'�&�) 0 an_index  �( 
0 a_list  �' 0 
index_list  �& 0 	inde_list  l �%�$�#�"�!� �
�% 
pcls
�$ 
list�# 0 	_contents  
�" 
cobj�! 0 	make_with  �  0 has_next  � 0 next  �, C��,� )�,�/EY hOjvE�O*�k+ E�O h�j+ )�,�j+ /�6F[OY��O� �/��no�� 0 items_in_range  � �p� p  ��� 0 s_index  � 0 e_index  �  n ��� 0 s_index  � 0 e_index  o ���� 0 	_contents  
� 
cobj� 0 	make_with  � *)�,[�\[Z�\Z�2k+  �G��qr�� 0 set_item  �  � ��s
� 
for � 0 a_value  s ���

� 
at  � 0 an_index  �
  q �	��	 0 a_value  � 0 an_index  r ��� 0 	_contents  
� 
cobj� 	�)�,�/F  �]��tu�� 0 exchange_items  � �v� v  � ���  
0 index1  �� 
0 index2  �  t �������� 
0 index1  �� 
0 index2  �� 
0 a_buff  u ������ 0 	_contents  
�� 
cobj�  )�,�/E�O)�,�/)�,�/FO�)�,�/F! �������wx���� 0 has_item  �� ��y�� y  ���� 0 an_item  ��  w ���� 0 an_item  x ���� 0 	_contents  �� )�,�" �������z{���� 0 index_of  �� ��|�� |  ���� 0 an_item  ��  z �������� 0 an_item  �� 0 an_index  �� 0 n  { ���������� 0 has_item  �� 0 _length  �� 0 	_contents  
�� 
cobj�� ?*�k+   jY hOjE�O %k)�,Ekh )�,�/�  
�E�OY h[OY��O�# �������}~���� 0 	all_items  ��  ��  } ���� 
0 a_list  ~ ���� 0 	_contents  �� 
)�,EQ�O�$ ������������ 0 list_ref  ��  ��    � ���� 0 	_contents  �� )�,E% ������������� 0 add_from_list  �� ����� �  ���� 
0 a_list  ��  � ���� 
0 a_list  � �������� 0 	_contents  �� 0 _length  
�� .corecnte****       ****�� )�,�%)�,FO)�,�j )�,FO)& ��$���������� 0 as_xtext_with  �� ����� �  ���� 0 a_delimiter  ��  � ������ 0 a_delimiter  �� 
0 a_text  � ������ 0 as_unicode_with  �� 0 	make_with  �� *�k+  E�Ob  �k+ ' ��>���������� 0 as_unicode_with  �� ����� �  ���� 0 a_delimiter  ��  � ������ 0 a_delimiter  �� 
0 a_text  � ���������� 0 store_delimiters  �� 0 	_contents  �� 0 	join_list  �� 0 restore_delimiters  �� $b   *j+  O*)�,�l+ E�O*j+ UO�( ��`���������� 0 as_text_with  �� ����� �  ���� 0 a_delimiter  ��  � ���� 0 a_delimiter  � ���� 0 as_unicode_with  �� *�k+  ) ��p���������� 0 as_string_with  �� ����� �  ���� 0 a_delimiter  ��  � ������ 0 a_delimiter  �� 
0 a_text  � ���������� 0 store_delimiters  �� 0 	_contents  �� 0 join_as_string  �� 0 restore_delimiters  �� $b   *j+  O*)�,�l+ E�O*j+ UO�* ������������� 0 each  �� ����� �  ���� 0 a_script  ��  � ������ 0 a_script  �� 0 an_item  � ������������ 0 	_contents  
�� 
kocl
�� 
cobj
�� .corecnte****       ****�� 0 do  �� ) ')�,[��l kh ��k+ f  Y h[OY��+ ������������� 0 map  �� ����� �  ���� 0 a_script  ��  � ������ 0 a_script  �� 
0 a_list  � ������ 0 map_as_list  �� 0 make_with_list  �� *�k+  E�O*�k+ , ������������� 0 map_as_list  �� ����� �  ���� 0 a_script  ��  � �������� 0 a_script  �� 
0 a_list  �� 0 an_item  � ������������ 0 	_contents  
�� 
kocl
�� 
cobj
�� .corecnte****       ****�� 0 do  �� *jvE�O  )�,[��l kh ��k+ �6F[OY��O�- �����~���}�� 0 	interator  �  �~  �  � �|�{�| 0 	_contents  �{ 0 	make_with  �} 
))�,k+ . �z�y�x���w�z 0 shallow_copy  �y  �x  � �v�v 
0 x_list  � �u�t�s�u 0 	_contents  �t 0 	make_with  �s 0 _n  �w ))�,k+ E�O)�,��,FO�/ �r�q�p���o�r 0 	deep_copy  �q  �p  � �n�n 
0 x_list  � �m�l�k�m 0 	all_items  �l 0 	make_with  �k 0 _n  �o )*j+  k+ E�O)�,��,FO�0 �j7�i�h���g
�j .ascrcmnt****      � ****�i  �h  �  � �f�e�d
�f 
ascr�e 0 dump  
�d .ascrcmnt****      � ****�g � )j+ j U1 �cC�b�a���`�c 0 dump  �b  �a  � �_�^�_ 0 xlistdumper XListDumper�^ 0 	dump_list  � 
�]G��\��[��Z�Y�X�] 0 xlistdumper XListDumper� �W��V�U���T
�W .ascrinit****      � ****� k     �� I�� L�S�S  �V  �U  � �R�Q�R 0 an_index  �Q 0 do  � �P��P 0 an_index  � �ON�N�M���L�O 0 do  �N �K��K �  �J�J 0 an_item  �M  � �I�H�G�I 0 an_item  �H 
0 output  �G 0 	dump_data  � �F�E�D�C�B
�F 
utxt
�E 
pcls
�D 
scpt�C 0 dump  
�B 
tab �L 7b   kEc   Ob   �&E�O��,�  �j+ E�Y ��&E�O��%�%�T j�OL �\ 0 map  
�[ 
pnam�Z 0 unshift  
�Y 
ret �X 0 as_unicode_with  �` &��K S�O*�k+ E�O��)�,%�%k+ O��k+ 	2 �A��@�?���>�A 	0 debug  �@  �?  � �=�<�= 0 test Test�< 
0 a_list  � �;�:�9�8��7���6�5�4���3�2�1�
�; .MoloMKloscpt    ��� null�: 
0 export  
�9 
forM
�8 .MoloBootscpt        scpt
�7 .MololoMoscpt        TEXT�6 0 	make_with  �5 0 	delete_at  �4 0 list_ref  �3 0 assert_true  
�2 .corecnte****       ****
�1 
rslt�> U*j   *)k+ O*�)l O�j E�UO*��lvk+ E�O�kk+ 	O��j+ 
�kv �l+ O�j O��k a l+ 3 �0��/�.���-
�0 .aevtoappnull  �   � ****�/  �.  � �,�+�, 0 msg  �+ 	0 errno  � �*�)�(�'��&�%
�* .earsffdralis        afdr
�) 
rcIP
�( .HBsushHBTEXT    ��� file�' 0 msg  � �$�#�"
�$ 
errn�# 	0 errno  �"  
�& 
ret 
�% .sysodisAaleR        TEXT�-   )j  �el W X  ��%�%j ascr  ��ޭ