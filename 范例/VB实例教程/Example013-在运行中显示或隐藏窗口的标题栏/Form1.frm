VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   4080
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   4560
   LinkTopic       =   "Form1"
   Picture         =   "Form1.frx":0000
   ScaleHeight     =   4080
   ScaleWidth      =   4560
   StartUpPosition =   2  '��Ļ����
   Begin VB.CheckBox Check1 
      Appearance      =   0  'Flat
      BackColor       =   &H00FFFFC0&
      Caption         =   "���ر�����"
      ForeColor       =   &H80000008&
      Height          =   375
      Left            =   360
      TabIndex        =   0
      Top             =   120
      Width           =   1695
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Function TitleBar(ByVal bState As Boolean)
    Dim lStyle As Long
    Dim tR As RECT

    GetWindowRect Me.hWnd, tR
    '�õ���������򱣴���tr��
    lStyle = GetWindowLong(Me.hWnd, GWL_STYLE)
    '�õ�����Ŀǰ�ķ������
    If (bState) Then
    '�����ʾ������
        Me.Caption = Me.Tag
        '����Caption����
        If Me.ControlBox Then
            lStyle = lStyle Or WS_SYSMENU
            '������ʾϵͳ�˵�
        End If
        If Me.MaxButton Then
            lStyle = lStyle Or WS_MAXIMIZEBOX
            '������ʾ��󻯰�ť
        End If
        If Me.MinButton Then
            lStyle = lStyle Or WS_MINIMIZEBOX
            '������ʾ��С����ť
        End If
        If Me.Caption <> "" Then
            lStyle = lStyle Or WS_CAPTION
            '��ʾ���ڵı���
        End If
    Else
    '������ر�����
        Me.Tag = Me.Caption
        '�����ڱ��Ᵽ�浽���ڵ�tag������
        Me.Caption = ""
        '�����ڱ�������Ϊ���ַ���
        lStyle = lStyle And Not WS_SYSMENU
        '����ϵͳ�˵�
        lStyle = lStyle And Not WS_MAXIMIZEBOX
        '������󻯰�ť
        lStyle = lStyle And Not WS_MINIMIZEBOX
        '������С����ť
        lStyle = lStyle And Not WS_CAPTION
        '���ر���
    End If
    SetWindowLong Me.hWnd, GWL_STYLE, lStyle
    '���ô�����
    SetWindowPos Me.hWnd, 0, tR.Left, tR.Top, _
                    tR.Right - tR.Left, tR.Bottom - tR.Top, _
                    SWP_NOREPOSITION Or SWP_NOZORDER Or SWP_FRAMECHANGED
    '��֤���ھ�����ͬ�Ĵ�С
End Function

Private Sub Check1_Click()
    If Check1.Value = 1 Then
        TitleBar False
    Else
        TitleBar True
    End If
End Sub

