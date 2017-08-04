Attribute VB_Name = "Module1"
Public Declare Function CreateEllipticRgn Lib "gdi32" _
( _
    ByVal X1 As Long, ByVal Y1 As Long, _
    ByVal X2 As Long, ByVal Y2 As Long _
    ) As Long

Public Declare Function CreateRectRgn Lib "gdi32" _
( _
    ByVal X1 As Long, ByVal Y1 As Long, _
    ByVal X2 As Long, ByVal Y2 As Long _
    ) As Long

Public Declare Function SetWindowRgn Lib "user32" _
( _
    ByVal hWnd As Long, ByVal hRgn As Long, _
    ByVal bRedraw As Boolean _
    ) As Long

Public Declare Function CombineRgn Lib "gdi32" _
( _
    ByVal hDestRgn As Long, ByVal hSrcRgn1 As Long, _
    ByVal hSrcRgn2 As Long, ByVal nCombineMode As Long _
    ) As Long

Public Const RGN_AND = 1
'�������������
Public Const RGN_COPY = 5
'����hSrcRgn1�Ŀ���
Public Const RGN_DIFF = 4
'�������������
Public Const RGN_OR = 2
'������������л����
Public Const RGN_XOR = 3
'�������������������
Public Const RGN_MAX = RGN_COPY
Public Const RGN_MIN = RGN_AND

Public Sub SetWindow(f1 As Form)
'���ӹ���ʵ�����ô�����״
    Dim hSrcRgn1, hSrcRgn2, hSrcRgn3 As Long
    hSrcRgn1 = CreateEllipticRgn(5, 23, 397, 415)
    '����������Ĵ�Բ����
    hSrcRgn2 = CreateEllipticRgn(90, 74, 395, 362)
    '�����м��Բ����
    hSrcRgn3 = CreateEllipticRgn(183, 120, 395, 320)
    '����������СԲ����
    
    CombineRgn hSrcRgn1, hSrcRgn1, hSrcRgn2, RGN_DIFF
    '�ô�Բ��ȥ�м��Բ�õ������򱣴���hSrcRgn1
    CombineRgn hSrcRgn1, hSrcRgn1, hSrcRgn3, RGN_OR
    '�õõ����������СԲ��������hSrcRgn1
    SetWindowRgn f1.hWnd, hSrcRgn1, True
End Sub
Public Sub Reset(f1 As Form)
'���ӹ���ʵ�ָֻ�������״Ϊ����
    Dim hSrcRgn4 As Long
    hSrcRgn4 = CreateRectRgn(0, 0, f1.Width, f1.Height)
    '��������
    SetWindowRgn f1.hWnd, hSrcRgn4, True
    '�����ڻָ�Ϊ����
End Sub
