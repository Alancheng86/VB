VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "�������Ϣ"
   ClientHeight    =   2175
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   4890
   LinkTopic       =   "Form1"
   ScaleHeight     =   2175
   ScaleWidth      =   4890
   StartUpPosition =   3  '����ȱʡ
   Begin VB.CommandButton Command1 
      Caption         =   "�������"
      Height          =   615
      Left            =   240
      TabIndex        =   1
      Top             =   960
      Width           =   1575
   End
   Begin VB.TextBox Text1 
      Height          =   495
      Left            =   240
      TabIndex        =   0
      Text            =   "Text1"
      Top             =   240
      Width           =   4455
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
    Dim message, title, defaultValue As String
    Dim myValue As String
    message = "Enter a value between 1 and 3"   '������ʾ��Ϣ
    title = "InputBox Demo"                      '���ñ���
    defaultValue = "1"                           '����Ĭ��ֵ
    
    myValue = InputBox(message, title, defaultValue, 100, 100)
   '��ʾ����Ի���
   If myValue = "" Then
        MsgBox "û�������κ�ֵ��", vbInformation + vbOKOnly, "ʾ��"
    Else
        Text1.Text = myValue
    End If
End Sub
