VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "��̬�����ؼ�"
   ClientHeight    =   3720
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   5055
   LinkTopic       =   "Form1"
   ScaleHeight     =   3720
   ScaleWidth      =   5055
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command2 
      Caption         =   "ɾ���ؼ�"
      Height          =   495
      Left            =   240
      TabIndex        =   1
      Top             =   1080
      Width           =   975
   End
   Begin VB.CommandButton Command1 
      Caption         =   "��ӿؼ�"
      Height          =   495
      Left            =   240
      TabIndex        =   0
      Top             =   240
      Width           =   975
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Private WithEvents NewButton As CommandButton
Attribute NewButton.VB_VarHelpID = -1
'ͨ��ʹ��WithEvents�ؼ�������һ���������Ϊ�µ����ť

Private Sub Command1_Click()
If NewButton Is Nothing Then
    Set NewButton = Controls.Add("VB.CommandButton", "cmdNew", Form1)
    '�����µİ�ťcmdNew
    NewButton.Move Command1.Left + Command1.Width + 240, Command1.Top
    'ȷ��������ťcmdNew��λ��
    NewButton.Caption = "��̬��ӵİ�ť"
    NewButton.Visible = True
    '��ʾ�ð�ť
End If
End Sub

Private Sub Command2_Click()
If NewButton Is Nothing Then
    Exit Sub
Else
   Controls.Remove NewButton
   Set NewButton = Nothing
   End If
End Sub
Private Sub NewButton_click()
    MsgBox "���Ƕ�̬���ӵİ�ť������Ե�����ɾ���ؼ�����ťɾ����", vbDefaultButton1, "Click"
End Sub

