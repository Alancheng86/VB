VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   4665
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   5535
   ControlBox      =   0   'False
   LinkTopic       =   "Form1"
   ScaleHeight     =   4665
   ScaleWidth      =   5535
   StartUpPosition =   3  '����ȱʡ
   Begin VB.CommandButton Command1 
      Caption         =   "���ƶ��İ�ť"
      Height          =   855
      Left            =   1560
      TabIndex        =   0
      Top             =   1080
      Width           =   1575
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Declare Function CreateEllipticRgn Lib "gdi32" _
( _
    ByVal X1 As Long, ByVal Y1 As Long, _
    ByVal X2 As Long, ByVal Y2 As Long _
    ) As Long
'����������Բ�������API����
Private Declare Function SetWindowRgn Lib "user32" _
( _
    ByVal hWnd As Long, ByVal hRgn As Long, _
    ByVal bRedraw As Boolean _
    ) As Long
'�������ô�����״��API����

Private Declare Function ReleaseCapture Lib "user32" _
( _
    ) As Long

Private Declare Function SendMessage Lib "user32" _
Alias "SendMessageA" _
( _
    ByVal hWnd As Long, ByVal wMsg As Long, _
    ByVal wParam As Long, lParam As Any _
) As Long

Private Const WM_SYSCOMMAND = &H112
Private Const SC_MOVE = &HF010&
Private Const HTCAPTION = 2

Private Sub Command1_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
   If Button = 1 Then
    '�������������
        Dim ReturnVal As Long
        X1 = ReleaseCapture()
        ReturnVal1 = SendMessage(Command1.hWnd, WM_SYSCOMMAND, _
                                SC_MOVE + HTCAPTION, 0)
     End If

End Sub

Private Sub Form_Load()
    Dim hRgnC As Long
    hRgnC = CreateEllipticRgn(0, 22, 300, 300)
    '������Բ������
    SetWindowRgn Me.hWnd, hRgnC, True
    '���ô���Ϊ��Բ��
End Sub

Private Sub Form_MouseDown(Button As Integer, Shift As Integer, _
                            X As Single, Y As Single)
    If Button = 1 Then
    '�������������
        Dim ReturnVal As Long
        X = ReleaseCapture()
        ReturnVal = SendMessage(Form1.hWnd, WM_SYSCOMMAND, _
                                SC_MOVE + HTCAPTION, 0)
     End If
End Sub

