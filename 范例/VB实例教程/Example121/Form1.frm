VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "����Word"
   ClientHeight    =   3015
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   2805
   LinkTopic       =   "Form1"
   ScaleHeight     =   3015
   ScaleWidth      =   2805
   StartUpPosition =   3  '����ȱʡ
   Begin VB.CommandButton Command2 
      Caption         =   "����ͳ��"
      Height          =   375
      Left            =   1560
      TabIndex        =   2
      Top             =   2520
      Width           =   1095
   End
   Begin VB.CommandButton Command1 
      Caption         =   "ƴд���"
      Height          =   375
      Left            =   120
      TabIndex        =   1
      Top             =   2520
      Width           =   1215
   End
   Begin VB.TextBox Text1 
      Height          =   2295
      Left            =   120
      MultiLine       =   -1  'True
      TabIndex        =   0
      Text            =   "Form1.frx":0000
      Top             =   120
      Width           =   2535
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Dim Doc As New Document

'ƴд���
Private Sub command1_click()
    Form1.Caption = "ƴд���"
    Doc.Range.Text = Text1
    'ȷ����Χ
    Doc.Application.Visible = True
    '��Word��Ϊ�ɼ�
    AppActivate Doc.Application.Caption
    '����Word
     Doc.Range.CheckSpelling
    'ƴд���
     Text1 = Doc.Range.Text
     Text1 = Left(Text1, Len(Text1) - 1)
     'Doc.Application.Visible = False
End Sub

'ͳ�Ƶ�����
Private Sub Command2_Click()
     Dim Dlg As Word.Dialog
     Doc.Range = Text1.Text
     Set Dlg = Doc.Application.Dialogs(wdDialogDocumentStatistics)
     Dlg.Execute
     'ͳ�Ƶ��ʺ��ַ�
     Form1.Caption = "������:" + Str(Dlg.Words) & "��" & Str(Dlg.Characters) + "�ַ�"
     '��ʾͳ�ƽ��
     'Doc.Application.Visible = False
End Sub

Private Sub Form_Load()
     Text1.Text = ""
End Sub

Private Sub Form_Unload(Cancel As Integer)
     If Doc.Application.Visible Then
         Doc.Close savechanges:=False
         '�ر��ļ�
     Else
         Doc.Application.Quit savechanges:=False
         '�ر�Word
     End If
End Sub
