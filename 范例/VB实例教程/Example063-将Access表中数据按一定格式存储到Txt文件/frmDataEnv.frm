VERSION 5.00
Object = "{00028C01-0000-0000-0000-000000000046}#1.0#0"; "DBGRID32.OCX"
Begin VB.Form frmDataEnv 
   Caption         =   "�ı��ļ�"
   ClientHeight    =   6330
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   7530
   LinkTopic       =   "Form1"
   ScaleHeight     =   6330
   ScaleWidth      =   7530
   StartUpPosition =   3  '����ȱʡ
   Begin VB.CommandButton Command1 
      Caption         =   "�洢���ı��ļ�"
      Height          =   495
      Left            =   5760
      TabIndex        =   1
      Top             =   5160
      Width           =   1695
   End
   Begin MSDBGrid.DBGrid DBGrid1 
      Align           =   1  'Align Top
      Bindings        =   "frmDataEnv.frx":0000
      Height          =   5055
      Left            =   0
      OleObjectBlob   =   "frmDataEnv.frx":0014
      TabIndex        =   0
      Top             =   0
      Width           =   7530
   End
   Begin VB.Data Data1 
      Align           =   2  'Align Bottom
      Caption         =   "Data1"
      Connect         =   "Access"
      DatabaseName    =   "D:\Microsoft Visual Studio\VB98\NWIND.MDB"
      DefaultCursorType=   0  'ȱʡ�α�
      DefaultType     =   2  'ʹ�� ODBC
      Exclusive       =   0   'False
      Height          =   615
      Left            =   0
      Options         =   0
      ReadOnly        =   0   'False
      RecordsetType   =   1  'Dynaset
      RecordSource    =   "select ProductID, ProductName, SupplierID, CategoryID, QuantityPerUnit from Products"
      Top             =   5715
      Width           =   7530
   End
End
Attribute VB_Name = "frmDataEnv"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
    Dim fld As dao.Field
    Open "c:\test.txt" For Output As 1
    For i = 0 To Data1.Recordset.Fields.Count - 1
        Print #1, Data1.Recordset.Fields(i).Name; ", ";
    Next
    Print #1, Chr(13)
    '�����ֶ����ƺ���
    Data1.Recordset.MoveFirst
    Do While Not Data1.Recordset.EOF
        For Each fld In Data1.Recordset.Fields
            Print #1, fld.Value; ", ";
            '������
        Next
        '��ѭ������ǰ��¼�������ֶε�ֵд���ļ�
        Print #1, Chr(13)
        Data1.Recordset.MoveNext
        '���뻻�з�����һ����¼����Ϊ��ǰ��¼
    Loop
    '��Do-Whileѡ��д�����м�¼
    Close #1   '�ر��ļ�
End Sub

