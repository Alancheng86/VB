VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Line"
   ClientHeight    =   3735
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   5835
   LinkTopic       =   "Form1"
   ScaleHeight     =   3735
   ScaleWidth      =   5835
   StartUpPosition =   3  '����ȱʡ
   Begin VB.CheckBox Check1 
      Caption         =   "���Ϊ8"
      Height          =   375
      Left            =   3840
      TabIndex        =   7
      Top             =   1800
      Value           =   1  'Checked
      Width           =   1815
   End
   Begin VB.Frame Frame2 
      Caption         =   "����"
      Height          =   1095
      Left            =   3840
      TabIndex        =   4
      Top             =   2520
      Width           =   1815
      Begin VB.OptionButton Option2 
         Caption         =   "/"
         Height          =   255
         Index           =   1
         Left            =   240
         TabIndex        =   6
         Top             =   600
         Width           =   735
      End
      Begin VB.OptionButton Option2 
         Caption         =   "\"
         Height          =   180
         Index           =   0
         Left            =   240
         TabIndex        =   5
         Top             =   240
         Value           =   -1  'True
         Width           =   615
      End
   End
   Begin VB.Frame Frame1 
      Caption         =   "����"
      Height          =   1455
      Left            =   3840
      TabIndex        =   0
      Top             =   120
      Width           =   1575
      Begin VB.OptionButton Option1 
         Caption         =   "��"
         Height          =   255
         Index           =   3
         Left            =   120
         TabIndex        =   3
         Top             =   960
         Width           =   1095
      End
      Begin VB.OptionButton Option1 
         Caption         =   "�̻���"
         Height          =   375
         Index           =   2
         Left            =   120
         TabIndex        =   2
         Top             =   600
         Width           =   1095
      End
      Begin VB.OptionButton Option1 
         Caption         =   "ʵ��"
         Height          =   375
         Index           =   1
         Left            =   120
         TabIndex        =   1
         Top             =   240
         Value           =   -1  'True
         Width           =   1215
      End
   End
   Begin VB.Line Line1 
      BorderWidth     =   8
      X1              =   360
      X2              =   3000
      Y1              =   360
      Y2              =   3360
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub Check1_Click()
'�����߿�
    If Check1.Value = 1 Then
        Line1.BorderWidth = 8
    Else
        Line1.BorderWidth = 1
    End If
End Sub

Private Sub Option1_Click(Index As Integer)
'��������
    Line1.BorderWidth = 1
    Check1.Value = 0
    Select Case Index
    Case 1
        Line1.BorderStyle = 1
    Case 2
        Line1.BorderStyle = 2
    Case 3
        Line1.BorderStyle = 3
    End Select
End Sub

Private Sub Option2_Click(Index As Integer)
'�����ߵ���б����
    Dim x As Integer
    Dim y As Integer
    Select Case Index
    Case 0
        If ((Line1.X1 < Line1.X2) And (Line1.Y1 > Line1.Y2)) Or ((Line1.X1 > Line1.X2) And (Line1.Y1 < Line1.Y2)) Then
            x = Line1.X1
            Line1.X1 = Line1.X2
            Line1.X2 = x
         End If
    
    Case 1
        If ((Line1.X1 < Line1.X2) And (Line1.Y1 < Line1.Y2)) Or ((Line1.X1 > Line1.X2) And (Line1.Y1 > Line1.Y2)) Then
            x = Line1.X1
            Line1.X1 = Line1.X2
            Line1.X2 = x
        End If
    End Select
End Sub
