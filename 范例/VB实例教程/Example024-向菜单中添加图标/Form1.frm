VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "�˵�ͼ��"
   ClientHeight    =   3195
   ClientLeft      =   165
   ClientTop       =   735
   ClientWidth     =   4680
   LinkTopic       =   "Form1"
   ScaleHeight     =   3195
   ScaleWidth      =   4680
   StartUpPosition =   3  '����ȱʡ
   Begin VB.PictureBox Picture4 
      Height          =   495
      Left            =   2400
      ScaleHeight     =   435
      ScaleWidth      =   315
      TabIndex        =   3
      Top             =   480
      Width           =   375
   End
   Begin VB.PictureBox Picture3 
      Height          =   495
      Left            =   1800
      ScaleHeight     =   435
      ScaleWidth      =   315
      TabIndex        =   2
      Top             =   480
      Width           =   375
   End
   Begin VB.PictureBox Picture2 
      Height          =   495
      Left            =   1200
      ScaleHeight     =   435
      ScaleWidth      =   315
      TabIndex        =   1
      Top             =   480
      Width           =   375
   End
   Begin VB.PictureBox Picture1 
      Height          =   495
      Left            =   3000
      ScaleHeight     =   435
      ScaleWidth      =   315
      TabIndex        =   0
      Top             =   480
      Width           =   375
   End
   Begin VB.Menu File 
      Caption         =   "�ļ�"
      Index           =   0
      Begin VB.Menu New 
         Caption         =   "�½�"
         Index           =   0
      End
      Begin VB.Menu Open 
         Caption         =   "��"
         Index           =   1
         Shortcut        =   ^O
      End
      Begin VB.Menu Save 
         Caption         =   "����"
         Index           =   2
         Shortcut        =   ^S
      End
      Begin VB.Menu Print 
         Caption         =   "��ӡ"
         Index           =   3
         Shortcut        =   ^P
      End
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Click()
End Sub

Private Sub Form_Load()
    Picture1.Visible = False
    Picture2.Visible = False
    Picture3.Visible = False
    Picture4.Visible = False
    '���ظ�Picture Box�ؼ�
    Picture1.AutoSize = True
    Picture2.AutoSize = True
    Picture3.AutoSize = True
    Picture4.AutoSize = True
    'ʹ��Picture Box�ؼ��ܹ�����ͼƬ�Զ��ı��С
     
     hMenu& = GetMenu(Form1.hwnd)
    '�õ������в˵��ľ��
    hSubMenu& = GetSubMenu(hMenu&, 0)
    '�õ���һ���Ӳ˵�File�ľ��
    
    hID& = GetMenuItemID(hSubMenu&, 0)
    Picture1.Picture = LoadPicture(App.Path + "\New.bmp")
    SetMenuItemBitmaps hMenu&, hID&, MF_BITMAP, _
                        Picture1.Picture, Picture1.Picture
    '�õ�File�˵��еĵ�һ���˵����ID
    'Ȼ��Ϊ�����ͼ��
    'Ҳ�����������ͼƬ
    'һ����ʾ�˵��ѡ��״̬
    '��һ����ʾ�˵���û�б�ѡ��
    
        hID& = GetMenuItemID(hSubMenu&, 1)
    Picture2.Picture = LoadPicture(App.Path + "\Open.bmp")
    SetMenuItemBitmaps hMenu&, hID&, MF_BITMAP, _
                        Picture2.Picture, Picture2.Picture
    '�õ�File�˵��еĵڶ����˵����ID��Ϊ�����ͼ��
    
    hID& = GetMenuItemID(hSubMenu&, 2)
    Picture3.Picture = LoadPicture(App.Path + "\Save.bmp")
    SetMenuItemBitmaps hMenu&, hID&, MF_BITMAP, _
                        Picture3.Picture, Picture3.Picture
    '�õ�File�˵��еĵ������˵����ID��Ϊ�����ͼ��
    
    hID& = GetMenuItemID(hSubMenu&, 3)
    Picture4.Picture = LoadPicture(App.Path + "\Print.bmp")
    SetMenuItemBitmaps hMenu&, hID&, MF_BITMAP, _
                        Picture4.Picture, Picture4.Picture
        '�õ�File�˵��еĵ��ĸ��˵����ID��Ϊ�����ͼ��
End Sub
