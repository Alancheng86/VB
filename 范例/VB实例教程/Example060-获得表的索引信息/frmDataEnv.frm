VERSION 5.00
Begin VB.Form frmDataEnv 
   Caption         =   "������Ϣ"
   ClientHeight    =   5190
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   4590
   LinkTopic       =   "Form1"
   ScaleHeight     =   5190
   ScaleWidth      =   4590
   StartUpPosition =   3  '����ȱʡ
   Begin VB.TextBox Text1 
      Height          =   4935
      Left            =   120
      MultiLine       =   -1  'True
      ScrollBars      =   3  'Both
      TabIndex        =   0
      Text            =   "frmDataEnv.frx":0000
      Top             =   120
      Width           =   4335
   End
End
Attribute VB_Name = "frmDataEnv"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Load()
    Dim cn As ADODB.Connection
    Dim rsSchema As ADODB.Recordset
    Dim fld As ADODB.Field
    Dim rCriteria As Variant

    Set cn = New ADODB.Connection
    
    With cn
        .Provider = "Microsoft.Jet.OLEDB.4.0"
        .CursorLocation = adUseClient
        .ConnectionString = "Data Source=D:\Microsoft Visual Studio\VB98\NWIND.MDB"
        .Open
    End With

    rCriteria = Array(Empty, Empty, Empty, Empty, "employees")
    
    Set rsSchema = cn.OpenSchema(adSchemaIndexes, rCriteria)
    
    Me.Text1.Text = ""
    Me.Text1.Text = Me.Text1.Text + "Index Count: " & Str(rsSchema.RecordCount) + Chr(13) + Chr(10)
    'rsSchema.RecordCount����������Ŀ
    While Not rsSchema.EOF
    'ʹ��While�����ʾÿ����������Ϣ
       Me.Text1.Text = Me.Text1.Text + "==============================" + Chr(13) + Chr(10)
       '��ʾ==================������
       For Each fld In rsSchema.Fields
       '��ʾ��ǰ�����и��������ƺ���Ӧ������ֵ
          Me.Text1.Text = Me.Text1.Text + fld.Name + ":"
          'fld.NameΪ��������������
          '���´����������ֵ���������ʾ
          If IsNull(fld.Value) Then
              Me.Text1.Text = Me.Text1.Text + "Null" + Chr(13) + Chr(10)
              '���ΪNullֵ����Text1����ʾNull
          Else
              If VarType(fld.Value) = vbBoolean Then
                  If fld.Value = True Then
                      Me.Text1.Text = Me.Text1.Text + "True" + Chr(13) + Chr(10)
                      '���ΪTrue����ʾTrue
                  Else
                      Me.Text1.Text = Me.Text1.Text + "False" + Chr(13) + Chr(10)
                      '���ΪFalse����ʾFalse
                  End If
              ElseIf VarType(fld.Value) = vbString Then
                  Me.Text1.Text = Me.Text1.Text + fld.Value + Chr(13) + Chr(10)
                  '���Ϊ�ַ�������ֱ����ʾ
              Else
                  Me.Text1.Text = Me.Text1.Text + Str(fld.Value) + Chr(13) + Chr(10)
                  '���Ϊ����������ת��Ϊ�ַ����ͺ���ʾ

              End If
          End If
          Me.Text1.Text = Me.Text1.Text + "--------------------------------" + Chr(13) + Chr(10)
       Next
       rsSchema.MoveNext
    Wend
    
    rsSchema.Close
    Set rsSchema = Nothing
    cn.Close
    Set cn = Nothing
    Set fld = Nothing
End Sub
