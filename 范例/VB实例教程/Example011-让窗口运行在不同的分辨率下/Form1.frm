VERSION 5.00
Begin VB.Form Form1 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "�ֱ�������"
   ClientHeight    =   3945
   ClientLeft      =   4125
   ClientTop       =   2745
   ClientWidth     =   6015
   Icon            =   "Form1.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3945
   ScaleWidth      =   6015
   ShowInTaskbar   =   0   'False
   StartUpPosition =   1  '����������
   Begin VB.CommandButton Command1 
      Caption         =   "���÷ֱ���"
      Height          =   375
      Left            =   120
      TabIndex        =   1
      Top             =   3480
      Width           =   1455
   End
   Begin VB.ListBox List1 
      Height          =   3300
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   5775
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim dxSet As New DirectX7
'����DirectX7����
Dim ddSet As DirectDraw7
'����DirectDraw7����
Dim DisModesEnum As DirectDrawEnumModes
'����DirectDrawEnumModes����
Dim dds2 As DDSURFACEDESC2

'�����ĸ�����洢��ʾģʽ���������
Dim lntWid(100) As Integer
'�洢���
Dim lntHig(100) As Integer
'�洢�߶�
Dim lntBB(100) As Integer
'�洢��ɫλ��
Dim lntRefR(100) As Integer
'�洢ˢ��Ƶ��
Private Sub Command1_Click()
    Dim intSel As Integer
    intSel = List1.ListIndex
    'ȡ�����б����ѡ�����ʾģʽ
    Call ddSet.SetCooperativeLevel(Me.hWnd, DDSCL_ALLOWMODEX Or DDSCL_FULLSCREEN Or DDSCL_EXCLUSIVE)
    '����Э��ˮƽ
    ddSet.SetDisplayMode lntWid(intSel), lntHig(intSel), lntBB(intSel), lntRefR(intSel), DDSDM_DEFAULT
    '������ʾģʽ
    Me.Height = 0
    Me.Width = 3660
    Me.Caption = "�رմ��ڻָ�ԭ���ķֱ���"
End Sub

Private Sub Form_Load()
    Set ddSet = dxSet.DirectDrawCreate("")
    'dxSet����DirectDraw����ddSet
    ddSet.SetCooperativeLevel Me.hWnd, DDSCL_NORMAL
    '����Э��ˮƽ
    Set DisModesEnum = ddSet.GetDisplayModesEnum(DDEDM_DEFAULT, dds2)
    'DisModesEnum���֧�ֵ���ʾģʽ
     
     For i = 1 To DisModesEnum.GetCount()
        DisModesEnum.GetItem i, dds2
        '��ָ������ʾģʽ��������ݴ���dds2
        lntWid(i) = dds2.lWidth
        '������ʾģʽ�µĿ�ȴ�������lntWid
        lntHig(i) = dds2.lHeight
        '������ʾģʽ�µĸ߶ȴ�������lntHig
        lntBB(i) = dds2.ddpfPixelFormat.lRGBBitCount
        '������ʾģʽ�µ�ɫ����ȴ�������lntBB
        lntRefR(i) = dds2.lRefreshRate
        '������ʾģʽ�µ�ˢ���ʴ�������lntRefR
        List1.AddItem "��ʾģʽ��" + Str(i - 1) + _
                      "      ���" + Str(lntWid(i)) + _
                      "      �߶�" + Str(lntHig(i)) + _
                      "      ��ɫλ��" + Str(lntBB(i)) + _
                      "      ˢ����" + Str(lntRefR(i))
    Next
    '���б������ʾ������ʾģʽ�Ŀ�ȡ��߶ȡ�ɫ����ȡ�ˢ���ʣ���Ϊ����ʾģʽ���
End Sub

