Attribute VB_Name = "Module1"
Public Declare Function SetWindowPos Lib "user32" _
( _
    ByVal hwnd As Long, ByVal hWndInsertAfter As Long, _
    ByVal x As Long, ByVal y As Long, ByVal cx As Long, _
    ByVal cy As Long, ByVal wFlags As Long) As Long
'����ΪAPI��������
Public Const HWND_TOPMOST = -1
Public Const SWP_NOMOVE = &H2
Public Const SWP_NOSIZE = &H1
Public Const SWP_FRAMECHANGED = &H20
'The frame changed: send WM_NCCALCSIZE
Public Const SWP_DRAWFRAME = SWP_FRAMECHANGED
'����Ϊ�������õ��ĳ���

Public Const HWND_BOTTOM = 1
Public Const HWND_BROADCAST = &HFFFF&
Public Const HWND_DESKTOP = 0
Public Const HWND_NOTOPMOST = -2
Public Const HWND_TOP = 0
Public Const SWP_HIDEWINDOW = &H80
Public Const SWP_NOACTIVATE = &H10
Public Const SWP_NOCOPYBITS = &H100
Public Const SWP_NOOWNERZORDER = &H200
'Don't do owner Z ordering
Public Const SWP_NOREDRAW = &H8
Public Const SWP_NOREPOSITION = SWP_NOOWNERZORDER
Public Const SWP_NOZORDER = &H4
Public Const SWP_SHOWWINDOW = &H40
'���ϳ��������ڳ�����û��ʹ��
'���������ڵ���SetWindowPos����ʱʹ����Щ���������ǵ����
'�õ�����Ч��
Public Const Flags = SWP_DRAWFRAME Or SWP_NOMOVE Or SWP_NOSIZE
