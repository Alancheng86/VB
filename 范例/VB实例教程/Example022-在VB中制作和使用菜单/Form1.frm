VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "�˵�"
   ClientHeight    =   3195
   ClientLeft      =   165
   ClientTop       =   735
   ClientWidth     =   4680
   LinkTopic       =   "Form1"
   ScaleHeight     =   3195
   ScaleWidth      =   4680
   StartUpPosition =   3  '����ȱʡ
   Begin VB.TextBox Text1 
      Height          =   2535
      Left            =   120
      MultiLine       =   -1  'True
      ScrollBars      =   3  'Both
      TabIndex        =   0
      Text            =   "Form1.frx":0000
      Top             =   360
      Width           =   4335
   End
   Begin VB.Menu Menu_Edit 
      Caption         =   "�༭"
      Begin VB.Menu Menu_Edit_Copy 
         Caption         =   "����"
         Shortcut        =   ^C
      End
      Begin VB.Menu Menu_Edit_Paste 
         Caption         =   "ճ��"
         Shortcut        =   ^V
      End
      Begin VB.Menu Menu_Edit_Cut 
         Caption         =   "����"
         Shortcut        =   ^X
      End
      Begin VB.Menu Menu_Edit_Del 
         Caption         =   "ɾ��"
      End
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Load()
    Clipboard.Clear
    '��ռ�����
End Sub

Private Sub Menu_Edit_Copy_Click()
    Clipboard.SetText Form1.Text1.SelText, 1
    '�ѵ�ǰѡ�����ݸ��Ƶ���������
End Sub

Private Sub Menu_Edit_Cut_Click()
    Clipboard.SetText Form1.Text1.SelText, 1
    '�ѵ�ǰѡ�����ݸ��Ƶ���������
    Form1.Text1.SelText = ""
    'ɾ��ѡ������
End Sub

Private Sub Menu_Edit_Del_Click()
'ͨ������SelText����ɾ��ѡ������
    Form1.Text1.SelText = ""
End Sub

Private Sub Menu_Edit_Paste_Click()
    i = Form1.Text1.SelStart
    str1 = Mid(Form1.Text1.Text, 1, i)
    str2 = Mid(Form1.Text1.Text, _
           Form1.Text1.SelStart + 1, _
           Len(Form1.Text1) - Len(str1))
    Form1.Text1 = str1 & Clipboard.GetText & str2
    '�Ѽ������ϵ�����ճ������ǰλ�ô�
End Sub
