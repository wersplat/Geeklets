FasdUAS 1.101.10   ��   ��    k             l      ��  ��   ��
	Google Weather Handler Library
	
	Copyright � 2012 hXm's Project
	
	Feedback to hxm@librepensamiento.es
	
	This is a script for GeekTool.
	GeekTool lets you display various kinds of information
	on your desktop using floating windows.
	http://itunes.apple.com/es/app/geektool/id456877552?mt=12
	
	TODO:
		Use custom weather icons, not only google's ones.
		Geolocation feature.
		Status bar icon.
		May change the wind's direction letter for a cool UTF-8 arrow.
		
	FIX:
		
     � 	 	� 
 	 G o o g l e   W e a t h e r   H a n d l e r   L i b r a r y 
 	 
 	 C o p y r i g h t   �   2 0 1 2   h X m ' s   P r o j e c t 
 	 
 	 F e e d b a c k   t o   h x m @ l i b r e p e n s a m i e n t o . e s 
 	 
 	 T h i s   i s   a   s c r i p t   f o r   G e e k T o o l . 
 	 G e e k T o o l   l e t s   y o u   d i s p l a y   v a r i o u s   k i n d s   o f   i n f o r m a t i o n 
 	 o n   y o u r   d e s k t o p   u s i n g   f l o a t i n g   w i n d o w s . 
 	 h t t p : / / i t u n e s . a p p l e . c o m / e s / a p p / g e e k t o o l / i d 4 5 6 8 7 7 5 5 2 ? m t = 1 2 
 	 
 	 T O D O : 
 	 	 U s e   c u s t o m   w e a t h e r   i c o n s ,   n o t   o n l y   g o o g l e ' s   o n e s . 
 	 	 G e o l o c a t i o n   f e a t u r e . 
 	 	 S t a t u s   b a r   i c o n . 
 	 	 M a y   c h a n g e   t h e   w i n d ' s   d i r e c t i o n   l e t t e r   f o r   a   c o o l   U T F - 8   a r r o w . 
 	 	 
 	 F I X : 
 	 	 
   
  
 l     ��������  ��  ��        i         I     ������
�� .aevtoappnull  �   � ****��  ��    k     �       O         r        n        1    ��
�� 
bhit  l    ����  I   ��  
�� .sysodlogaskr        TEXT  m       �   � 	 	 h X m ' s   G o o g l e   W e a t h e r   v 2 . 0 
 	 	 	 C o p y r i g h t   �   2 0 1 2   
 P l e a s e   f e e d b a c k   t o   h x m @ l i b r e p e n s a m i e n t o . e s  ��  
�� 
disp  m    ����   ��   !
�� 
btns   J     " "  # $ # m    	 % % � & & " I n s t a l l / R e i n s t a l l $  ' ( ' m   	 
 ) ) � * *  U n i n s t a l l (  +�� + m   
  , , � - - 
 C l o s e��   ! �� .��
�� 
dflt . m    ���� ��  ��  ��    o      ���� 
0 choice    m      / /Z                                                                                      @ alis    �  OS X                       Ͷ� H+   x�GeekTool Helper.app                                             x��M%�        ����  	                	Resources     Ͷ�@      �Ml@     x� x� x� x� x� x�   k  oOS X:Applications: GeekTool.app: Contents: PlugIns: GeekTool.prefPane: Contents: Resources: GeekTool Helper.app   (  G e e k T o o l   H e l p e r . a p p  
  O S   X  cApplications/GeekTool.app/Contents/PlugIns/GeekTool.prefPane/Contents/Resources/GeekTool Helper.app   / ��     0 1 0 l   ��������  ��  ��   1  2�� 2 Z    � 3 4 5�� 3 =    6 7 6 o    ���� 
0 choice   7 m     8 8 � 9 9 " I n s t a l l / R e i n s t a l l 4 k    � : :  ; < ; r    " = > = m      ? ? � @ @   > o      ���� 0 location   <  A B A V   # \ C D C k   + W E E  F G F I  + 0������
�� .miscactvnull��� ��� null��  ��   G  H�� H r   1 W I J I c   1 U K L K n   1 Q M N M 1   M Q��
�� 
ttxt N l  1 M O���� O I  1 M�� P Q
�� .sysodlogaskr        TEXT P m   1 4 R R � S S j E n t e r   y o u r   c i t y   n a m e 
 E x a m p l e :   p a l m a   d e   m a l l o r c a , s p a i n Q �� T U
�� 
disp T m   5 6����  U �� V W
�� 
dtxt V m   9 < X X � Y Y   W �� Z [
�� 
btns Z J   = E \ \  ] ^ ] m   = @ _ _ � ` `  C o n t i n u e ^  a�� a m   @ C b b � c c  C a n c e l��   [ �� d��
�� 
dflt d m   F G���� ��  ��  ��   L m   Q T��
�� 
TEXT J o      ���� 0 location  ��   D =  ' * e f e o   ' (���� 0 location   f m   ( ) g g � h h   B  i j i r   ] z k l k n   ] v m n m 1   t v��
�� 
bhit n l  ] t o���� o I  ] t�� p q
�� .sysodlogaskr        TEXT p m   ] ` r r � s s T C h o o s e   C ,   F   o r   a u t o m a t i c   d e g r e e   c e n t i g r a d e q �� t u
�� 
disp t m   a b����  u �� v w
�� 
btns v J   c n x x  y z y m   c f { { � | |  A u t o m a t i c z  } ~ } m   f i   � � �  C e l s i u s ~  ��� � m   i l � � � � �  F a h r e n h e i t��   w �� ���
�� 
dflt � m   o p���� ��  ��  ��   l o      ���� 
0 degree   j  � � � l  { {��������  ��  ��   �  � � � O   { � � � � k   � � � �  � � � r   � � � � � b   � � � � � n   � � � � � 1   � ���
�� 
psxp � l  � � ����� � I  � ��� � �
�� .earsffdralis        afdr �  f   � � � �� ���
�� 
rtyp � m   � ���
�� 
ctxt��  ��  ��   � m   � � � � � � � \ C o n t e n t s / R e s o u r c e s / S c r i p t s / h X m W e a t h e r / i c o n S e t / � o      ���� $0 iconsetdirectory iconSetDirectory �  � � � r   � � � � � e   � � � � n   � � � � � 1   � ���
�� 
pnam � n   � � � � � 2  � ���
�� 
cfol � 4   � ��� �
�� 
cfol � l  � � ����� � c   � � � � � o   � ����� $0 iconsetdirectory iconSetDirectory � m   � ���
�� 
psxf��  ��   � o      ���� 0 iconsetpath iconSetPath �  ��� � r   � � � � � I  � ��� ���
�� .gtqpchltns    @   @ ns   � o   � ����� 0 iconsetpath iconSetPath��   � o      ���� 0 iconset iconSet��   � m   { ~ � ��                                                                                  MACS  alis    \  OS X                       Ͷ� H+     N
Finder.app                                                      �v�!�        ����  	                CoreServices    Ͷ�@      �"(       N   H   G  .OS X:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p  
  O S   X  &System/Library/CoreServices/Finder.app  / ��   �  ��� � n  � � � � � I   � ��� ����� 0 install Install �  � � � o   � ����� 0 location   �  � � � o   � ����� 
0 degree   �  ��� � o   � ����� 0 iconset iconSet��  ��   �  f   � ���   5  � � � =  � � � � � o   � ����� 
0 choice   � m   � � � � � � �  U n i n s t a l l �  ��� � n  � � � � � I   � ��������� 0 	uninstall 	Uninstall��  ��   �  f   � ���  ��  ��     � � � l     ��������  ��  ��   �  � � � i     � � � I      �� ����� 0 install Install �  � � � o      ���� 0 	wlocation   �  � � � o      ���� 
0 degree   �  ��� � o      ���� 0 iconset iconSet��  ��   � k     � �  � � � n     � � � o    ���� 0 	uninstall 	Uninstall �  f      �  ��� � O    � � � O   	 � � � k    � �  � � � r     � � � c     � � � b     � � � l    ����� � I   �� � �
�� .earsffdralis        afdr �  f     � �� ���
�� 
rtyp � m    ��
�� 
ctxt��  ��  ��   � m     � � � � � H C o n t e n t s : R e s o u r c e s : S c r i p t s : G e e k L e t s : � m    ��
�� 
alis � o      ���� 0 geekletpath geekletPath �  ��� � Q    � � � � k    � � �  � � � l   ��������  ��  ��   �  � � � r    + � � � b    ) � � � l   ' ����� � I   '�� � �
�� .earsffdralis        afdr � m    ��
�� afdrdlib � �� � �
�� 
from � m     !��
�� fldmfldu � �� ���
�� 
rtyp � m   " #��
�� 
TEXT��  ��  ��   � m   ' ( � � � � �  S c r i p t s � o      ���� 0 librarypath libraryPath �  � � � Z   , ^ � ���� � l  , 5 ��~�} � H   , 5 � � l  , 4 ��|�{ � I  , 4�z ��y
�z .coredoexbool        obj  � 4   , 0�x 
�x 
cfol  o   . /�w�w 0 librarypath libraryPath�y  �|  �{  �~  �}   � I  8 Z�v�u
�v .corecrel****      � null�u   �t
�t 
kocl m   < =�s
�s 
cfol �r
�r 
insh l  @ I�q�p I  @ I�o
�o .earsffdralis        afdr m   @ A�n
�n afdrdlib �m	

�m 
from	 m   B C�l
�l fldmfldu
 �k�j
�k 
rtyp m   D E�i
�i 
TEXT�j  �q  �p   �h�g
�h 
prdt K   L T �f�e
�f 
pnam m   O R �  S c r i p t s�e  �g  ��  �   �  l  _ _�d�c�b�d  �c  �b    r   _ p b   _ n n   _ j 1   f j�a
�a 
psxp l  _ f�`�_ I  _ f�^
�^ .earsffdralis        afdr  f   _ ` �]�\
�] 
rtyp m   a b�[
�[ 
ctxt�\  �`  �_   m   j m �   L C o n t e n t s / R e s o u r c e s / S c r i p t s / h X m W e a t h e r / o      �Z�Z 0 sfile sFile !"! l  q q�Y�X�W�Y  �X  �W  " #$# l  q q�V%&�V  % #  I don't love this that much.   & �'' :   I   d o n ' t   l o v e   t h i s   t h a t   m u c h .$ ()( l  q q�U*+�U  * O I AS copy file gives access denied to use these paths, so shell can do it.   + �,, �   A S   c o p y   f i l e   g i v e s   a c c e s s   d e n i e d   t o   u s e   t h e s e   p a t h s ,   s o   s h e l l   c a n   d o   i t .) -.- I  q ~�T/�S
�T .sysoexecTEXT���     TEXT/ b   q z010 b   q v232 m   q t44 �55  c p   - R  3 o   t u�R�R 0 sfile sFile1 m   v y66 �77 <   ~ / L i b r a r y / S c r i p t s / h X m W e a t h e r /�S  . 898 I   ��Q:�P
�Q .sysoexecTEXT���     TEXT: b    �;<; b    �=>= m    �?? �@@  e c h o    > o   � ��O�O 0 	wlocation  < m   � �AA �BB \   >   ~ / L i b r a r y / S c r i p t s / h X m W e a t h e r / h X m W e a t h e r . t x t�P  9 CDC I  � ��NE�M
�N .sysoexecTEXT���     TEXTE b   � �FGF b   � �HIH m   � �JJ �KK 
 e c h o  I o   � ��L�L 
0 degree  G m   � �LL �MM T   >   ~ / L i b r a r y / S c r i p t s / h X m W e a t h e r / d e g r e e . t x t�M  D NON I  � ��KP�J
�K .sysoexecTEXT���     TEXTP b   � �QRQ b   � �STS m   � �UU �VV 
 e c h o  T o   � ��I�I 0 iconset iconSetR m   � �WW �XX V   >   ~ / L i b r a r y / S c r i p t s / h X m W e a t h e r / i c o n S e t . t x t�J  O YZY r   � �[\[ l  � �]�H�G] 6  � �^_^ n  � �`a` 2   � ��F
�F 
filea l  � �b�E�Db c   � �cdc o   � ��C�C 0 geekletpath geekletPathd m   � ��B
�B 
alis�E  �D  _ D   � �efe 1   � ��A
�A 
pnamf m   � �gg �hh 
 . g l e t�H  �G  \ o      �@�@ 	0 glets  Z iji X   � �k�?lk I  � ��>m�=
�> .aevtodocnull  �    alism l  � �n�<�;n c   � �opo o   � ��:�: 0 glet  p m   � ��9
�9 
alis�<  �;  �=  �? 0 glet  l o   � ��8�8 	0 glets  j q�7q l  � ��6�5�4�6  �5  �4  �7   � R      �3r�2
�3 .ascrerr ****      � ****r o      �1�1 0 errmsg errMsg�2   � I  ��0st
�0 .sysodlogaskr        TEXTs b   � �uvu b   � �wxw m   � �yy �zz v A n   e r r o r   o c u r r e d   d u r i n g   t h e   i n s t a l l a t i o n .   P l e a s e   t r y   a g a i n .x m   � �{{ �|| 
 
 	 	 	 	v o   � ��/�/ 0 errmsg errMsgt �.}~
�. 
disp} m   � ��-�-  ~ �,�+
�, 
btns m   � ��� ��� 
 C l o s e�+  ��   � m   	 
���                                                                                  MACS  alis    \  OS X                       Ͷ� H+     N
Finder.app                                                      �v�!�        ����  	                CoreServices    Ͷ�@      �"(       N   H   G  .OS X:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p  
  O S   X  &System/Library/CoreServices/Finder.app  / ��   � m    ��Z                                                                                      @ alis    �  OS X                       Ͷ� H+   x�GeekTool Helper.app                                             x��M%�        ����  	                	Resources     Ͷ�@      �Ml@     x� x� x� x� x� x�   k  oOS X:Applications: GeekTool.app: Contents: PlugIns: GeekTool.prefPane: Contents: Resources: GeekTool Helper.app   (  G e e k T o o l   H e l p e r . a p p  
  O S   X  cApplications/GeekTool.app/Contents/PlugIns/GeekTool.prefPane/Contents/Resources/GeekTool Helper.app   / ��  ��   � ��� l     �*�)�(�*  �)  �(  � ��� i    ��� I      �'�&�%�' 0 	uninstall 	Uninstall�&  �%  � O     @��� Q    ?���$� k    6�� ��� r    ��� 6   ��� 2    
�#
�# 
gLet� E    ��� 1    �"
�" 
pnam� m    �� ���  g o o g l e w e a t h e r _� o      �!�! 	0 glets  � ��� X    0�� �� I  & +���
� .coredelonull���     gLet� o   & '�� 0 glet  �  �  0 glet  � o    �� 	0 glets  � ��� I  1 6���
� .sysoexecTEXT���     TEXT� m   1 2�� ��� F r m   - r f   ~ / L i b r a r y / S c r i p t s / h X m W e a t h e r�  �  � R      ���
� .ascrerr ****      � ****�  �  �$  � m     ��Z                                                                                      @ alis    �  OS X                       Ͷ� H+   x�GeekTool Helper.app                                             x��M%�        ����  	                	Resources     Ͷ�@      �Ml@     x� x� x� x� x� x�   k  oOS X:Applications: GeekTool.app: Contents: PlugIns: GeekTool.prefPane: Contents: Resources: GeekTool Helper.app   (  G e e k T o o l   H e l p e r . a p p  
  O S   X  cApplications/GeekTool.app/Contents/PlugIns/GeekTool.prefPane/Contents/Resources/GeekTool Helper.app   / ��  � ��� l     ����  �  �  �       ���������������  � ����
�	�������
� .aevtoappnull  �   � ****� 0 install Install� 0 	uninstall 	Uninstall�
 
0 choice  �	 0 location  � 
0 degree  � $0 iconsetdirectory iconSetDirectory� 0 iconsetpath iconSetPath� 0 iconset iconSet�  �  �  � � � ������
� .aevtoappnull  �   � ****�   ��  �  � . / ���� % ) ,���������� 8 ?�� g�� R�� X _ b������ r {  ��� ��������� ����������������� ���
�� 
disp
�� 
btns
�� 
dflt�� 
�� .sysodlogaskr        TEXT
�� 
bhit�� 
0 choice  �� 0 location  
�� .miscactvnull��� ��� null
�� 
dtxt�� 
�� 
ttxt
�� 
TEXT�� 
0 degree  
�� 
rtyp
�� 
ctxt
�� .earsffdralis        afdr
�� 
psxp�� $0 iconsetdirectory iconSetDirectory
�� 
cfol
�� 
psxf
�� 
pnam�� 0 iconsetpath iconSetPath
�� .gtqpchltns    @   @ ns  �� 0 iconset iconSet�� 0 install Install�� 0 	uninstall 	Uninstall�� �� ��k����mv�m� 	�,E�UO��  ��E�O 8h�� *j Oa �ka a �a a lv�ka  	a ,a &E�[OY��Oa �k�a a a mv�k� 	�,E` Oa  ?)a a  l !a ",a #%E` $O*a %_ $a &&/a %-a ',EE` (O_ (j )E` *UO)�_ _ *m+ +Y �a ,  
)j+ -Y h� �� ����������� 0 install Install�� ����� �  �������� 0 	wlocation  �� 
0 degree  �� 0 iconset iconSet��  � 	�������������������� 0 	wlocation  �� 
0 degree  �� 0 iconset iconSet�� 0 geekletpath geekletPath�� 0 librarypath libraryPath�� 0 sfile sFile�� 	0 glets  �� 0 glet  �� 0 errmsg errMsg� 0���������� ������������� �������������������46��?AJLUW���g����������y{��������� 0 	uninstall 	Uninstall
�� 
rtyp
�� 
ctxt
�� .earsffdralis        afdr
�� 
alis
�� afdrdlib
�� 
from
�� fldmfldu
�� 
TEXT�� 
�� 
cfol
�� .coredoexbool        obj 
�� 
kocl
�� 
insh
�� 
prdt
�� 
pnam�� 
�� .corecrel****      � null
�� 
psxp
�� .sysoexecTEXT���     TEXT
�� 
file�  
�� 
cobj
�� .corecnte****       ****
�� .aevtodocnull  �    alis�� 0 errmsg errMsg��  
�� 
disp
�� 
btns
�� .sysodlogaskr        TEXT��)�,EO� �� �)��l �%�&E�O ������� �%E�O*�/j  '*a �a ������ a a a la  Y hO)��l a ,a %E�Oa �%a %j Oa �%a %j Oa �%a %j Oa  �%a !%j O��&a "-a #[a ,\Za $?1E�O �[a a %l &kh ��&j '[OY��OPW X ( )a *a +%�%a ,ja -a .� /UU� ������������� 0 	uninstall 	Uninstall��  ��  � ������ 	0 glets  �� 0 glet  � ����������������������
�� 
gLet
�� 
pnam
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� .coredelonull���     gLet
�� .sysoexecTEXT���     TEXT��  ��  �� A� = 4*�-�[�,\Z�@1E�O �[��l kh �j [OY��O�j 
W X  hU� ���  U n i n s t a l l� ���  N e w   H a v e n ,   C T� ���  F a h r e n h e i t� ��� � / U s e r s / c h r i s t i a n w e r w a i s s / D e s k t o p / h X m W e a t h e r . a p p / C o n t e n t s / R e s o u r c e s / S c r i p t s / h X m W e a t h e r / i c o n S e t /� ����� �  ��� ���  C l a s s i c� ��� 
 Y a h o o� ����� �  �� ��� 
 Y a h o o�  �  �  ascr  ��ޭ