VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "�������Ǻ���ͼ��"
   ClientHeight    =   3705
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   4680
   BeginProperty Font 
      Name            =   "����"
      Size            =   9
      Charset         =   134
      Weight          =   700
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   LinkTopic       =   "Form1"
   ScaleHeight     =   3705
   ScaleWidth      =   4680
   StartUpPosition =   3  '����ȱʡ
   Begin VB.CommandButton Command3 
      Caption         =   "y=Con(x)"
      Height          =   375
      Left            =   3000
      TabIndex        =   2
      Top             =   3240
      Width           =   1215
   End
   Begin VB.CommandButton Command2 
      Caption         =   "y=Sin(x)"
      Height          =   375
      Left            =   1680
      TabIndex        =   1
      Top             =   3240
      Width           =   1215
   End
   Begin VB.CommandButton Command1 
      Caption         =   "��������ϵ"
      Height          =   375
      Left            =   360
      TabIndex        =   0
      Top             =   3240
      Width           =   1215
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
  Cls
  Form1.Scale (-8, 2)-(8, -2)                     '�Զ�������ϵ
  Line (-7.5, 0)-(7.5, 0)                         '��X��
  Line (0, 1.7)-(0, -1.7)                         '��Y��
  CurrentX = 7.6: CurrentY = 0.1: Print "X"       '��ʶX��
  CurrentX = 0.5: CurrentY = 1.8: Print "Y"       '��ʶY��
  For i = -7 To 7
    Line (i, 0)-(i, 0.1)                          '��X���ϱ������̶�
    CurrentX = i - 0.2: CurrentY = -0.1: Print i  '��X����������ֱ�ʶ
  Next i
  For i = -1 To 1
    If i <> 0 Then
      CurrentX = -0.7: CurrentY = i + 0.1: Print i '��Y����������ֱ�ʶ
      Line (0.5, i)-(0, i)                         '��Y���ϱ������̶�
    End If
  Next i
End Sub

Private Sub Command2_Click()
  CurrentX = -6.283: CurrentY = 0                '���ߵ��������
  For i = -6.283 To 6.283 Step 0.01
  x = i: y = Sin(i)
  Line -(x, y)                                   '������������
  Next i
  CurrentX = 2.5: CurrentY = 1: Print "y=sin(x)" '���y=sin(x)
End Sub

Private Sub Command3_Click()
  DrawWidth = 2
  CurrentX = -6.283: CurrentY = 1                 '���ߵ��������
  For i = -6.283 To 6.283 Step 0.01
  x = i: y = Cos(i)
  Line -(x, y)                                    '������������
  Next i
  CurrentX = -7: CurrentY = 1.2: Print "y=cos(x)" '���y=cos(x)
End Sub

