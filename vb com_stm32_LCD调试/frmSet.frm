VERSION 5.00
Object = "{648A5603-2C6E-101B-82B6-000000000014}#1.1#0"; "MSCOMM32.OCX"
Begin VB.Form frmSet 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "�������ü�����"
   ClientHeight    =   5250
   ClientLeft      =   5985
   ClientTop       =   3600
   ClientWidth     =   3450
   Icon            =   "frmSet.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   5250
   ScaleWidth      =   3450
   Begin VB.Frame Frame1 
      Caption         =   "������Ϣ"
      Height          =   1575
      Left            =   0
      TabIndex        =   14
      Top             =   3240
      Width           =   3375
      Begin VB.TextBox receiveHex 
         Height          =   1215
         Left            =   120
         MultiLine       =   -1  'True
         ScrollBars      =   2  'Vertical
         TabIndex        =   15
         Text            =   "frmSet.frx":58C3A
         Top             =   240
         Width           =   3135
      End
   End
   Begin VB.Timer Timer1 
      Enabled         =   0   'False
      Interval        =   1000
      Left            =   8880
      Top             =   5640
   End
   Begin VB.CommandButton CommandRefresh 
      Caption         =   "ˢ�´���"
      Height          =   350
      Left            =   2400
      TabIndex        =   13
      Top             =   1680
      Visible         =   0   'False
      Width           =   975
   End
   Begin VB.PictureBox StatusBar1 
      Align           =   2  'Align Bottom
      Height          =   375
      Left            =   0
      ScaleHeight     =   315
      ScaleWidth      =   3390
      TabIndex        =   11
      Top             =   4875
      Width           =   3450
   End
   Begin VB.ComboBox Comb_port 
      Height          =   300
      ItemData        =   "frmSet.frx":58C40
      Left            =   840
      List            =   "frmSet.frx":58C42
      Style           =   2  'Dropdown List
      TabIndex        =   5
      Top             =   660
      Width           =   1095
   End
   Begin VB.ComboBox Comb_bsp 
      Height          =   300
      ItemData        =   "frmSet.frx":58C44
      Left            =   840
      List            =   "frmSet.frx":58C60
      Style           =   2  'Dropdown List
      TabIndex        =   4
      Top             =   1035
      Width           =   1095
   End
   Begin VB.ComboBox Comb_databit 
      Height          =   300
      ItemData        =   "frmSet.frx":58C9B
      Left            =   840
      List            =   "frmSet.frx":58CA2
      Style           =   2  'Dropdown List
      TabIndex        =   3
      Top             =   1545
      Width           =   1095
   End
   Begin VB.ComboBox Comb_stop 
      Height          =   300
      ItemData        =   "frmSet.frx":58CA9
      Left            =   840
      List            =   "frmSet.frx":58CB0
      Style           =   2  'Dropdown List
      TabIndex        =   2
      Top             =   2040
      Width           =   1095
   End
   Begin VB.ComboBox Comb_check 
      Height          =   300
      ItemData        =   "frmSet.frx":58CB7
      Left            =   840
      List            =   "frmSet.frx":58CBE
      Style           =   2  'Dropdown List
      TabIndex        =   1
      Top             =   2520
      Width           =   1095
   End
   Begin VB.CommandButton Cmd_PortSwitch 
      Caption         =   "�򿪴���"
      Height          =   350
      Left            =   2400
      TabIndex        =   0
      Top             =   1200
      Width           =   1000
   End
   Begin MSCommLib.MSComm MSComm1 
      Left            =   2640
      Top             =   2400
      _ExtentX        =   1005
      _ExtentY        =   1005
      _Version        =   393216
      DTREnable       =   -1  'True
      InputMode       =   1
   End
   Begin VB.Label Label8 
      Caption         =   "COM����"
      Height          =   255
      Left            =   120
      TabIndex        =   12
      Top             =   120
      Width           =   6015
   End
   Begin VB.Image Image3 
      Height          =   300
      Left            =   2160
      Picture         =   "frmSet.frx":58CC8
      Top             =   2400
      Visible         =   0   'False
      Width           =   300
   End
   Begin VB.Image Image2 
      Height          =   270
      Left            =   2160
      Picture         =   "frmSet.frx":591BA
      Top             =   2640
      Visible         =   0   'False
      Width           =   285
   End
   Begin VB.Image Image1 
      Height          =   300
      Left            =   3000
      Top             =   600
      Width           =   300
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "���ں�"
      Height          =   180
      Left            =   120
      TabIndex        =   10
      Top             =   720
      Width           =   540
   End
   Begin VB.Label Label2 
      Caption         =   "������"
      Height          =   255
      Left            =   105
      TabIndex        =   9
      Top             =   1125
      Width           =   615
   End
   Begin VB.Label Label4 
      Caption         =   "����λ"
      Height          =   255
      Left            =   105
      TabIndex        =   8
      Top             =   1620
      Width           =   615
   End
   Begin VB.Label Label5 
      Caption         =   "ֹͣλ"
      Height          =   375
      Left            =   120
      TabIndex        =   7
      Top             =   2115
      Width           =   615
   End
   Begin VB.Label Label6 
      Caption         =   "У��λ"
      Height          =   375
      Left            =   105
      TabIndex        =   6
      Top             =   2625
      Width           =   735
   End
End
Attribute VB_Name = "frmSet"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Public num, comnum As Integer
'num,ͳ�Ƶ��������comnumͳ�ƽ�������
Dim flagstart As Integer
Dim sendflag As Boolean
'-----------------------------------------------

Public Function comSend(cdata As String) As String
Dim aa
Dim cc
Dim bb
'-----------------------------
Set mycomm = frmSet.MSComm1

Dim longth As Integer
cc = cdata 'Text2.Text
'�ж����ݳ���
 If Len(cc) = 0 Then
 MsgBox "0����", vbExclamation + vbOKOnly, "��������"
 Exit Function
 End If
 '�ж��Ƿ�Ϊ16��������
 If (cc Like "*[!0-9A-Fa-f, ]*") Then
 MsgBox "���ݸ�ʽ�Ƿ�", vbExclamation + vbOKOnly, "��������"
 
 comSend = cc
 Exit Function
 End If
  
 cc = UCase(cc)
 cc = Replace(cc, " ", "")
 comSend = cc

 
 strSendText = Replace(cc, ",", "") '
 longth = strHexToByteArray(strSendText, bytSendByte())
 DoEvents
        
 If longth > 0 Then
         '   mycomm.Output = bytSendByte
 '--------------------- ���ڼ�⿪ʼ----------------------------------

    On Error Resume Next
   '�����з�������ʱ���ؼ�ת�������ŷ�����������֮�����䣬���ڴ˼�������
     mycomm.Output = bytSendByte

   ' MSComm1.PortOpen = True
    Select Case Err.Number
       Case 0                       '�����Ϊ0(Ҳ����û����),
         ComState = ""
       Case 8002                '�����Ϊ8002,Ҳ������Ч�˿�
         ComState = "������Ч������ȷ��"
       Case 8005
         ComState = "���ڱ�ռ�ã�����ȷ��"
       Case Else
        ComState = "�����쳣������ȷ��"
    End Select
    Err = 0     '���������0. ע:Err.Number���Լ�дΪErr ,2�ߵ�Ч

'----------------------���ڼ�����---------------------------------
        
  End If

End Function

Public Function comsendGrayNum(m As Integer, color As Byte, rgbChange As Boolean) As Byte
 '�ж����ݳ���
 If m > 255 Then
 MsgBox "�����쳣����ȷ��", vbExclamation + vbOKOnly, "��������"
 Exit Function
 End If
 'laberGrayinfo.Caption = "��ǰ���� " + CStr(gstr(grayNumflag)) + "/255" 'CStr


Dim tep As String

Select Case color
Case CLR_RED
    If rgbChange Then
    tep = "5A55110000" + CStr(Replace((Format(Hex(m), "@@")), " ", "0")) + "00AA"
    Else
    tep = "5A5511" + CStr(Replace((Format(Hex(m), "@@")), " ", "0")) + "000000AA"
    End If
    
Case CLR_GREEN
    tep = "5A551100" + CStr(Replace((Format(Hex(m), "@@")), " ", "0")) + "0000AA"
Case CLR_BLUE
     If rgbChange Then
     tep = "5A5511" + CStr(Replace((Format(Hex(m), "@@")), " ", "0")) + "000000AA"
     Else
     tep = "5A55110000" + CStr(Replace((Format(Hex(m), "@@")), " ", "0")) + "00AA"
     End If
Case CLR_WHITE
    tep = "5A55120400" + CStr(Replace((Format(Hex(m), "@@")), " ", "0")) + "00AA"
''0~9ת����16����ʱ��ת��00 01~09�ĸ�ʽ���Է���Э��Ҫ��
Case Else
End Select


Call frmSet.comSend(tep)
FormGamma.CMD1Text.Text = m
comsendGrayNum = m
End Function

Private Sub MSComm1_OnComm()
Dim bytInput() As Byte
Dim intInputLen As Integer

Select Case MSComm1.CommEvent

  Case comEvReceive
                intInputLen = MSComm1.InBufferCount
                ReDim bytInput(intInputLen)
                bytInput = MSComm1.Input
                Call InputManage(bytInput, intInputLen)
                Call GetDisplayText
                receiveHex.Text = strHex
                'Text_Receive = strAscii
               ' Call display
    
               ' Text_Receive.SelStart = Len(Text_Receive.Text)
                receiveHex.SelStart = Len(receiveHex)
    
         
    Case Else
End Select
End Sub

Private Sub Cmd_Clear_Click()
 Dim bytTemp(0) As Byte
    
    ReDim bytReceiveByte(0)
    intReceiveLen = 0
    
    Call InputManage(bytTemp, 0)
    
    Call GetDisplayText
   
receiveHex.Text = ""
End Sub
Private Sub Form_Load()
'---------------------------------
 ' gpflag = False
  'Label7.Caption = "�����ַ�"
  'Label11.Caption = ""
  'Label12.Caption = "ע�⣬������80xx�ı��� ����������ǰ���Դ����쳣����ͨ�������豸���������ȷ��"
  'MsgBox "����ȷ�ϱ������ڿ�����������", vbExclamation + vbOKOnly, "����"
receiveHex.Text = ""

With frmPort1
Dim j  As Integer
j = 0
If MSComm1.PortOpen = True Then MSComm1.PortOpen = False
For i = 1 To 16
    On Error Resume Next
   '�����з�������ʱ���ؼ�ת�������ŷ�����������֮�����䣬���ڴ˼�������
    MSComm1.CommPort = i
    MSComm1.PortOpen = True
    Select Case Err.Number
       Case 0                       '�����Ϊ0(Ҳ����û����),
         Comb_port.AddItem "COM" & Trim(i)
         MSComm1.PortOpen = False
         j = j + 1
      ' Case 8002                '�����Ϊ8002,Ҳ������Ч�˿�
      '   Comb_port.AddItem "Com" & Trim(i) & " ��Ч�˿�"
      '   MSComm1.PortOpen = False
       'Case Else
      '           MSComm1.PortOpen = False
    End Select
    Err = 0     '���������0. ע:Err.Number���Լ�дΪErr ,2�ߵ�Ч
Next
     Label8.Caption = "��������Ͽ��ô���������   " & j & "��"
     
     comnum = j
     
     If (j = 0) Then
     'Label8.FontSize = 18
     'Label7.Font = ΢���ź�
     Label8.ForeColor = &HFF&
     
     Label8.Caption = "û�п����õĴ��ڣ���ȷ�Ϻ��ٴ����б�����!"
     Cmd_PortSwitch.Visible = False
     CommandRefresh.Visible = True
      Image1.Picture = Image3.Picture
     Else
         Cmd_PortSwitch.Visible = True
         CommandRefresh.Visible = False
    End If
    
End With
 '-----------------------------------
 If (j > 1) Then
   Comb_port.ListIndex = 1     'Comb_port��ʼ����Ĭ��ѡ�е�2��������ʾ����,(�˴���Ҫ����̨ʽPC��һ���ò��˵�COM1)
 Else
   Comb_port.ListIndex = 0     'Comb_port��ʼ����Ĭ��ѡ�е�1��������ʾ����
 End If
 
    MSComm1.Settings = "115200,n,8,1"
    
    Call comb_port_click  ' �趨ʹ�õ�COM��
   ' MSComm1.CommPort = 1
    MSComm1.InputLen = 0
    
    MSComm1.InBufferSize = 512
    MSComm1.InBufferCount = 0
    MSComm1.OutBufferSize = 512
    MSComm1.OutBufferCount = 0
    MSComm1.RThreshold = 1
    MSComm1.SThreshold = 1
    MSComm1.PortOpen = True
                       
  ' Comb_port.ListIndex = 0     'Ĭ����ʾ��һ������
    Comb_bsp.ListIndex = 0
    Comb_databit.ListIndex = 0
    Comb_stop.ListIndex = 0
    Comb_check.ListIndex = 0
    Image1.Picture = Image3.Picture
    Cmd_PortSwitch.Caption = "�رմ���"
    
End Sub

Private Sub Form_Unload(Cancel As Integer)
If (MSComm1.PortOpen = True) Then
   ' MSComm1.PortOpen = False
End If
End Sub
Private Sub commandRefresh_Click()
Call Form_Load

End Sub


Private Sub comb_port_click()
    
   '   MsgBox err.Description, vbExclamation + vbOKOnly, "������Ϣ"
  '  MsgBox "����ȷ�ϱ������ڿ�����������", vbExclamation + vbOKOnly, "��������"
    Dim i As Boolean
    If (MSComm1.PortOpen = True) Then
        MSComm1.PortOpen = False
        i = True
    Else
        i = False
    End If
    
    Select Case Comb_port.Text
    Case "COM1"
        MSComm1.CommPort = 1
    Case "COM2"
        MSComm1.CommPort = 2
    Case "COM3"
        MSComm1.CommPort = 3
    Case "COM4"
        MSComm1.CommPort = 4
    Case "COM5"
        MSComm1.CommPort = 5
    Case "COM6"
        MSComm1.CommPort = 6
    Case "COM7"
        MSComm1.CommPort = 7
    Case "COM8"
        MSComm1.CommPort = 8
    Case "COM9"
        MSComm1.CommPort = 9
     Case "COM10"
        MSComm1.CommPort = 10
    Case "COM11"
        MSComm1.CommPort = 11
    Case "COM12"
        MSComm1.CommPort = 12
    End Select
    
    
    If (i = True) Then
        MSComm1.PortOpen = True
    End If
    
        
End Sub

Private Sub Comb_bsp_click()

Dim i As Boolean

If (MSComm1.PortOpen = True) Then
    MSComm1.PortOpen = False
    i = True
Else
    i = False
End If

    Select Case Comb_bsp.ListIndex
    Case 0
           MSComm1.Settings = "115200,n,8,1"
    Case 1
           MSComm1.Settings = "57600,n,8,1"
    Case 2
           MSComm1.Settings = "56000,n,8,1"
    Case 3
           MSComm1.Settings = "38400,n,8,1"
    Case 4
           MSComm1.Settings = "19200,n,8,1"
    Case 5
           MSComm1.Settings = "14400,n,8,1"
    Case 6
           MSComm1.Settings = "9600,n,8,1"
    Case 7
           MSComm1.Settings = "4800,n,8,1"
    End Select

 
If (i = True) Then
    MSComm1.PortOpen = True
End If



            
End Sub

Private Sub cmd_PortSwitch_Click()
    If (MSComm1.PortOpen = True) Then
        MSComm1.PortOpen = False
        Cmd_PortSwitch.Caption = "�򿪴���"
        Image1.Picture = Image2.Picture
    ElseIf (MSComm1.PortOpen = False) Then
        MSComm1.PortOpen = True
        Cmd_PortSwitch.Caption = "�رմ���"
        Image1.Picture = Image3.Picture
    End If
End Sub





