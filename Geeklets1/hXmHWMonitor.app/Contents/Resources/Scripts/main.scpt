FasdUAS 1.101.10   ��   ��    k             l      ��  ��   =7
	hXm's Machine Monitor Library
	Copyright � 2012 hXm's Project
	Feedback to hxm@librepensamiento.es
	
	This is a script for GeekTool.
	GeekTool lets you display various kinds of information
	on your desktop using floating windows.
	http://itunes.apple.com/es/app/geektool/id456877552?mt=12
	
	This script gives full information and relevant data
	about your computer and its features.
	TODO:
		Custom bars images to display the percent
		Display icons
		Display temperature and let user choose C or F
		
	FIX:
		Find a better way to define name of network interface
     � 	 	n 
 	 h X m ' s   M a c h i n e   M o n i t o r   L i b r a r y 
 	 C o p y r i g h t   �   2 0 1 2   h X m ' s   P r o j e c t 
 	 F e e d b a c k   t o   h x m @ l i b r e p e n s a m i e n t o . e s 
 	 
 	 T h i s   i s   a   s c r i p t   f o r   G e e k T o o l . 
 	 G e e k T o o l   l e t s   y o u   d i s p l a y   v a r i o u s   k i n d s   o f   i n f o r m a t i o n 
 	 o n   y o u r   d e s k t o p   u s i n g   f l o a t i n g   w i n d o w s . 
 	 h t t p : / / i t u n e s . a p p l e . c o m / e s / a p p / g e e k t o o l / i d 4 5 6 8 7 7 5 5 2 ? m t = 1 2 
 	 
 	 T h i s   s c r i p t   g i v e s   f u l l   i n f o r m a t i o n   a n d   r e l e v a n t   d a t a 
 	 a b o u t   y o u r   c o m p u t e r   a n d   i t s   f e a t u r e s . 
 	 T O D O : 
 	 	 C u s t o m   b a r s   i m a g e s   t o   d i s p l a y   t h e   p e r c e n t 
 	 	 D i s p l a y   i c o n s 
 	 	 D i s p l a y   t e m p e r a t u r e   a n d   l e t   u s e r   c h o o s e   C   o r   F 
 	 	 
 	 F I X : 
 	 	 F i n d   a   b e t t e r   w a y   t o   d e f i n e   n a m e   o f   n e t w o r k   i n t e r f a c e 
   
  
 l     ��������  ��  ��        i         I     ������
�� .aevtoappnull  �   � ****��  ��    k     x       O         r        n        1    ��
�� 
bhit  l    ����  I   ��  
�� .sysodlogaskr        TEXT  m       �   � 	 	 h X m ' s   H a r d W a r e   M o n i t o r   v 1 . 0 
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
  O S   X  cApplications/GeekTool.app/Contents/PlugIns/GeekTool.prefPane/Contents/Resources/GeekTool Helper.app   / ��     0 1 0 l   ��������  ��  ��   1  2�� 2 Z    x 3 4 5�� 3 =    6 7 6 o    ���� 
0 choice   7 m     8 8 � 9 9 " I n s t a l l / R e i n s t a l l 4 k    d : :  ; < ; r    " = > = m      ? ? � @ @   > o      ���� 
0 degree   <  A B A l  # #��������  ��  ��   B  C D C V   # ] E F E k   , X G G  H I H I  , 1������
�� .miscactvnull��� ��� null��  ��   I  J�� J r   2 X K L K c   2 V M N M n   2 R O P O 1   N R��
�� 
ttxt P l  2 N Q���� Q I  2 N�� R S
�� .sysodlogaskr        TEXT R m   2 5 T T � U U V C h o o s e   C ,   F   o r   K   f o r   y o u r   d e g r e e   c e n t i g r a d e S �� V W
�� 
disp V m   6 7����  W �� X Y
�� 
dtxt X m   : = Z Z � [ [  C Y �� \ ]
�� 
btns \ J   > F ^ ^  _ ` _ m   > A a a � b b  C o n t i n u e `  c�� c m   A D d d � e e  C a n c e l��   ] �� f��
�� 
dflt f m   G H���� ��  ��  ��   N m   R U��
�� 
TEXT L o      ���� 
0 degree  ��   F H   ' + g g E  ' * h i h m   ' ( j j � k k  C F K i o   ( )���� 
0 degree   D  l�� l n  ^ d m n m I   _ d�� o���� 0 install Install o  p�� p o   _ `���� 
0 degree  ��  ��   n  f   ^ _��   5  q r q =  g l s t s o   g h���� 
0 choice   t m   h k u u � v v  U n i n s t a l l r  w�� w n  o t x y x I   p t�������� 0 	uninstall 	Uninstall��  ��   y  f   o p��  ��  ��     z { z l     ��������  ��  ��   {  | } | i     ~  ~ I      �� ����� 0 install Install �  ��� � o      ���� 
0 degree  ��  ��    k    0 � �  � � � n     � � � o    ���� 0 	uninstall 	Uninstall �  f      �  ��� � O   0 � � � k   	/ � �  � � � O   	 � � � � k    � � �  � � � r     � � � c     � � � b     � � � l    ����� � I   �� � �
�� .earsffdralis        afdr �  f     � �� ���
�� 
rtyp � m    ��
�� 
ctxt��  ��  ��   � m     � � � � � H C o n t e n t s : R e s o u r c e s : S c r i p t s : G e e k L e t s : � m    ��
�� 
alis � o      ���� 0 geekletpath geekletPath �  ��� � Q    � � � � � k    � � �  � � � l   ��������  ��  ��   �  � � � r    + � � � b    ) � � � l   ' ����� � I   '�� � �
�� .earsffdralis        afdr � m    ��
�� afdrdlib � �� � �
�� 
from � m     !��
�� fldmfldu � �� ���
�� 
rtyp � m   " #��
�� 
TEXT��  ��  ��   � m   ' ( � � � � �  S c r i p t s � o      ���� 0 librarypath libraryPath �  � � � Z   , ^ � ����� � l  , 5 ����� � H   , 5 � � l  , 4 ����� � I  , 4�� ���
�� .coredoexbool        obj  � 4   , 0�� �
�� 
cfol � o   . /���� 0 librarypath libraryPath��  ��  ��  ��  ��   � I  8 Z���� �
�� .corecrel****      � null��   � �� � �
�� 
kocl � m   < =��
�� 
cfol � �� � �
�� 
insh � l  @ I ����� � I  @ I�� � �
�� .earsffdralis        afdr � m   @ A��
�� afdrdlib � �� � �
�� 
from � m   B C��
�� fldmfldu � �� ���
�� 
rtyp � m   D E��
�� 
TEXT��  ��  ��   � �� ���
�� 
prdt � K   L T � � �� ���
�� 
pnam � m   O R � � � � �  S c r i p t s��  ��  ��  ��   �  � � � l  _ _��������  ��  ��   �  � � � r   _ p � � � b   _ n � � � n   _ j � � � 1   f j��
�� 
psxp � l  _ f ����� � I  _ f�� � �
�� .earsffdralis        afdr �  f   _ ` � �� ���
�� 
rtyp � m   a b��
�� 
ctxt��  ��  ��   � m   j m � � � � � P C o n t e n t s / R e s o u r c e s / S c r i p t s / h X m H W M o n i t o r / � o      �� 0 pscript pScript �  � � � l  q q�~�}�|�~  �}  �|   �  � � � l  q q�{ � ��{   � #  I don't love this that much.    � � � � :   I   d o n ' t   l o v e   t h i s   t h a t   m u c h . �  � � � l  q q�z � ��z   � O I AS copy file gives access denied to use these paths, so shell can do it.    � � � � �   A S   c o p y   f i l e   g i v e s   a c c e s s   d e n i e d   t o   u s e   t h e s e   p a t h s ,   s o   s h e l l   c a n   d o   i t . �  � � � I  q ~�y ��x
�y .sysoexecTEXT���     TEXT � b   q z � � � b   q v � � � m   q t � � � � �  c p   - R   � o   t u�w�w 0 pscript pScript � m   v y � � � � � >   ~ / L i b r a r y / S c r i p t s / h X m H W M o n i t o r�x   �  � � � I   ��v ��u
�v .sysoexecTEXT���     TEXT � b    � � � � b    � � � � m    � � � � � � 
 e c h o   � o   � ��t�t 
0 degree   � m   � � � � � � � X   >   ~ / L i b r a r y / S c r i p t s / h X m H W M o n i t o r / d e g r e e . t x t�u   �  � � � r   � �   l  � ��s�r 6  � � n  � � 2   � ��q
�q 
file l  � ��p�o c   � �	 o   � ��n�n 0 geekletpath geekletPath	 m   � ��m
�m 
alis�p  �o   D   � �

 1   � ��l
�l 
pnam m   � � � 
 . g l e t�s  �r   o      �k�k 	0 glets   � �j X   � ��i I  � ��h�g
�h .aevtodocnull  �    alis l  � ��f�e c   � � o   � ��d�d 0 glet   m   � ��c
�c 
alis�f  �e  �g  �i 0 glet   o   � ��b�b 	0 glets  �j   � R      �a�`
�a .ascrerr ****      � **** o      �_�_ 0 errmsg errMsg�`   � I  � ��^
�^ .sysodlogaskr        TEXT b   � � b   � � m   � � � v A n   e r r o r   o c u r r e d   d u r i n g   t h e   i n s t a l l a t i o n .   P l e a s e   t r y   a g a i n . m   � � �  
 
 o   � ��]�] 0 errmsg errMsg �\ !
�\ 
disp  m   � ��[�[  ! �Z"�Y
�Z 
btns" m   � �## �$$ 
 C l o s e�Y  ��   � m   	 
%%�                                                                                  MACS  alis    \  OS X                       Ͷ� H+     N
Finder.app                                                      �v�!�        ����  	                CoreServices    Ͷ�@      �"(       N   H   G  .OS X:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p  
  O S   X  &System/Library/CoreServices/Finder.app  / ��   � &�X& O   �/'(' k   �.)) *+* l  � ��W,-�W  ,   Load image Finder   - �.. $   L o a d   i m a g e   F i n d e r+ /0/ r   �121 6  � �343 2   � ��V
�V 
gLet4 =  � �565 1   � ��U
�U 
pnam6 m   � �77 �88 0 h X m H W M o n i t o r I m a g e _ F i n d e r2 o      �T�T 0 images Images0 9:9 X  ^;�S<; Z  Y=>�R�Q= G  1?@? =  ABA l C�P�OC e  DD n  EFE 1  �N
�N 
iurlF o  �M�M 0 glet  �P  �O  B m  �L
�L 
msng@ = #-GHG l #)I�K�JI e  #)JJ n  #)KLK 1  $(�I
�I 
iurlL o  #$�H�H 0 glet  �K  �J  H m  ),MM �NN  > k  4UOO PQP r  4@RSR e  4>TT n  4>UVU 1  9=�G
�G 
sisnV l 49W�F�EW I 49�D�C�B
�D .sysosigtsirr   ��� null�C  �B  �F  �E  S o      �A�A 0 username userNameQ X�@X O AUYZY r  ET[\[ b  EN]^] b  EJ_`_ m  EHaa �bb  f i l e : / / / U s e r s /` o  HI�?�? 0 username userName^ m  JMcc �dd ^ / L i b r a r y / S c r i p t s / h X m H W M o n i t o r / I m a g e s / F i n d e r . p n g\ 1  NS�>
�> 
iurlZ o  AB�=�= 0 glet  �@  �R  �Q  �S 0 glet  < o  �<�< 0 images Images: efe l __�;�:�9�;  �:  �9  f ghg l __�8ij�8  i   Load image Monitor   j �kk &   L o a d   i m a g e   M o n i t o rh lml r  _unon 6 _spqp 2  _d�7
�7 
gLetq = grrsr 1  hl�6
�6 
pnams m  mqtt �uu 2 h X m H W M o n i t o r I m a g e _ M o n i t o ro o      �5�5 0 images Imagesm vwv X  v�x�4yx Z  ��z{�3�2z G  ��|}| = ��~~ l ����1�0� e  ���� n  ����� 1  ���/
�/ 
iurl� o  ���.�. 0 glet  �1  �0   m  ���-
�- 
msng} = ����� l ����,�+� e  ���� n  ����� 1  ���*
�* 
iurl� o  ���)�) 0 glet  �,  �+  � m  ���� ���  { k  ���� ��� r  ����� e  ���� n  ����� 1  ���(
�( 
sisn� l ����'�&� I ���%�$�#
�% .sysosigtsirr   ��� null�$  �#  �'  �&  � o      �"�" 0 username userName� ��!� O ����� r  ����� b  ����� b  ����� m  ���� ���  f i l e : / / / U s e r s /� o  ��� �  0 username userName� m  ���� ��� ` / L i b r a r y / S c r i p t s / h X m H W M o n i t o r / I m a g e s / M o n i t o r . p n g� 1  ���
� 
iurl� o  ���� 0 glet  �!  �3  �2  �4 0 glet  y o  yz�� 0 images Imagesw ��� l ������  �  �  � ��� l ������  �   Load image Memory    � ��� &   L o a d   i m a g e   M e m o r y  � ��� r  ����� 6 ����� 2  ���
� 
gLet� = ����� 1  ���
� 
pnam� m  ���� ��� 0 h X m H W M o n i t o r I m a g e _ M e m o r y� o      �� 0 images Images� ��� X  �F���� Z  �A����� G  ���� = ���� l ����� e  ��� n  ���� 1  ��
� 
iurl� o  ���� 0 glet  �  �  � m  �
� 
msng� = ��� l ���� e  �� n  ��� 1  �
� 
iurl� o  �
�
 0 glet  �  �  � m  �� ���  � k  =�� ��� r  (��� e  &�� n  &��� 1  !%�	
�	 
sisn� l !���� I !���
� .sysosigtsirr   ��� null�  �  �  �  � o      �� 0 username userName� ��� O )=��� r  -<��� b  -6��� b  -2��� m  -0�� ���  f i l e : / / / U s e r s /� o  01�� 0 username userName� m  25�� ��� ^ / L i b r a r y / S c r i p t s / h X m H W M o n i t o r / I m a g e s / m e m o r y . p n g� 1  6;� 
�  
iurl� o  )*���� 0 glet  �  �  �  � 0 glet  � o  ������ 0 images Images� ��� l GG��������  ��  ��  � ��� l GG������  � , & Load image netInfo GenericNetworkIcon   � ��� L   L o a d   i m a g e   n e t I n f o   G e n e r i c N e t w o r k I c o n� ��� r  G]��� 6 G[��� 2  GL��
�� 
gLet� = OZ��� 1  PT��
�� 
pnam� m  UY�� ��� 2 h X m H W M o n i t o r I m a g e _ n e t I n f o� o      ���� 0 images Images� ��� X  ^������ Z  r�������� G  r���� = r|��� l rx������ e  rx�� n  rx��� 1  sw��
�� 
iurl� o  rs���� 0 glet  ��  ��  � m  x{��
�� 
msng� = ���� l � ����  e  � n  � 1  ����
�� 
iurl o  ����� 0 glet  ��  ��  � m  �� �  � k  ��  r  ��	
	 e  �� n  �� 1  ����
�� 
sisn l ������ I ��������
�� .sysosigtsirr   ��� null��  ��  ��  ��  
 o      ���� 0 username userName �� O �� r  �� b  �� b  �� m  �� �  f i l e : / / / U s e r s / o  ������ 0 username userName m  �� � v / L i b r a r y / S c r i p t s / h X m H W M o n i t o r / I m a g e s / G e n e r i c N e t w o r k I c o n . p n g 1  ����
�� 
iurl o  ������ 0 glet  ��  ��  ��  �� 0 glet  � o  ab���� 0 images Images�  l ����������  ��  ��    l ���� !��      Load image disk   ! �""     L o a d   i m a g e   d i s k #$# r  ��%&% 6 ��'(' 2  ����
�� 
gLet( = ��)*) 1  ����
�� 
pnam* m  ��++ �,, , h X m H W M o n i t o r I m a g e _ d i s k& o      ���� 0 images Images$ -��- X  �..��/. Z  �)01����0 G  �232 = ��454 l ��6����6 e  ��77 n  ��898 1  ����
�� 
iurl9 o  ������ 0 glet  ��  ��  5 m  ����
�� 
msng3 = ��:;: l ��<����< e  ��== n  ��>?> 1  ����
�� 
iurl? o  ������ 0 glet  ��  ��  ; m  ��@@ �AA  1 k  %BB CDC r  EFE e  GG n  HIH 1  	��
�� 
sisnI l 	J����J I 	������
�� .sysosigtsirr   ��� null��  ��  ��  ��  F o      ���� 0 username userNameD K��K O %LML r  $NON b  PQP b  RSR m  TT �UU  f i l e : / / / U s e r s /S o  ���� 0 username userNameQ m  VV �WW V / L i b r a r y / S c r i p t s / h X m H W M o n i t o r / I m a g e s / h d . p n gO 1  #��
�� 
iurlM o  ���� 0 glet  ��  ��  ��  �� 0 glet  / o  ������ 0 images Images��  ( m   � �XXZ                                                                                      @ alis    �  OS X                       Ͷ� H+   x�GeekTool Helper.app                                             x��M%�        ����  	                	Resources     Ͷ�@      �Ml@     x� x� x� x� x� x�   k  oOS X:Applications: GeekTool.app: Contents: PlugIns: GeekTool.prefPane: Contents: Resources: GeekTool Helper.app   (  G e e k T o o l   H e l p e r . a p p  
  O S   X  cApplications/GeekTool.app/Contents/PlugIns/GeekTool.prefPane/Contents/Resources/GeekTool Helper.app   / ��  �X   � m    YYZ                                                                                      @ alis    �  OS X                       Ͷ� H+   x�GeekTool Helper.app                                             x��M%�        ����  	                	Resources     Ͷ�@      �Ml@     x� x� x� x� x� x�   k  oOS X:Applications: GeekTool.app: Contents: PlugIns: GeekTool.prefPane: Contents: Resources: GeekTool Helper.app   (  G e e k T o o l   H e l p e r . a p p  
  O S   X  cApplications/GeekTool.app/Contents/PlugIns/GeekTool.prefPane/Contents/Resources/GeekTool Helper.app   / ��  ��   } Z[Z l     ��������  ��  ��  [ \]\ i    ^_^ I      �������� 0 	uninstall 	Uninstall��  ��  _ O     @`a` Q    ?bc��b k    6dd efe r    ghg 6   iji 2    
��
�� 
gLetj E    klk 1    ��
�� 
pnaml m    mm �nn  h X m H W M o n i t o rh o      ���� 	0 glets  f opo X    0q��rq I  & +��s��
�� .coredelonull���     gLets o   & '���� 0 glet  ��  �� 0 glet  r o    ���� 	0 glets  p t��t I  1 6��u��
�� .sysoexecTEXT���     TEXTu m   1 2vv �ww J r m   - r f   ~ / L i b r a r y / S c r i p t s / h X m H W M o n i t o r��  ��  c R      ������
�� .ascrerr ****      � ****��  ��  ��  a m     xxZ                                                                                      @ alis    �  OS X                       Ͷ� H+   x�GeekTool Helper.app                                             x��M%�        ����  	                	Resources     Ͷ�@      �Ml@     x� x� x� x� x� x�   k  oOS X:Applications: GeekTool.app: Contents: PlugIns: GeekTool.prefPane: Contents: Resources: GeekTool Helper.app   (  G e e k T o o l   H e l p e r . a p p  
  O S   X  cApplications/GeekTool.app/Contents/PlugIns/GeekTool.prefPane/Contents/Resources/GeekTool Helper.app   / ��  ] y��y l     ��������  ��  ��  ��       ��z{|}~����  z ������������
�� .aevtoappnull  �   � ****�� 0 install Install�� 0 	uninstall 	Uninstall�� 
0 choice  �� 
0 degree  ��  { �� ��������
�� .aevtoappnull  �   � ****��  ��  �  �  / ���� % ) ,���������� 8 ?�� j�� T�� Z a d�������� u��
�� 
disp
�� 
btns
�� 
dflt�� 
�� .sysodlogaskr        TEXT
�� 
bhit�� 
0 choice  �� 
0 degree  
�� .miscactvnull��� ��� null
�� 
dtxt�� 
�� 
ttxt
�� 
TEXT�� 0 install Install�� 0 	uninstall 	Uninstall�� y� ��k����mv�m� 	�,E�UO��  J�E�O 9h��*j Oa �ka a �a a lv�ka  	a ,a &E�[OY��O)�k+ Y �a   
)j+ Y h| �� ���������� 0 install Install�� ����� �  ���� 
0 degree  ��  � 	������������~�}�|�� 
0 degree  �� 0 geekletpath geekletPath�� 0 librarypath libraryPath�� 0 pscript pScript�� 	0 glets  � 0 glet  �~ 0 errmsg errMsg�} 0 images Images�| 0 username userName� F�{Y%�z�y�x ��w�v�u�t�s�r ��q�p�o�n�m�l ��k�j�i � � ��h � ��g��f�e�d�c�b�a�`#�_�^7�]�\M�[�Z�Yact��������+@TV�{ 0 	uninstall 	Uninstall
�z 
rtyp
�y 
ctxt
�x .earsffdralis        afdr
�w 
alis
�v afdrdlib
�u 
from
�t fldmfldu
�s 
TEXT�r 
�q 
cfol
�p .coredoexbool        obj 
�o 
kocl
�n 
insh
�m 
prdt
�l 
pnam�k 
�j .corecrel****      � null
�i 
psxp
�h .sysoexecTEXT���     TEXT
�g 
file�  
�f 
cobj
�e .corecnte****       ****
�d .aevtodocnull  �    alis�c 0 errmsg errMsg�b  
�a 
disp
�` 
btns
�_ .sysodlogaskr        TEXT
�^ 
gLet
�] 
iurl
�\ 
msng
�[ 
bool
�Z .sysosigtsirr   ��� null
�Y 
sisn��1)�,EO�(� �)��l �%�&E�O ������� �%E�O*�/j  '*a �a ������ a a a la  Y hO)��l a ,a %E�Oa �%a %j Oa �%a %j O��&a -a [a ,\Za  ?1E�O �[a a !l "kh ��&j #[OY��W X $ %a &a '%�%a (ja )a *� +UO�E*a ,-a [a ,\Za -81E�O [�[a a !l "kh �a .,Ea / 
 �a .,Ea 0 a 1& &*j 2a 3,EE�O� a 4�%a 5%*a .,FUY h[OY��O*a ,-a [a ,\Za 681E�O [�[a a !l "kh �a .,Ea / 
 �a .,Ea 7 a 1& &*j 2a 3,EE�O� a 8�%a 9%*a .,FUY h[OY��O*a ,-a [a ,\Za :81E�O [�[a a !l "kh �a .,Ea / 
 �a .,Ea ; a 1& &*j 2a 3,EE�O� a <�%a =%*a .,FUY h[OY��O*a ,-a [a ,\Za >81E�O [�[a a !l "kh �a .,Ea / 
 �a .,Ea ? a 1& &*j 2a 3,EE�O� a @�%a A%*a .,FUY h[OY��O*a ,-a [a ,\Za B81E�O [�[a a !l "kh �a .,Ea / 
 �a .,Ea C a 1& &*j 2a 3,EE�O� a D�%a E%*a .,FUY h[OY��UU} �X_�W�V���U�X 0 	uninstall 	Uninstall�W  �V  � �T�S�T 	0 glets  �S 0 glet  � x�R��Qm�P�O�N�Mv�L�K�J
�R 
gLet
�Q 
pnam
�P 
kocl
�O 
cobj
�N .corecnte****       ****
�M .coredelonull���     gLet
�L .sysoexecTEXT���     TEXT�K  �J  �U A� = 4*�-�[�,\Z�@1E�O �[��l kh �j [OY��O�j 
W X  hU~ ���  U n i n s t a l l ���  F��  ascr  ��ޭ