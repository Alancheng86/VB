VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   5880
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   5880
   LinkTopic       =   "Form1"
   Picture         =   "Form1.frx":0000
   ScaleHeight     =   5880
   ScaleWidth      =   5880
   StartUpPosition =   3  '����ȱʡ
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub Form_Click()
'�������������SetWindow�ӹ������ô�����״
    SetWindow Form1
    '���ô�����״
End Sub

Private Sub Form_DblClick()
'˫�����������Reset�ӹ��ָ̻�������״
    Reset Form1
    '�����ڻָ�Ϊ����
End Sub
