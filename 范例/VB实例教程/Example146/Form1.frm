VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "�����򡱲˵�"
   ClientHeight    =   3120
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   2520
   LinkTopic       =   "Form1"
   ScaleHeight     =   3120
   ScaleWidth      =   2520
   StartUpPosition =   3  '����ȱʡ
   Begin VB.CommandButton Command2 
      Caption         =   "�˳�"
      Height          =   375
      Left            =   1440
      TabIndex        =   2
      Top             =   2640
      Width           =   975
   End
   Begin VB.CommandButton Command1 
      Caption         =   "ȷ��"
      Height          =   375
      Left            =   120
      TabIndex        =   1
      Top             =   2640
      Width           =   975
   End
   Begin VB.ListBox List1 
      Height          =   2370
      Left            =   120
      Style           =   1  'Checkbox
      TabIndex        =   0
      Top             =   120
      Width           =   2295
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Declare Function GetFileAttributes Lib "kernel32" _
                Alias "GetFileAttributesA" _
                ( _
                ByVal lpfilename As String _
                ) As Long
    
Private Declare Function SetFileAttributes Lib "kernel32" _
                Alias "SetFileAttributesA" _
                ( _
                ByVal lpfilename As String, _
                ByVal dwFileAttributes As Long _
                ) As Long
Private Declare Function GetWindowsDirectory Lib "kernel32" _
                Alias "GetWindowsDirectoryA" _
                ( _
                ByVal lpBuffer As String, _
                ByVal nsize As Long _
                ) As Long

Dim i As Integer
Dim myPath As String
Dim myName As String
'��������

Private Sub Command1_Click()
    myPath = "C:\Documents and Settings\All Users\����ʼ���˵�\����\"
    '������(programs)�ļ���·��
    For i = 0 To (Me.List1.ListCount - 1)
        If Me.List1.Selected(i) = False Then
            SetFileAttributes myPath + Me.List1.list(i), vbHidden
        Else
            SetFileAttributes myPath + Me.List1.list(i), vbNormal
        End If
     Next i
End Sub

Private Sub Command2_Click()
    Unload Me
    End
End Sub

Private Sub Form_Load()
    i = 0
    myPath = "C:\Documents and Settings\All Users\����ʼ���˵�\����\"
    '������(programs)�ļ���·��
    myName = Dir(myPath, vbDirectory + vbNormal + vbHidden + vbArchive + _
                vbReadOnly + vbSystem)
                'Retrieve the first entry.
    Do While myName <> ""   ' Start the loop.
            If myName <> "." And myName <> ".." Then
                Me.List1.AddItem myName
                Me.List1.Selected(i) = True
                If (GetFileAttributes(myPath + myName) And vbHidden) Then
                    Me.List1.Selected(i) = False
                    '�õ��ļ����ļ������ԣ���Ϊ������ȡ����ѡ
                End If
                i = i + 1
            End If
       myName = Dir()   ' Get next entry.
    Loop
End Sub
