Attribute VB_Name = "Module1"
Public Declare Function GetWindowLong _
Lib "user32" Alias "GetWindowLongA" _
( _
    ByVal hWnd As Long, ByVal nIndex As Long _
 ) As Long
'hwndΪ���ھ��
'nIndexָʾҪ��ô����ķ��������
'nIndex��������Ϊ���г���֮һ��
'GWL_EXSTYLE
'GWL_HINSTANCE
'GWL_HWNDPARENT
'GWL_ID
'GWL_STYLE
'GWL_WNDPROC
'GWL_USERDATA
'---------------------------------------------
Public Declare Function SetWindowLong _
Lib "user32" Alias "SetWindowLongA" _
( _
    ByVal hWnd As Long, ByVal nIndex As Long, _
    ByVal dwNewLong As Long _
 ) As Long
'hwndΪҪ���������Ĵ��ڵľ��
'nIndexָʾҪ���ô����ķ�������
'dwNewLongΪ��ʾ������Ϣ��һ��Long������ֵ
'---------------------------------------------
Public Const GWL_STYLE = (-16)
Public Const WS_CAPTION = &HC00000
Public Const WS_MAXIMIZEBOX = &H10000
Public Const WS_MINIMIZEBOX = &H20000
Public Const WS_SYSMENU = &H80000
'����SetWindowLong��GetWindowLong������Ҫʹ�õĳ���
'---------------------------------------------

Public Declare Function SetWindowPos Lib "user32" _
( _
    ByVal hWnd As Long, ByVal hWndInsertAfter As Long, _
    ByVal x As Long, ByVal y As Long, ByVal cx As Long, _
    ByVal cy As Long, ByVal wFlags As Long _
) As Long

Public Enum ESetWindowPosStyles
    SWP_SHOWWINDOW = &H40
    SWP_HIDEWINDOW = &H80
    SWP_FRAMECHANGED = &H20
    'The frame changed: send WM_NCCALCSIZE
    SWP_NOACTIVATE = &H10
    SWP_NOCOPYBITS = &H100
    SWP_NOMOVE = &H2
    SWP_NOOWNERZORDER = &H200
    'Don't do owner Z ordering
    SWP_NOREDRAW = &H8
    SWP_NOREPOSITION = SWP_NOOWNERZORDER
    SWP_NOSIZE = &H1
    SWP_NOZORDER = &H4
    SWP_DRAWFRAME = SWP_FRAMECHANGED
    HWND_NOTOPMOST = -2
End Enum
'---------------------------------------------
Public Declare Function GetWindowRect Lib "user32" _
( _
    ByVal hWnd As Long, lpRect As RECT _
    ) As Long
'GetWindowRect��������������ڵķ�Χ����
'���ڵı߿򡢱����������������˵��ȶ������������
'hWnd����ΪLong�ͣ�Ҫ��÷�Χ���εĴ��ڵľ��
'lpRect����ΪRECT�ṹ����Ļ��������ͬ����װ�صľ���
   
Public Type RECT
    Left As Long
    Top As Long
    Right As Long
    Bottom As Long
End Type
'---------------------------------------------
