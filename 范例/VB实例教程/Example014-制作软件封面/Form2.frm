VERSION 5.00
Begin VB.Form Form2 
   Caption         =   "������"
   ClientHeight    =   4275
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   5475
   LinkTopic       =   "Form2"
   ScaleHeight     =   4275
   ScaleWidth      =   5475
   StartUpPosition =   2  '��Ļ����
   Begin VB.Timer Timer1 
      Enabled         =   0   'False
      Interval        =   5000
      Left            =   720
      Top             =   600
   End
End
Attribute VB_Name = "Form2"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Activate()
    Timer1.Interval = 3000
    Timer1.Enabled = True
End Sub

Private Sub Form_Load()
    Screen.MousePointer = 11
    Form1.Show
    SetWindowPos Form1.hwnd, HWND_TOPMOST, _
        0, 0, 0, 0, SWP_NOMOVE Or SWP_NOSIZE
    '����ɳ©״
    '��ʾ����
 End Sub

Private Sub Timer1_Timer()
    Form2.Timer1.Enabled = False
    '�رն�ʱ��
    Unload Form1
    'ж�ط���
    Screen.MousePointer = 0
    '���ָ�ԭ��
End Sub
