VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "����༭"
   ClientHeight    =   5430
   ClientLeft      =   7140
   ClientTop       =   2760
   ClientWidth     =   5790
   ForeColor       =   &H000000FF&
   Icon            =   "Form1.frx":0000
   LinkTopic       =   "Form1"
   ScaleHeight     =   5430
   ScaleWidth      =   5790
   Begin VB.Timer Timer1 
      Interval        =   100
      Left            =   3720
      Top             =   3480
   End
   Begin VB.CommandButton Command12 
      Caption         =   "��ʱ1S"
      Height          =   375
      Left            =   360
      TabIndex        =   12
      Top             =   4920
      Width           =   1095
   End
   Begin VB.CommandButton Command11 
      Caption         =   "��ʱ0.5S"
      Height          =   375
      Left            =   360
      TabIndex        =   11
      Top             =   4440
      Width           =   1095
   End
   Begin VB.CommandButton Command10 
      Caption         =   "��ʱ0.2S"
      Height          =   375
      Left            =   360
      TabIndex        =   10
      Top             =   3960
      Width           =   1095
   End
   Begin VB.CommandButton Command2 
      Caption         =   "���"
      Height          =   375
      Left            =   3360
      TabIndex        =   9
      Top             =   960
      Width           =   1815
   End
   Begin VB.CommandButton Command9 
      Caption         =   "��ͼ"
      Height          =   375
      Left            =   360
      TabIndex        =   8
      Top             =   3480
      Width           =   1095
   End
   Begin VB.CommandButton Command8 
      Caption         =   "��"
      Height          =   375
      Left            =   360
      TabIndex        =   7
      Top             =   3000
      Width           =   1095
   End
   Begin VB.CommandButton Command7 
      Caption         =   "��"
      Height          =   375
      Left            =   360
      TabIndex        =   6
      Top             =   2520
      Width           =   1095
   End
   Begin VB.CommandButton Command6 
      Caption         =   "��"
      Height          =   375
      Left            =   360
      TabIndex        =   5
      Top             =   2040
      Width           =   1095
   End
   Begin VB.CommandButton Command5 
      Caption         =   "��"
      Height          =   375
      Left            =   360
      TabIndex        =   4
      Top             =   1560
      Width           =   1095
   End
   Begin VB.CommandButton Command4 
      Caption         =   "��"
      Height          =   375
      Index           =   0
      Left            =   360
      TabIndex        =   3
      Top             =   1080
      Width           =   1095
   End
   Begin VB.TextBox Text1 
      Height          =   4695
      Left            =   1680
      Locked          =   -1  'True
      MultiLine       =   -1  'True
      TabIndex        =   2
      Text            =   "Form1.frx":58C3A
      Top             =   600
      Width           =   1455
   End
   Begin VB.CommandButton Command3 
      Caption         =   "��"
      Height          =   375
      Index           =   0
      Left            =   360
      TabIndex        =   1
      Top             =   600
      Width           =   1095
   End
   Begin VB.CommandButton Command1 
      Caption         =   "����"
      Height          =   375
      Left            =   3360
      TabIndex        =   0
      Top             =   1560
      Width           =   1815
   End
   Begin VB.Label Label2 
      Caption         =   "�ѱ����ڱ�����Ŀ¼�µĵ������ļ�a.cfg���Ƶ�SD���к󼴿��趨����˳������ʱ"
      Height          =   855
      Left            =   3360
      TabIndex        =   14
      Top             =   2160
      Width           =   2295
   End
   Begin VB.Label Label1 
      Caption         =   "Label1"
      Height          =   495
      Left            =   480
      TabIndex        =   13
      Top             =   120
      Width           =   4815
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim i As Integer
Dim a(255) As Byte
Dim m As Integer
Dim n As Integer
Private Sub Command1_Click()


'For i = 0 To m
 '   a(i) = i + 30
'Next
a(8) = m

Open App.Path & "\a.cfg" For Random As #1 Len = 1
  For n = 0 To 255
   Put #1, , a(n)
    Next
    Close #1
End Sub
'Private Sub Command2_Click()
'Text1.Text = Text1.Text + "Red" + vbCrLf
'��T��ext6.Text = Text1.Text


Private Sub Command10_Click()
'Text1.Text = Text1.Text + "��ʱ0.2S" + vbCrLf + vbCrLf
i = i - 1
If (i = 8) Then
i = i + 1
Else
a(i) = a(i) + 2
i = i + 1
Text1.Text = Text1.Text + "��ʱ0.2S" + vbCrLf
End If
End Sub

Private Sub Command11_Click()
'Text1.Text = Text1.Text + "��ʱ0.5S" + vbCrLf + vbCrLf
i = i - 1
If (i = 8) Then
i = i + 1
Else
a(i) = a(i) + 5
i = i + 1
Text1.Text = Text1.Text + "��ʱ0.5S" + vbCrLf
End If
End Sub

Private Sub Command12_Click()
'Text1.Text = Text1.Text + "��ʱ1S" + vbCrLf + vbCrLf
i = i - 1
If (i = 8) Then
i = i + 1
Else
a(i) = a(i) + 10
i = i + 1
Text1.Text = Text1.Text + "��ʱ1S" + vbCrLf
End If
End Sub

Private Sub Command2_Click()
Text1.Text = "����˳��"
m = 0
i = 9
End Sub

Private Sub Command3_Click(Index As Integer)
If i > 128 Then
i = i - 2
m = m - 1
Text1.Text = "���泬�ޣ���ȡ�����±༭"
End If

Text1.Text = Text1.Text + vbCrLf
Text1.Text = Text1.Text + "ȫ��" + vbCrLf
a(i) = 1
i = i + 2
m = m + 1
End Sub

Private Sub Command4_Click(Index As Integer)
If i > 128 Then
i = i - 2
m = m - 1
Text1.Text = "���泬�ޣ���ȡ�����±༭"
End If

Text1.Text = Text1.Text + vbCrLf
Text1.Text = Text1.Text + "ȫ��" + vbCrLf
a(i) = 2
i = i + 2
m = m + 1
End Sub

Private Sub Command5_Click()
If i > 128 Then
i = i - 2
m = m - 1
Text1.Text = "���泬�ޣ���ȡ�����±༭"
End If

Text1.Text = Text1.Text + vbCrLf
Text1.Text = Text1.Text + "ȫ��" + vbCrLf
a(i) = 3
i = i + 2
m = m + 1
End Sub

Private Sub Command6_Click()
If i > 128 Then
i = i - 2
m = m - 1
Text1.Text = "���泬�ޣ���ȡ�����±༭"
End If

Text1.Text = Text1.Text + vbCrLf
Text1.Text = Text1.Text + "ȫ��" + vbCrLf
a(i) = 4
i = i + 2
m = m + 1
End Sub

Private Sub Command7_Click()
If i > 128 Then
i = i - 2
m = m - 1
Text1.Text = "���泬�ޣ���ȡ�����±༭"
End If

Text1.Text = Text1.Text + vbCrLf
Text1.Text = Text1.Text + "ȫ��" + vbCrLf
a(i) = 5
i = i + 2
m = m + 1
End Sub

Private Sub Command8_Click()
If i > 128 Then
i = i - 2
m = m - 1
Text1.Text = "���泬�ޣ���ȡ�����±༭"
End If

Text1.Text = Text1.Text + vbCrLf
Text1.Text = Text1.Text + "ȫ��" + vbCrLf
a(i) = 6
i = i + 2
m = m + 1
End Sub

Private Sub Command9_Click()
If i > 128 Then
i = i - 2
m = m - 1
Text1.Text = "���泬�ޣ���ȡ�����±༭"
End If

Text1.Text = Text1.Text + vbCrLf
Text1.Text = Text1.Text + "��ͼ" + vbCrLf
a(i) = 7
i = i + 2
m = m + 1
End Sub

'End Sub

Private Sub Form_Load()
Label1.Caption = "���׻���༭��"

Command1.Caption = "����"
Text1.Text = "����˳��"
m = 0
i = 9
End Sub

Private Sub Timer1_Timer()
Label1.Caption = "��������:" & m
End Sub
