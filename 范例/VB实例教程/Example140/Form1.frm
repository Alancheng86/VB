VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   1815
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   3255
   LinkTopic       =   "Form1"
   ScaleHeight     =   1815
   ScaleWidth      =   3255
   StartUpPosition =   3  '����ȱʡ
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Const COLOR_SCROLLBAR = 0 '������
Private Const COLOR_BACKGROUND = 1 '���汳��
Private Const COLOR_ACTIVECAPTION = 2 '����ڱ���
Private Const COLOR_INACTIVECAPTION = 3 '�ǻ���ڱ���
Private Const COLOR_MENU = 4 '�˵�
Private Const COLOR_WINDOW = 5 '���ڱ���
Private Const COLOR_WINDOWFRAME = 6 '���ڿ�
Private Const COLOR_MENUTEXT = 7 '��������
Private Const COLOR_WINDOWTEXT = 8 '3D ��Ӱ (Win95)
Private Const COLOR_CAPTIONTEXT = 9 '��������
Private Const COLOR_ACTIVEBORDER = 10 '����ڱ߿�
Private Const COLOR_INACTIVEBORDER = 11 '�ǻ���ڱ߿�
Private Const COLOR_APPWORKSPACE = 12 'MDI���ڱ���
Private Const COLOR_HIGHLIGHT = 13 'ѡ��������
Private Const COLOR_HIGHLIGHTTEXT = 14 'ѡ��������
Private Const COLOR_BTNFACE = 15 '��ť
Private Const COLOR_BTNSHADOW = 16 '3D ��ť��Ӱ
Private Const COLOR_GRAYTEXT = 17 '�Ҷ�����
Private Const COLOR_BTNTEXT = 18 '��ť����
Private Const COLOR_INACTIVECAPTIONTEXT = 19 '�ǻ��������
Private Const COLOR_BTNHIGHLIGHT = 20 '3D ѡ��ť

Private Declare Function SetSysColors Lib "user32" _
                (ByVal nChanges As Long, _
                lpSysColor As Long, _
                lpColorValues As Long) _
                As Long
Private Declare Function GetSysColor Lib "user32" _
                (ByVal nIndex As Long) _
                As Long

Private Sub Form_Load()
    Dim i As Long
    i = GetSysColor(COLOR_ACTIVECAPTION)
    'i �� RGB ֵ
    i = SetSysColors(1, COLOR_ACTIVECAPTION, RGB(255, 255, 255))
    '�ѱ�������Ϊ��ɫ
End Sub
