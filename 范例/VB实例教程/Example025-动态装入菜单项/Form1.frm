VERSION 5.00
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "comdlg32.ocx"
Begin VB.Form Form1 
   Caption         =   "��̬װ��˵���"
   ClientHeight    =   3195
   ClientLeft      =   165
   ClientTop       =   735
   ClientWidth     =   4680
   LinkTopic       =   "Form1"
   ScaleHeight     =   3195
   ScaleWidth      =   4680
   StartUpPosition =   3  '����ȱʡ
   Begin MSComDlg.CommonDialog CommonDialog1 
      Left            =   720
      Top             =   720
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin VB.Menu File 
      Caption         =   "�ļ�"
      Index           =   0
      Begin VB.Menu Open 
         Caption         =   "��"
         Index           =   0
      End
      Begin VB.Menu OpenedList 
         Caption         =   ""
         Index           =   0
         Visible         =   0   'False
      End
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim filenamearry(3) As String
'�������������洢����򿪵������ļ�������
Private Sub Form_Load()
    Load OpenedList(1)
    Load OpenedList(2)
    'װ�������˵���
    OpenedList(1).Visible = False
    OpenedList(2).Visible = False
    '�����������˵���
End Sub
Private Sub Form_Unload(Cancel As Integer)
    Unload OpenedList(1)
    Unload OpenedList(2)
    '���ڴ���ж���������˵���
End Sub

Private Sub Open_Click(Index As Integer)
    CommonDialog1.ShowOpen
    '��ʾOpen�Ի���
    filenamearry(2) = filenamearry(1)
    '��filenamearry(1)�洢��filenamearry(2)
    filenamearry(1) = filenamearry(0)
    '��filenamearry(0)�洢��filenamearry(1)
    filenamearry(0) = CommonDialog1.FileName
    '����ʱ�򿪵��ļ������ƴ洢��filenamearry(0)
    OpenedList(0).Caption = "&1" + filenamearry(0)
    OpenedList(0).Visible = True
    '��ʾ�ոմ򿪵��ļ�����
    If Len(filenamearry(2)) > 0 Then
        OpenedList(2).Caption = "&3" + filenamearry(2)
        OpenedList(2).Visible = True
    End If
    If Len(filenamearry(1)) > 0 Then
        OpenedList(1).Caption = "&2" + filenamearry(1)
        OpenedList(1).Visible = True
    End If
End Sub

Private Sub OpenedList_Click(Index As Integer)
Select Case Index
    Case 0
        MsgBox "���ļ�" + filenamearry(0), vbOKOnly, "��"
    Case 1
        MsgBox "���ļ�" + filenamearry(1), vbOKOnly, "��"
    Case 2
        MsgBox "���ļ�" + filenamearry(2), vbOKOnly, "��"
End Select
End Sub
