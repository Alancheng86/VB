VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "mscomctl.ocx"
Begin VB.Form Form1 
   Caption         =   "�ļ������"
   ClientHeight    =   6045
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   7710
   LinkTopic       =   "Form1"
   ScaleHeight     =   6045
   ScaleWidth      =   7710
   StartUpPosition =   3  '����ȱʡ
   Begin MSComctlLib.ImageList ImageList1 
      Left            =   2400
      Top             =   2040
      _ExtentX        =   1005
      _ExtentY        =   1005
      BackColor       =   -2147483643
      ImageWidth      =   16
      ImageHeight     =   16
      MaskColor       =   12632256
      _Version        =   393216
      BeginProperty Images {2C247F25-8591-11D1-B16A-00C0F0283628} 
         NumListImages   =   1
         BeginProperty ListImage1 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Form1.frx":0000
            Key             =   ""
         EndProperty
      EndProperty
   End
   Begin VB.DriveListBox Drive1 
      Height          =   300
      Left            =   240
      TabIndex        =   2
      Top             =   120
      Width           =   2175
   End
   Begin VB.DirListBox Dir1 
      Height          =   5130
      Left            =   240
      TabIndex        =   0
      Top             =   600
      Width           =   2175
   End
   Begin VB.FileListBox File1 
      Height          =   1350
      Left            =   2400
      Pattern         =   "*.exe"
      TabIndex        =   1
      Top             =   2880
      Visible         =   0   'False
      Width           =   375
   End
   Begin MSComctlLib.ListView ListView1 
      Height          =   5775
      Left            =   2880
      TabIndex        =   3
      Top             =   120
      Width           =   4575
      _ExtentX        =   8070
      _ExtentY        =   10186
      View            =   3
      LabelWrap       =   0   'False
      HideSelection   =   -1  'True
      _Version        =   393217
      ForeColor       =   -2147483640
      BackColor       =   -2147483643
      BorderStyle     =   1
      Appearance      =   1
      NumItems        =   0
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim clmX As ColumnHeader    '������
Dim itmX As ListItem        '�б���Ŀ
Dim Counter As Long         '������
Dim Fname As String         '��ȡ�ļ���
Dim CurrentDir As String
Private Sub Form_Load()
    Me.Left = (Screen.Width - Me.Width) / 2
    Me.Top = (Screen.Height - Me.Height) / 2
    '����λ������Ļ�м�
    '���´���ΪListView1��ӱ�����
    ListView1.ColumnHeaders.Add , , "�ļ�����", ListView1.Width / 3, 0
    '��һ����������"�ļ�����",����ΪListView1��ȵ�����֮һ , ���������
    Set clmX = ListView1.ColumnHeaders.Add(, , "���", ListView1.Width / 6, 2)
    '�ڶ�����������"���"
    Set clmX = ListView1.ColumnHeaders.Add(, , "�ļ���С", ListView1.Width / 4, 1)
    '��������������"�ļ���С"
    Set clmX = ListView1.ColumnHeaders.Add(, , "����ʱ��", ListView1.Width / 3, 0)
    '���ĸ���������"����ʱ��"
    ListView1.SmallIcons = ImageList1
    '����ImageList1�е�ͼ��
    
    For Counter = 0 To File1.ListCount - 1
        Fname = File1.List(Counter)
        Set itmX = ListView1.ListItems.Add(, , Fname)
        '����ļ���
        itmX.SubItems(1) = CStr(Counter + 1) + "/" + CStr(File1.ListCount)
        itmX.SubItems(2) = CStr(FileLen(CurrentDir & Fname))
        itmX.SmallIcon = 1
        itmX.SubItems(3) = Format(FileDateTime(CurrentDir + Fname), "HH:MM YYYY/MMMM/DD")
     Next Counter
      '���ListView�ĸ�����Ŀ
    
End Sub

Private Static Sub Drive1_Change()
    On Error GoTo IFerr '���ش���
    Dir1.Path = Drive1.Drive
    '����Ŀ¼�б��
    Exit Sub
IFerr:                 '������̴���
    MsgBox ("��ȷ���������Ƿ�׼���û��ߴ����Ѿ�������!"), vbOKOnly + vbExclamation
    '����ע��Ի���
    Drive1.Drive = Dir1.Path
    '�����������ı�
End Sub

Private Static Sub Dir1_Change()
    File1.Path = Dir1.Path
    '�����ļ��б��
    If Right(Dir1.Path, 1) <> "\" Then
        CurrentDir = Dir1.Path & "\"
    Else
        CurrentDir = Dir1.Path
    End If
    '����ѡ����Ŀ¼����
    ListView1.ListItems.Clear
    '������ڵ��б���Ŀ
    For Counter = 0 To File1.ListCount - 1
        Fname = File1.List(Counter)
        Set itmX = ListView1.ListItems.Add(, , Fname)
        '����ļ���
        itmX.SubItems(1) = CStr(Counter + 1) + "/" + CStr(File1.ListCount)
        itmX.SubItems(2) = CStr(FileLen(CurrentDir & Fname))
        itmX.SmallIcon = 1
        itmX.SubItems(3) = Format(FileDateTime(CurrentDir + Fname), "HH:MM YYYY/MMMM/DD")
     Next Counter
      '���ListView�ĸ�����Ŀ
End Sub
