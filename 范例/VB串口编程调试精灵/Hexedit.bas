Attribute VB_Name = "Hexedit"



'**********************************
'����ģ��
'**********************************

Public bytReceiveByte() As Byte     '���յ����ֽ�
Public intReceiveLen As Integer     '���յ����ֽ���

'**********************************




'**********************************
'��ʾģ��
'**********************************

Public strAddress As String     '��ַ��Ϣ
Public strHex As String         'ʮ�����Ʊ���
Public strAscii As String        'ASCII��

'**********************************



Public intHexWidth As Integer       '��ʾ����


'**********************************

Public intOriginX As Long       '����ԭ��(����)
Public intOriginY As Integer    '����ԭ��(��)
Public intLine As Integer       '������

'**********************************




'**********************************
'��ʾ����
'**********************************

Public Const ChrWidth = 105             '��λ���
Public Const ChrHeight = 2 * ChrWidth   '��λ�߶�
Public Const BorderWidth = 210          'Ԥ���߽�
Public Const LineMax = 16               '�����ʾ����



'**********************************
'���봦��
'������յ����ֽ���,��������ȫ�ֱ���
'bytReceiveRyte()
'**********************************



Public Sub InputManage(bytInput() As Byte, intInputLenth As Integer)

    

   
    Dim n As Integer                                '�����������ʼ��
    
    ReDim Preserve bytReceiveByte(intReceiveLen + intInputLenth)

    For n = 1 To intInputLenth Step 1
        bytReceiveByte(intReceiveLen + n - 1) = bytInput(n - 1)
    Next n
    
    intReceiveLen = intReceiveLen + intInputLenth
    
End Sub

'***********************************
'Ϊ���׼���ı�
'������ȫ�ֱ���
'strText
'strHex
'strAddress
'������������
'intLine
'***********************************

Public Sub GetDisplayText()

    Dim n As Integer
    Dim intValue As Integer
    Dim intHighHex As Integer
    Dim intLowHex As Integer
    Dim strSingleChr As String * 1
    
    Dim intAddress As Integer
    Dim intAddressArray(8) As Integer
    Dim intHighAddress As Integer
    
    
    
    strAscii = ""            '���ó�ֵ
    strHex = ""
    strAddress = ""
    
    '*****************************************
    '���16�������ASCII����ַ���
    '*****************************************
    
    
    
    For n = 1 To intReceiveLen
        intValue = bytReceiveByte(n - 1)
        
        If intValue < 32 Or intValue > 128 Then         '����Ƿ��ַ�
            strSingleChr = Chr(46)                      '���ڲ�����ʾ��ASCII��,
        Else                                            '��"."��ʾ
            strSingleChr = Chr(intValue)
        End If
        
        strAscii = strAscii + strSingleChr
        
        intHighHex = intValue \ 16
        intLowHex = intValue - intHighHex * 16
        
        If intHighHex < 10 Then
            intHighHex = intHighHex + 48
        Else
            intHighHex = intHighHex + 55
        End If
        If intLowHex < 10 Then
            intLowHex = intLowHex + 48
        Else
            intLowHex = intLowHex + 55
        End If
        
        strHex = strHex + " " + Chr$(intHighHex) + Chr$(intLowHex) + " "
        
        If (n Mod intHexWidth) = 0 Then                 '���û���
            strAscii = strAscii + Chr$(13) + Chr$(10)
            strHex = strHex + Chr$(13) + Chr$(10)
        Else
            
        End If
    Next n
    
    '******************************************
    
    
    '***************************************
    '��õ�ַ�ַ���
    '***************************************
    
    intLine = intReceiveLen \ intHexWidth
    
    If (intReceiveLen - intHexWidth * intLine) > 0 Then
    intLine = intLine + 1
    End If
    
    For n = 1 To intLine
        intAddress = (n - 1) * intHexWidth
        
        If intAdd48Chk = 1 Then
            intHighAddress = 8
        Else
            intHighAddress = 4
        End If
            intAddressArray(0) = intAddress
        For m = 1 To intHighAddress
            intAddressArray(m) = intAddressArray(m - 1) \ 16
        Next m
        For m = 1 To intHighAddress
            intAddressArray(m - 1) = intAddressArray(m - 1) - intAddressArray(m) * 16
        Next m
        For m = 1 To intHighAddress
        
            If intAddressArray(intHighAddress - m) < 10 Then
                intAddressArray(intHighAddress - m) = intAddressArray(intHighAddress - m) + Asc("0")
                
            Else
                intAddressArray(intHighAddress - m) = intAddressArray(intHighAddress - m) + Asc("A") - 10
                
            End If
            strAddress = strAddress + Chr$(intAddressArray(intHighAddress - m))
        Next m
        
        strAddress = strAddress + Chr$(13) + Chr$(10)       '���û���
            
    Next n
    
    
    '***************************************
End Sub

'*************************************
'��ʾ���
'*************************************

Public Sub display()

    
    Dim intViewWidth As Long        '������(����)
    Dim intViewLine As Integer      '������(��)

    Dim strDisplayAddress As String
    Dim strDisplayHex As String
    Dim strDisplayAscii As String
    
    strDisplayAddress = ""
    strDisplayHex = ""
    strDisplayAscii = ""
    
    Dim intStart As Integer
    Dim intLenth As Integer
    
    
    '***************************************
    '������ʾҳ���С,���ù���λ�ÿ��
    '***************************************
   
    
    If intAdd48Chk = 1 Then
        frmMain.txtHexEditAddress.Width = 8 * ChrWidth + BorderWidth
    Else
        frmMain.txtHexEditAddress.Width = 4 * ChrWidth + BorderWidth
    End If
        
    frmMain.txtHexEditHex.Width = intHexWidth * 4 * ChrWidth + BorderWidth
    frmMain.txtHexEditText.Width = intHexWidth * ChrWidth + BorderWidth
    frmMain.txtBlank.Width = BorderWidth
    
    intViewWidth = frmMain.txtHexEditAddress.Width * intAddressChk + frmMain.txtHexEditHex.Width * intHexChk + frmMain.txtHexEditText.Width * intAsciiChk
    
    If intViewWidth <= frmMain.fraHexEditBackground.Width And intLine < LineMax Then
        frmMain.txtBlank.Width = frmMain.fraHexEditBackground.Width - intViewWidth
        frmMain.hsclHexEdit.Visible = False
        frmMain.vsclHexEdit.Visible = False
        intViewWidth = frmMain.fraHexEditBackground.Width
        intViewLine = intLine
        intOriginX = 0
        intOriginY = 0
        
    ElseIf intViewWidth > frmMain.fraHexEditBackground.Width And intLine < LineMax - 1 Then
        frmMain.hsclHexEdit.Visible = True
        frmMain.vsclHexEdit.Visible = False
        frmMain.hsclHexEdit.Width = frmMain.fraHexEditBackground.Width
        intViewLine = intLine
        intOriginY = 0
        If intOriginX > intViewWidth - frmMain.fraHexEditBackground.Width Then
            intOriginX = intViewWidth - frmMain.fraHexEditBackground.Width
        End If
        
    ElseIf intViewWidth < (frmMain.fraHexEditBackground.Width - frmMain.vsclHexEdit.Width) And intLine >= LineMax Then
        frmMain.vsclHexEdit.Visible = True
        frmMain.hsclHexEdit.Visible = False
        frmMain.txtBlank.Width = frmMain.fraHexEditBackground.Width - intViewWidth
        intViewWidth = frmMain.fraHexEditBackground.Width
        
        intViewLine = LineMax
        
        intOriginX = 0
        If intOriginY > intLine - LineMax Then
            intOriginY = intLine - LineMax
        End If
        
    Else
        frmMain.hsclHexEdit.Visible = True
        frmMain.vsclHexEdit.Visible = True
        frmMain.hsclHexEdit.Width = frmMain.fraHexEditBackground.Width - frmMain.vsclHexEdit.Width
        intViewLine = LineMax - 1
        If intOriginX > intViewWidth - frmMain.fraHexEditBackground.Width Then
            intOriginX = intViewWidth - frmMain.fraHexEditBackground.Width
        End If
        If intOriginY > intLine - LineMax + 1 Then
            intOriginY = intLine - LineMax + 1
        End If
    End If
    
    
    
    frmMain.txtHexEditAddress.Left = intOriginX
    frmMain.txtHexEditHex.Left = intOriginX + frmMain.txtHexEditAddress.Width * intAddressChk
    frmMain.txtHexEditText.Left = intOriginX + frmMain.txtHexEditAddress.Width * intAddressChk + frmMain.txtHexEditHex.Width * intHexChk
    frmMain.txtBlank.Left = intOriginX + frmMain.txtHexEditAddress.Width * intAddressChk + frmMain.txtHexEditHex.Width * intHexChk + frmMain.txtHexEditText.Width * intAsciiChk
    
    intStart = intOriginY * (6 + 4 * intAdd48Chk) + 1
    intLenth = intViewLine * (6 + 4 * intAdd48Chk)
    strDisplayAddress = Mid(strAddress, intStart, intLenth)
    
    intStart = intOriginY * (intHexWidth * 4 + 2) + 1
    intLenth = intViewLine * (intHexWidth * 4 + 2)
    strDisplayHex = Mid(strHex, intStart, intLenth)
    
    intStart = intOriginY * (intHexWidth + 2) + 1
    intLenth = intViewLine * (intHexWidth + 2)
    strDisplayAscii = Mid(strAscii, intStart, intLenth)
    
    
    
    '***************************************
    
    '***************************************
    '���ù�����
    '***************************************
    
    frmMain.vsclHexEdit.Max = intLine - intViewLine
    frmMain.hsclHexEdit.Max = (intViewWidth - frmMain.fraHexEditBackground.Width) \ ChrWidth + 1
    
    
    '***************************************
    
    
    
    
    
    '***************************************
    '��ʾ���
    '***************************************
    frmMain.txtHexEditHex.Text = strDisplayHex
    frmMain.txtHexEditText.Text = strDisplayAscii
    frmMain.txtHexEditAddress.Text = strDisplayAddress
    
    '***************************************
    
    
End Sub

'******************************************
'�ı��ޱ仯��ˢ��
'******************************************

Public Sub ScrollRedisplay()

    Call display
    
End Sub

'******************************************
'�ı������仯��ˢ��
'******************************************

Public Sub SlideRedisplay()
    
    Call GetDisplayText
    Call display

End Sub



