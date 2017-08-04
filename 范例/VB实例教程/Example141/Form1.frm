VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   3195
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   4680
   LinkTopic       =   "Form1"
   ScaleHeight     =   3195
   ScaleWidth      =   4680
   StartUpPosition =   3  '����ȱʡ
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Const ODBC_ADD_DSN = 1          ' Add data source
Private Const ODBC_CONFIG_DSN = 2       ' Configure (edit) data source
Private Const ODBC_REMOVE_DSN = 3       ' Remove data source
Private Const vbAPINull As Long = 0&    ' NULL Pointer

Private Declare Function SQLConfigDataSource Lib "ODBCCP32.DLL" _
                (ByVal hwndParent As Long, _
                ByVal fRequest As Long, _
                ByVal lpszDriver As String, _
                ByVal lpszAttributes As String) _
                As Long

Private Sub Form_Load()
    Dim intRet As Long
    intRet = SQLConfigDataSource(vbAPINull, ODBC_ADD_DSN, _
                        "Microsoft Access Driver (*.mdb)" + Chr$(0), _
                        "DSN=test;DBQ=D:\BIBLIO.MDB;DEFAULTDIR=D:\" + Chr$(0))
    '���Ҫ��ʾ�Ի�����ʹ��Me.Hwnd����vbAPINull
    
    If intRet Then
        MsgBox "DSN�����ɹ�"
    Else
        MsgBox "DSN����ʧ��"
    End If
End Sub

Private Sub Form_Unload(Cancel As Integer)
    Dim intRet As Long
    intRet = SQLConfigDataSource(vbAPINull, ODBC_REMOVE_DSN, _
                        "Microsoft Access Driver (*.mdb)" + Chr$(0), _
                        "DSN=test" + Chr$(0))
    If intRet Then
        MsgBox "DSNɾ���ɹ�"
    Else
        MsgBox "DSNɾ��ʧ��"
    End If
End Sub
