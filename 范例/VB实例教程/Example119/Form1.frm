VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Windows"
   ClientHeight    =   2115
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   3165
   LinkTopic       =   "Form1"
   ScaleHeight     =   2115
   ScaleWidth      =   3165
   StartUpPosition =   3  '����ȱʡ
   Begin VB.Frame Frame1 
      Height          =   1695
      Left            =   240
      TabIndex        =   0
      Top             =   240
      Width           =   2775
      Begin VB.OptionButton Option_NoAllow 
         Caption         =   "�������˳�Windows"
         Height          =   375
         Left            =   360
         TabIndex        =   2
         Top             =   960
         Width           =   2055
      End
      Begin VB.OptionButton Option_Allow 
         Caption         =   "�����˳�Windows"
         Height          =   375
         Left            =   360
         TabIndex        =   1
         Top             =   480
         Width           =   1815
      End
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Load()
    Me.Option_Allow.Value = True
    m_AllowExit = True
    SubClass Me.hwnd
End Sub

Private Sub Form_Unload(Cancel As Integer)
    EndSubClass Me.hwnd
End Sub

Private Sub Option_Allow_Click()
    m_AllowExit = True
End Sub

Private Sub Option_NoAllow_Click()
    m_AllowExit = False
End Sub

Private Sub SubClass(wnd As Long)
    Dim ret As Long
    '��¼Window Procedure�ĵ�ַ
    preWinProc = GetWindowLong(wnd, GWL_WNDPROC)
    '��ʼ��ȡ��Ϣ,������Ϣ����wndproc���̴���.
    ret = SetWindowLong(wnd, GWL_WNDPROC, AddressOf wndproc)
End Sub

Private Sub EndSubClass(wnd As Long)
    Dim ret As Long
    'ȡ����Ϣ��ȡ�������ӷ������.
    ret = SetWindowLong(wnd, GWL_WNDPROC, preWinProc)
End Sub
