VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "������"
   ClientHeight    =   2535
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   4395
   LinkTopic       =   "Form1"
   ScaleHeight     =   2535
   ScaleWidth      =   4395
   StartUpPosition =   3  '����ȱʡ
   Begin VB.ComboBox Combo1 
      Height          =   300
      Left            =   120
      Sorted          =   -1  'True
      TabIndex        =   0
      Top             =   360
      Width           =   3735
   End
   Begin VB.Label Label1 
      Caption         =   "��ʱ��ǩ��������ý��㣬ʹ��Ͽ��ܹ�ʧȥ���㣬����ʧȥ����ʱ������Ч�Լ��"
      Height          =   855
      Left            =   1080
      TabIndex        =   1
      Top             =   1200
      Width           =   1935
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Combo1_Validate(Cancel As Boolean)
   Dim temp As Boolean
    For i = 0 To Combo1.ListCount - 1
        If Combo1.List(i) = Combo1.Text Then
            temp = True
        Else: temp = False
        End If
     Next
        
    If temp = False Then
        MsgBox "��������ݲ����б��У����������룡", vbExclamation + vbOKOnly, "���ݴ���"
        Combo1.SetFocus
        Combo1.SelStart = 0
        Combo1.SelLength = Len(Combo1.Text)
    End If
End Sub

Private Sub Form_Load()
'����б�
    Combo1.AddItem "����", 0
    Combo1.AddItem "�Ա�", 1
    Combo1.AddItem "�꼶", 2
    Combo1.AddItem "����", 3
    Combo1.AddItem "������ò", 4
    Combo1.AddItem "��������", 5
End Sub
