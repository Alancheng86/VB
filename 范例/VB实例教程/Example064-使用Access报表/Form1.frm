VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Access����"
   ClientHeight    =   2535
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   6090
   LinkTopic       =   "Form1"
   ScaleHeight     =   2535
   ScaleWidth      =   6090
   StartUpPosition =   3  '����ȱʡ
   Begin VB.CommandButton CmdReport 
      Caption         =   "�оٱ���"
      Height          =   495
      Left            =   4560
      TabIndex        =   5
      Top             =   840
      Width           =   1215
   End
   Begin VB.ComboBox Combo1 
      Height          =   300
      ItemData        =   "Form1.frx":0000
      Left            =   1320
      List            =   "Form1.frx":0002
      TabIndex        =   4
      Text            =   "Combo1"
      Top             =   960
      Width           =   2895
   End
   Begin VB.CommandButton CmdPrint 
      Caption         =   "��ӡ"
      Enabled         =   0   'False
      Height          =   375
      Left            =   4560
      TabIndex        =   3
      Top             =   1560
      Width           =   1095
   End
   Begin VB.TextBox Text1 
      Height          =   375
      Left            =   1320
      TabIndex        =   2
      Text            =   "D:\Microsoft Visual Studio\VB98\NWind.mdb"
      Top             =   120
      Width           =   3255
   End
   Begin VB.Label Label2 
      Caption         =   "����"
      Height          =   375
      Left            =   120
      TabIndex        =   1
      Top             =   960
      Width           =   855
   End
   Begin VB.Label Label1 
      Caption         =   "���ݿ⣺"
      Height          =   375
      Left            =   240
      TabIndex        =   0
      Top             =   240
      Width           =   855
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim MSAccess As Access.Application
Dim a As Access.Report
    '����Access.Application�������

Private Sub CmdPrint_Click()
'��ӡ����
    MSAccess.DoCmd.OpenReport Combo1.Text, acViewNormal
    '��ӡ����
    MsgBox "��" & Combo1.Text & _
            " ��ӡ���ʱ���� OK ��ť��"
    MSAccess.CloseCurrentDatabase
End Sub

Private Sub CmdReport_Click()
    MSAccess.CloseCurrentDatabase
    MSAccess.OpenCurrentDatabase (Text1.Text)
    '��Microsoft Access�д����ݿ�
    Dim rpt As Object
    For Each rpt In MSAccess.CurrentProject.AllReports
        Combo1.AddItem (rpt.Name)
    Next rpt
    CmdPrint.Enabled = True

End Sub

Private Sub Form_Load()
    Set MSAccess = New Access.Application
    MSAccess.OpenCurrentDatabase (Text1.Text)
End Sub
Private Sub Form_Unload(Cancel As Integer)
    Set MSAccess = Nothing
End Sub

