VERSION 5.00
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "comdlg32.ocx"
Begin VB.Form Form1 
   Caption         =   "����ͼ"
   ClientHeight    =   6420
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   7710
   LinkTopic       =   "Form1"
   ScaleHeight     =   6420
   ScaleWidth      =   7710
   StartUpPosition =   3  '����ȱʡ
   Begin VB.CommandButton Command2 
      Caption         =   "���"
      Height          =   495
      Left            =   5640
      TabIndex        =   7
      Top             =   1440
      Width           =   1335
   End
   Begin VB.Frame Frame1 
      Caption         =   "�߿�"
      Height          =   2655
      Left            =   5520
      TabIndex        =   2
      Top             =   2880
      Width           =   1935
      Begin VB.OptionButton Option4 
         Caption         =   "8"
         Height          =   495
         Left            =   240
         TabIndex        =   6
         Top             =   1800
         Width           =   1215
      End
      Begin VB.OptionButton Option3 
         Caption         =   "4"
         Height          =   375
         Left            =   240
         TabIndex        =   5
         Top             =   1320
         Width           =   1335
      End
      Begin VB.OptionButton Option2 
         Caption         =   "2"
         Height          =   375
         Left            =   240
         TabIndex        =   4
         Top             =   840
         Width           =   1095
      End
      Begin VB.OptionButton Option1 
         Caption         =   "1"
         Height          =   255
         Left            =   240
         TabIndex        =   3
         Top             =   480
         Value           =   -1  'True
         Width           =   1335
      End
   End
   Begin VB.CommandButton Command1 
      Caption         =   "������ɫ"
      Height          =   495
      Left            =   5640
      TabIndex        =   1
      Top             =   600
      Width           =   1215
   End
   Begin MSComDlg.CommonDialog CommonDialog1 
      Left            =   4200
      Top             =   3840
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin VB.PictureBox Picture1 
      Height          =   5535
      Left            =   480
      ScaleHeight     =   5475
      ScaleWidth      =   4515
      TabIndex        =   0
      Top             =   480
      Width           =   4575
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim x1 As Integer   '���X����
Dim y1 As Integer   '���Y����
Dim x2 As Integer   '�յ��X����
Dim y2 As Integer   '�յ�Y����
Dim flag As Boolean '��ͼ��־

'�����ߵ���ɫ
Private Sub Command1_Click()
    On Error Resume Next
    CommonDialog1.CancelError = True
    CommonDialog1.DialogTitle = "��ɫ"
    CommonDialog1.ShowColor
    If Err <> 32755 Then
        Picture1.ForeColor = CommonDialog1.Color
    End If
End Sub

'���Picture1�е�ͼ��
Private Sub Command2_Click()
    Picture1.Cls
End Sub

'�����߿�
Private Sub Option1_Click()
    Picture1.DrawWidth = 1
End Sub

Private Sub Option2_Click()
    Picture1.DrawWidth = 2
End Sub

Private Sub Option3_Click()
    Picture1.DrawWidth = 4
End Sub

Private Sub Option4_Click()
    Picture1.DrawWidth = 8
End Sub

Private Sub Form_Load()
    Picture1.Scale (0, 0)-(400, 400)
    flag = False
End Sub

Private Sub Picture1_MouseDown(Button As Integer, Shift As Integer, _
                               X As Single, Y As Single)
'��������갴��ʱ��ͼ��ʼ����¼��������
    flag = True
    x1 = X
    y1 = Y
End Sub

Private Sub Picture1_MouseMove(Button As Integer, Shift As Integer, _
                               X As Single, Y As Single)
'������Ǵ��ڻ�ͼ״̬���˳��ù���
'������ڻ�ͼ״̬�����㵽Ŀǰ������ڵ����ֱ��
'Ȼ�󽫵�ǰ������ڵ���Ϊ�µ����
    If flag = False Then
        Exit Sub
    End If
    If flag = True Then
        x2 = X
        y2 = Y
        Picture1.Line (x1, y1)-(x2, y2)
        x1 = x2
        y1 = y2
    End If
End Sub


Private Sub Picture1_MouseUp(Button As Integer, Shift As Integer, _
                             X As Single, Y As Single)
'���ͷ���갴��ʱ��ͼ����
    flag = False
End Sub
