VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "�򵥵��ļ������"
   ClientHeight    =   4605
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   6180
   LinkTopic       =   "Form1"
   ScaleHeight     =   4605
   ScaleWidth      =   6180
   StartUpPosition =   3  '����ȱʡ
   Begin VB.FileListBox File1 
      Height          =   4230
      Left            =   2160
      Pattern         =   "*.exe"
      TabIndex        =   2
      Top             =   120
      Width           =   3735
   End
   Begin VB.DirListBox Dir1 
      Height          =   3660
      Left            =   0
      TabIndex        =   1
      Top             =   600
      Width           =   2055
   End
   Begin VB.DriveListBox Drive1 
      Height          =   300
      Left            =   0
      TabIndex        =   0
      Top             =   120
      Width           =   2055
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Dir1_Change()
'��Ŀ¼�����ı�ʱʹFile1Ҳ��֮�ı�
'�Ա���ʾ��Ŀ¼�е��ļ�
    File1.Path = Me.Dir1.Path
End Sub

Private Sub Drive1_Change()
'�������������ı�ʱʹDir1���䱣��һ��
On Error GoTo IFerr    '���ش���
Dir1.Path = Drive1.Drive
Exit Sub
IFerr:                 '������̴���
    MsgBox "��ȷ���������Ƿ�׼���û��ߴ����Ѿ�������!", _
            vbOKOnly + vbExclamation
    Drive1.Drive = Dir1.Path  '�����������ı�
    Exit Sub
End Sub


