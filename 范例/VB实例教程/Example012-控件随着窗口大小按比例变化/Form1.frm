VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   4590
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   5385
   LinkTopic       =   "Form1"
   ScaleHeight     =   1000
   ScaleMode       =   0  'User
   ScaleWidth      =   1000
   StartUpPosition =   3  '����ȱʡ
   Begin VB.ListBox List1 
      Height          =   2760
      Left            =   3240
      TabIndex        =   3
      Top             =   1440
      Width           =   1935
   End
   Begin VB.ComboBox Combo1 
      Height          =   300
      Left            =   3240
      TabIndex        =   2
      Text            =   "Combo1"
      Top             =   840
      Width           =   1575
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Command1"
      Height          =   375
      Left            =   3240
      TabIndex        =   1
      Top             =   120
      Width           =   1575
   End
   Begin VB.TextBox Text1 
      Height          =   4095
      Left            =   120
      TabIndex        =   0
      Text            =   "Text1"
      Top             =   120
      Width           =   2895
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim TT, TL, TW, TH As Single
Dim CT, CL, CW, CH As Single
Dim LT, LL, LW, LH As Single
Dim CMT, CML, CMW, CMH As Single
Private Sub Form_Load()
    TT = Text1.Top
    TL = Text1.Left
    TW = Text1.Width
    TH = Text1.Height
    '����Text1�ؼ���Top��Left��Width��Height����
    CT = Combo1.Top
    CL = Combo1.Left
    CW = Combo1.Width
    CH = Combo1.Height
    '����Combo1�ؼ���Top��Left��Width��Height����
    LT = List1.Top
    LL = List1.Left
    LW = List1.Width
    LH = List1.Height
    '����List1�ؼ���Top��Left��Width��Height����
    CMT = Command1.Top
    CML = Command1.Left
    CMW = Command1.Width
    CMH = Command1.Height
    '����Command1�ؼ���Top��Left��Width��Height����
End Sub


Private Sub Form_Resize()
    Form1.ScaleHeight = 1000
    Form1.ScaleWidth = 1000
    Text1.Top = TT
    Text1.Left = TL
    Text1.Width = TW
    Text1.Height = TH
    '����Text1��λ�úʹ�С
    List1.Top = LT
    List1.Left = LL
    List1.Width = LW
    List1.Height = LH
    '����List1��λ�úʹ�С
    Combo1.Top = CT
    Combo1.Left = CL
    Combo1.Width = CW
'    Combo1.Height = CH
    '����Combo1��λ�úʹ�С
    Command1.Top = CMT
    Command1.Left = CML
    Command1.Width = CMW
    Command1.Height = CMH
    '����Command1��λ�úʹ�С
End Sub

