Attribute VB_Name = "Module1"
Public Declare Function SetWindowLong Lib "user32" _
                Alias "SetWindowLongA" _
                (ByVal hwnd As Long, _
                ByVal nIndex As Long, _
                ByVal dwNewLong As Long) _
                As Long

Public Declare Function GetWindowLong Lib "user32" _
                Alias "GetWindowLongA" _
                (ByVal hwnd As Long, _
                ByVal nIndex As Long) _
                As Long

Public Declare Function CallWindowProc Lib "user32" _
                Alias "CallWindowProcA" _
                (ByVal lpPrevWndFunc As Long, _
                ByVal hwnd As Long, _
                ByVal Msg As Long, _
                ByVal wParam As Long, _
                ByVal lParam As Long) _
                As Long
'���峣��
Public Const GWL_WNDPROC = (-4)
Public Const WM_RBUTTONDOWN = &H204
Public Const WM_RBUTTONUP = &H205

'ȫ�ֱ���,��ſؼ���־������
Public preWinProc As Long

'����������������������ʱ��ȡ����Ϣ��
Public Function wndproc(ByVal hwnd As Long, ByVal Msg As Long, _
                ByVal wParam As Long, ByVal lParam As Long) As Long

    '��ȡ��������Ϣ�����msg������.
    If (Msg = WM_RBUTTONDOWN) Or (Msg = WM_RBUTTONUP) Then
        '��⵽��Ϣ,����Ϳ��Լ��봦�����
        '��Ҫע��,�������������κδ���,���൱�ڳԵ���������Ϣ.
    Else
        '���������Ҫ�������Ϣ,��֮�ͻ�ԭ���ĳ���.
        wndproc = CallWindowProc(preWinProc, hwnd, Msg, wParam, lParam)
    End If
End Function
