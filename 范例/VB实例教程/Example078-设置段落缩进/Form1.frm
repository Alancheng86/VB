VERSION 5.00
Object = "{3B7C8863-D78F-101B-B9B5-04021C009402}#1.2#0"; "RICHTX32.OCX"
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "comdlg32.ocx"
Begin VB.Form Form1 
   Caption         =   "�����ʽ"
   ClientHeight    =   3480
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   4680
   LinkTopic       =   "Form1"
   ScaleHeight     =   3480
   ScaleWidth      =   4680
   StartUpPosition =   3  '����ȱʡ
   Begin MSComDlg.CommonDialog CmnDialog1 
      Left            =   2160
      Top             =   1560
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin VB.CommandButton CmdSave 
      Caption         =   "�����ļ�"
      Height          =   375
      Left            =   3000
      TabIndex        =   3
      Top             =   3000
      Width           =   1215
   End
   Begin VB.CommandButton CmdSet 
      Caption         =   "���ö����ʽ"
      Height          =   375
      Left            =   1440
      TabIndex        =   2
      Top             =   3000
      Width           =   1335
   End
   Begin VB.CommandButton CmdOpen 
      Caption         =   "���ļ�"
      Height          =   375
      Left            =   120
      TabIndex        =   1
      Top             =   3000
      Width           =   1215
   End
   Begin RichTextLib.RichTextBox RichTextBox1 
      Height          =   2655
      Left            =   240
      TabIndex        =   0
      Top             =   120
      Width           =   4095
      _ExtentX        =   7223
      _ExtentY        =   4683
      _Version        =   393217
      Enabled         =   -1  'True
      TextRTF         =   $"Form1.frx":0000
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim filename As String
Private Sub CmdOpen_Click()
    On Error GoTo Err_Handle
    With CmnDialog1
            .MaxFileSize = 100
            .CancelError = True
            .Filter = "�ļ�����(*.rtf)|*.rtf"
            .DialogTitle = "��ѡ��һ��RTF��ʽ�ļ�"
            .InitDir = "C:\"
            .Flags = cdlOFNFileMustExist Or cdlOFNReadOnly
        End With
    CmnDialog1.ShowOpen
    filename = CmnDialog1.filename
    RichTextBox1.Text = ""
    If (Len(filename) > 0) Then
        RichTextBox1.LoadFile (filename)
    End If
    CmdSet.Enabled = True
    CmdSave.Enabled = True
    Exit Sub
Err_Handle:
    MsgBox Err.Description
    Exit Sub
End Sub

Private Sub CmdSave_Click()
    On Error GoTo Err_Handle
    RichTextBox1.SaveFile filename
    Exit Sub
Err_Handle:
    MsgBox Err.Description
    Exit Sub
End Sub

Private Sub CmdSet_Click()
    Dim tempfrm As New Form2
    tempfrm.Show 1
End Sub
