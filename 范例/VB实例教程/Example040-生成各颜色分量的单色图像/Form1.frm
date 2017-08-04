VERSION 5.00
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "Comdlg32.ocx"
Begin VB.Form Form1 
   Caption         =   "��ɫͼ"
   ClientHeight    =   4305
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   6210
   FillColor       =   &H00FFFFFF&
   LinkTopic       =   "Form1"
   ScaleHeight     =   287
   ScaleMode       =   3  'Pixel
   ScaleWidth      =   414
   StartUpPosition =   3  '����ȱʡ
   Begin MSComDlg.CommonDialog CmnDlg1 
      Left            =   2760
      Top             =   1800
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
      CancelError     =   -1  'True
   End
   Begin VB.CommandButton CmdB 
      Caption         =   "B����ͼ"
      Height          =   375
      Left            =   3360
      TabIndex        =   6
      Top             =   3600
      Width           =   1215
   End
   Begin VB.CommandButton CmdG 
      Caption         =   "G����ͼ"
      Height          =   375
      Left            =   2040
      TabIndex        =   5
      Top             =   3600
      Width           =   1215
   End
   Begin VB.CommandButton CmdSave 
      Caption         =   "���浥ɫͼ"
      Height          =   420
      Left            =   4680
      TabIndex        =   4
      Top             =   3600
      Width           =   1335
   End
   Begin VB.CommandButton CmdOpen 
      Caption         =   "��"
      Height          =   375
      Left            =   120
      TabIndex        =   3
      Top             =   3600
      Width           =   735
   End
   Begin VB.CommandButton CmdR 
      Caption         =   "R����ͼ"
      Height          =   375
      Left            =   960
      TabIndex        =   2
      Top             =   3600
      Width           =   975
   End
   Begin VB.PictureBox Picture2 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      FillColor       =   &H00FFFFFF&
      ForeColor       =   &H00FFFFFF&
      Height          =   3135
      Left            =   3240
      ScaleHeight     =   205
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   173
      TabIndex        =   1
      Top             =   360
      Width           =   2655
   End
   Begin VB.PictureBox Picture1 
      AutoSize        =   -1  'True
      Height          =   3120
      Left            =   120
      ScaleHeight     =   204
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
'R����ͼ
Private Sub CmdR_Click()
    Dim x0 As Integer           'X����
    Dim y0 As Integer           'Y����
    Dim c1 As Long              'Picture1��RGB��ɫ
    Dim c2 As Long              'Picture2��RGB��ɫ
    Dim r As Long               'R����
    Screen.MousePointer = 11
    For x0 = 0 To Picture1.Width - 1
    For y0 = 0 To Picture1.Height - 1
        c1 = Picture1.Point(x0, y0)
        r = (c1 And &HFF)
        c2 = r
        Picture2.PSet (x0, y0), RGB(c2, c2, c2)
        DoEvents
Next
    Next
    Screen.MousePointer = 0
End Sub
'G����ͼ
Private Sub CmdG_Click()
    Dim x0 As Integer           'X����
    Dim y0 As Integer           'Y����
    Dim c1 As Long              'Picture1��RGB��ɫ
    Dim c2 As Long              'Picture2��RGB��ɫ
    Dim g As Long               'G����
    Screen.MousePointer = 11
    For x0 = 0 To Picture1.Width - 1
    For y0 = 0 To Picture1.Height - 1
        c1 = Picture1.Point(x0, y0)
        g = (c1 And 65280) / 256
        c2 = g
        Picture2.PSet (x0, y0), RGB(c2, c2, c2)
        DoEvents
    Next
    Next
    Screen.MousePointer = 0

End Sub
'B����ͼ
Private Sub CmdB_Click()
    Dim x0 As Integer           'X����
    Dim y0 As Integer           'Y����
    Dim c1 As Long              'Picture1��RGB��ɫ
    Dim c2 As Long              'Picture2��RGB��ɫ
    Dim b As Long               'B����
    Screen.MousePointer = 11
    For x0 = 0 To Picture1.Width - 1
    For y0 = 0 To Picture1.Height - 1
        c1 = Picture1.Point(x0, y0)
        b = (c1 And &HFF0000) / 65536
        c2 = b
        Picture2.PSet (x0, y0), RGB(c2, c2, c2)
        DoEvents
    Next
    Next
    Screen.MousePointer = 0
End Sub

Private Sub CmdOpen_Click()
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
   On Error GoTo Err_handle
   CmnDlg1.DialogTitle = "����"
   CmnDlg1.Filter = ("λͼ�ļ�(*.bmp)|*.bmp")
   CmnDlg1.ShowSave
   SavePicture Picture1.Picture, CmnDlg1.FileName
Err_handle: Exit Sub
End Sub

