VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Recycle"
   ClientHeight    =   1710
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   4500
   LinkTopic       =   "Form1"
   ScaleHeight     =   1710
   ScaleWidth      =   4500
   StartUpPosition =   3  '����ȱʡ
   Begin VB.DriveListBox Drive1 
      Height          =   300
      Left            =   120
      TabIndex        =   4
      Top             =   120
      Width           =   2295
   End
   Begin VB.TextBox Text_Space 
      Height          =   375
      Left            =   960
      TabIndex        =   3
      Text            =   "Text_Space"
      Top             =   1080
      Width           =   3495
   End
   Begin VB.TextBox Text_Count 
      Height          =   375
      Left            =   960
      TabIndex        =   2
      Text            =   "Text_Count"
      Top             =   600
      Width           =   3495
   End
   Begin VB.Label Label_Space 
      AutoSize        =   -1  'True
      Caption         =   "ռ�ÿռ�:"
      Height          =   180
      Left            =   120
      TabIndex        =   1
      Top             =   1200
      Width           =   810
   End
   Begin VB.Label Label_Count 
      AutoSize        =   -1  'True
      Caption         =   "������Ŀ:"
      Height          =   180
      Left            =   120
      TabIndex        =   0
      Top             =   720
      Width           =   810
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Type ULARGE_INTEGER
    LowPart As Long
    HighPart As Long
End Type

Private Type SHQUERYRBINFO
    cbSize As Long
    i64Size As ULARGE_INTEGER
    i64NumItems As ULARGE_INTEGER
End Type

Private Declare Function SHQueryRecycleBin Lib "shell32.dll" _
                Alias "SHQueryRecycleBinA" _
                (ByVal pszRootPath As String, _
                pSHQueryRBInfo As SHQUERYRBINFO) _
                As Long

Private Sub Drive1_Change()
    Dim rbinfo As SHQUERYRBINFO '����վ����Ϣ
    Dim result As Long ' ����ֵ
    
    rbinfo.cbSize = Len(rbinfo)
    '��ʼ�� rbinfo �Ĵ�С
    Dim drive As String
    drive = Left(Me.Drive1.drive, 2) + "\"
    result = SHQueryRecycleBin(drive, rbinfo)
    '��ѯ����վ������
    
    If (rbinfo.i64NumItems.LowPart And &H80000000) = &H80000000 Or _
        rbinfo.i64NumItems.HighPart > 0 Then
        Me.Text_Count.Text = "����վ���г���2,147,483,647������"
    Else
        Me.Text_Count.Text = "����վ�а���" + _
                        Str(rbinfo.i64NumItems.LowPart) + "������"
    End If
    '��ʾ����վ��Ŀǰ�ж��ٶ���
    
    If (rbinfo.i64Size.LowPart And &H80000000) = &H80000000 Or _
        rbinfo.i64Size.HighPart > 0 Then
        Me.Text_Space.Text = "����վ���ÿռ䳬��2,147,483,647�ֽ�"
    Else
        Me.Text_Space.Text = "����վ���ÿռ�" + _
                            Str(rbinfo.i64Size.LowPart) + "�ֽ�"
    End If
    '��ʾ����վ�еĶ���ռ�˶��ٿռ�
End Sub

Private Sub Form_Load()
    Drive1_Change
End Sub
