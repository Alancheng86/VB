VERSION 5.00
Begin VB.Form frmDataEnv 
   Caption         =   "ת��Access���ݿ�"
   ClientHeight    =   4200
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   4680
   LinkTopic       =   "Form1"
   ScaleHeight     =   4200
   ScaleWidth      =   4680
   StartUpPosition =   3  '����ȱʡ
   Begin VB.TextBox Text3 
      Height          =   375
      Left            =   240
      TabIndex        =   6
      Text            =   "Employees"
      Top             =   3000
      Width           =   4335
   End
   Begin VB.TextBox Text2 
      Height          =   375
      Left            =   120
      TabIndex        =   4
      Text            =   "D:\Microsoft Visual Studio\VB98\NWind.mdb"
      Top             =   1920
      Width           =   4335
   End
   Begin VB.TextBox Text1 
      Height          =   375
      Left            =   120
      TabIndex        =   2
      Text            =   "C:"
      Top             =   840
      Width           =   3855
   End
   Begin VB.CommandButton Command1 
      Caption         =   "ת��"
      Height          =   375
      Left            =   2760
      TabIndex        =   0
      Top             =   3600
      Width           =   1815
   End
   Begin VB.Label Label3 
      Caption         =   "ת���������ƣ�"
      Height          =   375
      Left            =   120
      TabIndex        =   5
      Top             =   2400
      Width           =   1335
   End
   Begin VB.Label Label2 
      Caption         =   "Դ�ļ�·����"
      Height          =   255
      Left            =   120
      TabIndex        =   3
      Top             =   1440
      Width           =   1215
   End
   Begin VB.Label Label1 
      Caption         =   "���·��"
      Height          =   375
      Left            =   120
      TabIndex        =   1
      Top             =   240
      Width           =   1575
   End
End
Attribute VB_Name = "frmDataEnv"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
     Dim acApp As Access.Application
     Dim strSourcePath As String
     Dim strReportPath As String
     Dim strObjectName As String
     strSourcePath = Text2.Text
     strReportPath = Text1.Text
     strObjectName = Text3.Text
     Set acApp = GetObject(strSourcePath, "Access.Application")
     '�����ݿ�
     acApp.DoCmd.OutputTo acOutputTable, strObjectName, acFormatXLS, strReportPath
    'ת��ָ����ΪExcel�ļ����洢��ָ����Ŀ¼
    acApp.CloseCurrentDatabase
    Set acApp = Nothing
End Sub
