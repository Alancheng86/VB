VERSION 5.00
Begin VB.Form frmDataEnv 
   Caption         =   "��������"
   ClientHeight    =   3675
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   5685
   LinkTopic       =   "Form1"
   ScaleHeight     =   3675
   ScaleWidth      =   5685
   StartUpPosition =   3  '����ȱʡ
   Begin VB.CommandButton Command1 
      Caption         =   "��������"
      Height          =   495
      Left            =   3720
      TabIndex        =   6
      Top             =   2640
      Width           =   1695
   End
   Begin VB.TextBox Text3 
      Height          =   375
      IMEMode         =   3  'DISABLE
      Left            =   1440
      PasswordChar    =   "*"
      TabIndex        =   5
      Text            =   "Text3"
      Top             =   1440
      Width           =   3855
   End
   Begin VB.TextBox Text2 
      Height          =   375
      IMEMode         =   3  'DISABLE
      Left            =   1440
      PasswordChar    =   "*"
      TabIndex        =   3
      Text            =   "Text2"
      Top             =   840
      Width           =   3855
   End
   Begin VB.TextBox Text1 
      Height          =   495
      Left            =   1440
      TabIndex        =   1
      Text            =   "D:\Microsoft Visual Studio\VB98\BIBLIO.MDB"
      Top             =   120
      Width           =   3855
   End
   Begin VB.Label Label3 
      Caption         =   "ȷ�����룺"
      Height          =   375
      Left            =   240
      TabIndex        =   4
      Top             =   1440
      Width           =   975
   End
   Begin VB.Label Label2 
      Caption         =   "���룺"
      Height          =   375
      Left            =   240
      TabIndex        =   2
      Top             =   960
      Width           =   975
   End
   Begin VB.Label Label1 
      Caption         =   "���ݿ⣺"
      Height          =   375
      Left            =   240
      TabIndex        =   0
      Top             =   120
      Width           =   975
   End
End
Attribute VB_Name = "frmDataEnv"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
    Dim DBEngine1 As New DAO.DBEngine
    If Text2.Text <> Text3.Text Then
        MsgBox "������������벻��ͬ�����������ã�"
        Exit Sub
    End If
   If Dir("c:\New.mdb") <> "" Then _
      Kill "c:\New.mdb"
   'ȷ�����ݿ�New.mdb������

    DBEngine1.CompactDatabase Text1.Text, _
      "c:\New.mdb", , , ";pwd=" + Text2.Text + ";"
  ' �������ݿ�������γ��µ����ݿⱣ����c:\New.mdb"

   Kill Text1.Text
   'ɾ��Դ���ݿ�

   Name "c:\New.mdb" As Text1.Text
   '��ѹ��������ݿ���������Դ���ݿ�
End Sub
