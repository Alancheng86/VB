VERSION 5.00
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "Comdlg32.ocx"
Begin VB.Form Form1 
   Caption         =   "��ɫ��Ҷ�"
   ClientHeight    =   4665
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   6345
   FillColor       =   &H00FFFFFF&
   LinkTopic       =   "Form1"
   ScaleHeight     =   311
   ScaleMode       =   3  'Pixel
   ScaleWidth      =   423
   StartUpPosition =   3  '����ȱʡ
   Begin VB.CommandButton CmdGray 
      Caption         =   "ת��"
      Height          =   375
      Left            =   1560
      TabIndex        =   4
      Top             =   4200
      Width           =   1095
   End
   Begin VB.CommandButton CmdSave 
      Caption         =   "����"
      Height          =   375
      Left            =   4440
      TabIndex        =   3
      Top             =   4200
      Width           =   855
   End
   Begin MSComDlg.CommonDialog CmnDlg1 
      Left            =   2040
      Top             =   1680
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
      CancelError     =   -1  'True
   End
   Begin VB.CommandButton CmdOpen 
      Caption         =   "��"
      Height          =   375
      Left            =   120
      TabIndex        =   2
      Top             =   4200
      Width           =   855
   End
   Begin VB.PictureBox Picture2 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      FillColor       =   &H00FFFFFF&
      ForeColor       =   &H00FFFFFF&
      Height          =   3615
      Left            =   3240
      ScaleHeight     =   237
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   173
      TabIndex        =   1
      Top             =   360
      Width           =   2655
   End
   Begin VB.PictureBox Picture1 
      AutoSize        =   -1  'True
      Height          =   3600
      Left            =   120
      ScaleHeight     =   236
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   171
      TabIndex        =   0
      Top             =   360
      Width           =   2625
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub CmdGray_Click()
'ת��Ϊ�Ҷ�ͼ��
    Dim red As Integer
    Dim green As Integer
    Dim blue As Integer
    Dim c As Long
    Dim graycolor As Long
    Dim x0 As Integer
    Dim y0 As Integer
    For x0 = 0 To Picture1.Width
    For y0 = 0 To Picture1.Height
        c = Picture1.Point(x0, y0)
        red = (c And &HFF)
        green = (c And 62580) / 256
        blue = (c And &HFF00) / 65536
        graycolor = (red + green + blue) / 3
        Picture2.PSet (x0, y0), RGB(graycolor, graycolor, graycolor)
        DoEvents
    Next
    Next
End Sub

Private Sub CmdOpen_Click()
'���ļ�����ʾ��Picture1��
   On Error GoTo Err_handle
   CmnDlg1.DialogTitle = "��"
   CmnDlg1.ShowOpen
   Picture1.Picture = LoadPicture(CmnDlg1.FileName)
   Picture2.Width = Picture1.Width
   Picture2.Height = Picture1.Height
   Exit Sub
Err_handle:   Exit Sub
End Sub

Private Sub CmdSave_Click()
'����ת�����ͼ��
   On Error GoTo Err_handle
   CmnDlg1.DialogTitle = "����"
   CmnDlg1.Filter = ("λͼ�ļ�(*.bmp)|*.bmp")
   CmnDlg1.ShowSave
   SavePicture Picture2.Image, CmnDlg1.FileName
Err_handle:   MsgBox Err.Description, vbOKOnly
              Exit Sub
End Sub
