VERSION 5.00
Object = "{3B7C8863-D78F-101B-B9B5-04021C009402}#1.2#0"; "RICHTX32.OCX"
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "comdlg32.ocx"
Begin VB.Form Form1 
   Caption         =   "������"
   ClientHeight    =   2865
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   4230
   LinkTopic       =   "Form1"
   ScaleHeight     =   2865
   ScaleWidth      =   4230
   StartUpPosition =   3  '����ȱʡ
   Begin RichTextLib.RichTextBox RichTextBox1 
      Height          =   2175
      Left            =   120
      TabIndex        =   1
      Top             =   120
      Width           =   3855
      _ExtentX        =   6800
      _ExtentY        =   3836
      _Version        =   393217
      Enabled         =   -1  'True
      TextRTF         =   $"Form1.frx":0000
   End
   Begin MSComDlg.CommonDialog CommonDialog1 
      Left            =   3120
      Top             =   2400
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
      CancelError     =   -1  'True
   End
   Begin VB.CommandButton Command1 
      Caption         =   "���ļ�"
      Height          =   375
      Left            =   480
      TabIndex        =   0
      Top             =   2400
      Width           =   2055
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
On Error GoTo Err_Handle
    Dim i As Integer
    'i�洢�ո�λ��
    Dim z As Integer
    'z�洢���ҵ���ʼλ��
    Dim FileNames() As String
    'FileNames����洢���ֺ���ļ�Ŀ¼���ļ�����
    Dim y As Integer
    z = 1
    y = 0
    
    CommonDialog1.FileName = ""
    CommonDialog1.Filter = "RTF Files|*.rtf"
    CommonDialog1.Flags = cdlOFNALLOWMULTISELECT
    '����CommonDialog1�ؼ�����
    CommonDialog1.ShowOpen
    '��ʾ�򿪶Ի���
    CommonDialog1.FileName = CommonDialog1.FileName & Chr(32)
    '��CommonDialog1��FileName����ֵ������ӿո�
    
    For i = 1 To Len(CommonDialog1.FileName)
        i = InStr(z, CommonDialog1.FileName, Chr(32))
        '����iΪFileName����ֵ�пո��λ��
            If i = 0 Then Exit For
                ReDim Preserve FileNames(y)
                FileNames(y) = Mid(CommonDialog1.FileName, z, i - z)
                '��FileName�����Կո���Ϊ���ֱ�־
                '�ֳ����ɲ��ִ洢��FileNames����
                z = i + 1
                y = y + 1
    Next

    If y >= 2 Then
        For i = 1 To y - 1
            Dim tempfrm As Form
            Set tempfrm = New Form2
            tempfrm.Show
            tempfrm.RichTextBox1.LoadFile (FileNames(0) + FileNames(i))
        Next
   Else
       Form1.RichTextBox1.LoadFile (FileNames(0))
   End If
   '���ֻѡ����һ���ļ���ֱ����Form1����ʾ���ļ�
   '���ѡ���˶���ļ�����3��
   '�򴴽�3��Form2�����ʵ����������ʾ�򿪵��ļ�������
   Exit Sub
Err_Handle:
   MsgBox Err.Description
   Exit Sub
End Sub
