VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "��Բ�δ���"
   ClientHeight    =   4080
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   4860
   FillStyle       =   0  'Solid
   LinkTopic       =   "Form1"
   Picture         =   "Form1.frx":0000
   ScaleHeight     =   4080
   ScaleWidth      =   4860
   StartUpPosition =   3  '����ȱʡ
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Declare Function CreateEllipticRgn Lib "gdi32" _
( _
    ByVal X1 As Long, ByVal Y1 As Long, _
    ByVal X2 As Long, ByVal Y2 As Long _
    ) As Long
'����������Բ�������API����
Private Declare Function CreateRectRgn Lib "gdi32" _
( _
    ByVal X1 As Long, ByVal Y1 As Long, _
    ByVal X2 As Long, ByVal Y2 As Long _
    ) As Long
'�����������������API����
'�ú��������������ڻָ�Ϊ����

Private Declare Function SetWindowRgn Lib "user32" _
( _
    ByVal hWnd As Long, ByVal hRgn As Long, _
    ByVal bRedraw As Boolean _
    ) As Long
'�������ô�����״��API����
Dim hRgnC As Long
Dim hRgnR As Long
'�������������洢��Բ������;�������ľ��


Private Sub Form_Click()
    'hRgnC = CreateEllipticRgn(10, 10, 200, 200)
    'hRgnC = CreateEllipticRgn(0, 0, 150, 200)
    hRgnC = CreateEllipticRgn(20, 0, 500, 500)
    '������Բ������
    SetWindowRgn Me.hWnd, hRgnC, True
    '���ô���Ϊ��Բ��
End Sub

Private Sub Form_DblClick()
    hRgnR = CreateRectRgn(0, 0, Me.Width, Me.Height)
    '������������
    SetWindowRgn Me.hWnd, hRgnR, True
    '���ô���Ϊ����
End Sub

Private Sub Form_Unload(Cancel As Integer)
    If hRgnR <> 0 Then DeleteObject hRgnR
    If hRgnC <> 0 Then DeleteObject hRgnC
    '�ͷŴ�����ͼ������
End Sub
