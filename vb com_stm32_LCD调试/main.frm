VERSION 5.00
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "COMDLG32.OCX"
Object = "{3B7C8863-D78F-101B-B9B5-04021C009402}#1.2#0"; "RICHTX32.OCX"
Begin VB.Form mainForm 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "STM32_LCD����"
   ClientHeight    =   10050
   ClientLeft      =   11355
   ClientTop       =   -1290
   ClientWidth     =   15660
   FillColor       =   &H000000FF&
   Icon            =   "main.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   10050
   ScaleWidth      =   15660
   StartUpPosition =   2  '��Ļ����
   Begin VB.CommandButton Command8 
      Caption         =   "Command8"
      Height          =   615
      Left            =   13920
      TabIndex        =   30
      Top             =   7080
      Width           =   1095
   End
   Begin VB.Frame Frame6 
      Caption         =   "VCOM"
      Height          =   1335
      Left            =   240
      TabIndex        =   18
      Top             =   5280
      Width           =   6495
      Begin VB.CommandButton Command8_Editvcom 
         Caption         =   "Edit"
         Height          =   375
         Left            =   240
         TabIndex        =   27
         Top             =   720
         Width           =   1215
      End
      Begin VB.CommandButton Command9_Vcomup 
         Caption         =   "VCOM+"
         Height          =   375
         Left            =   4440
         TabIndex        =   22
         Top             =   240
         Width           =   1215
      End
      Begin VB.CommandButton Command7 
         Caption         =   "VCOM��ȡ"
         Height          =   375
         Left            =   2880
         TabIndex        =   21
         Top             =   720
         Width           =   1215
      End
      Begin VB.CommandButton Vcomdown 
         Caption         =   "VCOM-"
         BeginProperty Font 
            Name            =   "����"
            Size            =   9
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   -1  'True
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   4440
         Picture         =   "main.frx":58C3A
         TabIndex        =   20
         Top             =   720
         Width           =   1215
      End
      Begin VB.TextBox Txt_vcom 
         Height          =   375
         Left            =   240
         TabIndex        =   19
         Text            =   "VCOM"
         Top             =   240
         Width           =   3975
      End
   End
   Begin VB.Timer Timer1 
      Enabled         =   0   'False
      Interval        =   1000
      Left            =   0
      Top             =   9600
   End
   Begin VB.Frame Frame5 
      Caption         =   "���ʷ���"
      Height          =   1695
      Left            =   240
      TabIndex        =   15
      Top             =   3360
      Width           =   6735
      Begin VB.CommandButton Cmd_Send 
         Caption         =   "����"
         BeginProperty Font 
            Name            =   "��Բ"
            Size            =   9
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   -1  'True
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   5280
         TabIndex        =   26
         Top             =   960
         Width           =   1215
      End
      Begin VB.TextBox CMD1 
         Height          =   495
         Left            =   120
         TabIndex        =   25
         Text            =   "31,32  ,33,34,37 , 5a,46,41"
         Top             =   840
         Width           =   5055
      End
      Begin VB.CheckBox Check1 
         Caption         =   "����"
         Height          =   180
         Left            =   3840
         TabIndex        =   24
         Top             =   480
         Width           =   1215
      End
      Begin VB.CheckBox Check2 
         Caption         =   "�Զ�����"
         Height          =   255
         Left            =   5280
         TabIndex        =   23
         Top             =   480
         Width           =   1215
      End
      Begin VB.OptionButton Option_SendHEX 
         Caption         =   "16����"
         Height          =   375
         Left            =   1560
         TabIndex        =   17
         Top             =   360
         Value           =   -1  'True
         Width           =   1215
      End
      Begin VB.OptionButton Option1 
         Caption         =   "�ַ�/Ascii"
         Height          =   375
         Left            =   120
         TabIndex        =   16
         Top             =   360
         Width           =   1095
      End
   End
   Begin VB.Frame Frame4 
      Caption         =   "���ߵ���"
      Height          =   975
      Left            =   7680
      TabIndex        =   9
      Top             =   8160
      Width           =   4095
      Begin VB.CommandButton Command5 
         Caption         =   "����"
         Height          =   375
         Left            =   2880
         TabIndex        =   12
         Top             =   360
         Width           =   975
      End
      Begin VB.CommandButton Command2 
         Caption         =   "�Ͽ�����"
         Height          =   375
         Left            =   1440
         TabIndex        =   11
         Top             =   360
         Width           =   1215
      End
      Begin VB.CommandButton Command1 
         Caption         =   "����"
         Height          =   375
         Left            =   120
         TabIndex        =   10
         Top             =   360
         Width           =   1095
      End
   End
   Begin VB.Frame Frame3 
      Caption         =   "�ļ�����"
      Height          =   1215
      Left            =   7680
      TabIndex        =   6
      Top             =   6720
      Width           =   5535
      Begin VB.CommandButton Command6 
         Caption         =   "..."
         Height          =   375
         Left            =   4680
         TabIndex        =   14
         Top             =   240
         Width           =   735
      End
      Begin VB.CommandButton Command4 
         Caption         =   "���ļ�"
         Height          =   255
         Left            =   4440
         TabIndex        =   8
         Top             =   720
         Width           =   975
      End
      Begin VB.CommandButton Command3 
         Caption         =   "�����ļ�"
         Height          =   255
         Left            =   3120
         TabIndex        =   7
         Top             =   720
         Width           =   855
      End
      Begin MSComDlg.CommonDialog dlgFile 
         Left            =   120
         Top             =   600
         _ExtentX        =   847
         _ExtentY        =   847
         _Version        =   393216
         Filter          =   "txt|*.txt|mp3|*.mp3|cfg|*.cfg"
      End
      Begin VB.Label Label1 
         Caption         =   "Label1"
         Height          =   615
         Left            =   240
         TabIndex        =   13
         Top             =   240
         Width           =   4335
      End
   End
   Begin VB.Frame Frame2 
      Caption         =   "��ʼ������༭��"
      Height          =   6255
      Left            =   7680
      TabIndex        =   5
      Top             =   240
      Width           =   7215
      Begin RichTextLib.RichTextBox iniRichtxt 
         Height          =   5655
         Left            =   240
         TabIndex        =   29
         Top             =   480
         Width           =   6855
         _ExtentX        =   12091
         _ExtentY        =   9975
         _Version        =   393217
         Enabled         =   -1  'True
         TextRTF         =   $"main.frx":B1874
      End
      Begin VB.Label Label4 
         Caption         =   ",,"
         Height          =   255
         Left            =   2040
         TabIndex        =   31
         Top             =   120
         Width           =   2295
      End
   End
   Begin VB.CommandButton ����༭ 
      Caption         =   "����༭"
      BeginProperty Font 
         Name            =   "΢���ź�"
         Size            =   10.5
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   6120
      TabIndex        =   2
      Top             =   120
      Width           =   1215
   End
   Begin VB.CommandButton Cmd_Clear 
      Caption         =   "���"
      Height          =   350
      Left            =   6720
      TabIndex        =   1
      Top             =   2520
      Width           =   765
   End
   Begin VB.PictureBox StatusBar1 
      Align           =   2  'Align Bottom
      Height          =   375
      Left            =   0
      ScaleHeight     =   315
      ScaleWidth      =   15600
      TabIndex        =   0
      Top             =   9675
      Width           =   15660
   End
   Begin VB.Frame Frame1 
      Caption         =   "������Ϣ"
      Height          =   2535
      Left            =   120
      TabIndex        =   3
      Top             =   480
      Width           =   6375
      Begin VB.TextBox receiveHex 
         Height          =   1215
         Left            =   120
         MultiLine       =   -1  'True
         ScrollBars      =   2  'Vertical
         TabIndex        =   28
         Text            =   "main.frx":B1903
         Top             =   240
         Width           =   6135
      End
      Begin VB.TextBox Text_Receive 
         Height          =   855
         Left            =   120
         MultiLine       =   -1  'True
         ScrollBars      =   2  'Vertical
         TabIndex        =   4
         Text            =   "main.frx":B1909
         Top             =   1560
         Width           =   6135
      End
   End
   Begin VB.Image imgledon 
      Height          =   300
      Left            =   0
      Picture         =   "main.frx":B190F
      Top             =   0
      Width           =   300
   End
   Begin VB.Image imgledoff 
      Height          =   270
      Left            =   120
      Picture         =   "main.frx":B1E01
      Top             =   0
      Width           =   285
   End
   Begin VB.Menu sett 
      Caption         =   "����"
      NegotiatePosition=   2  'Middle
   End
   Begin VB.Menu dubugg 
      Caption         =   "����"
      Index           =   1
   End
   Begin VB.Menu Help 
      Caption         =   "����"
      Index           =   1
      Begin VB.Menu HelpDdetai 
         Caption         =   "�鿴����"
         Shortcut        =   {F1}
      End
      Begin VB.Menu About 
         Caption         =   "����"
      End
   End
End
Attribute VB_Name = "mainForm"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim WithEvents mycomm  As MSComm
Attribute mycomm.VB_VarHelpID = -1
Dim vVcom As String
Dim dubuggFlag As Byte







Private Sub Check1_Click()
If Check1.Value Then
Text2.Locked = True
Else: Text2.Locked = False
End If
End Sub

Private Sub CMD1_Click()
Dim tep ' As String
tep = comSend(CMD1Text.Text)
CMD1Text.Text = tep
End Sub



Private Sub Command8_Click()
Dim i, j As Integer
Dim a
Dim b$()
Dim c$()
Dim tepCmd

 
  a = iniRichtxt.Text
  a = Replace(a, " ", "")   'ȥ�ո�
  a = Replace(a, Chr(13), ";")   '�س����滻�ɡ�;��
  '-----------------------------
  
    If Not (a Like "cmd#") Then
    '  If (c(i) Like "*[!0-9a-fA-F, ]*") Then
    ' MsgBox "���ݸ�ʽ�Ƿ�", vbExclamation + vbOKOnly, "��������"
    Label4.Caption = "���ݸ�ʽ�Ƿ�"
    'grayShow.Enabled = False
     Exit Sub
     End If
 '------------------------------------
  If a = "" Then   '��ֹ������
    iniRichtxt.Text = "0,"
    iniRichtxt.SelStart = Len(iniRichtxt.Text)
     a = "0"
  End If
  
  b = Split(a, ";", -1, 1)  '����a������ȥ���ź�����b
  
  'ReDim gstr(UBound(b))
  
  m = UBound(b)   '��ȡ����b������±�
    
  ReDim c(m)
   
  j = 0
  i = 0
For i = 0 To m  '��ѯ�Ѳ��ǿյ����ݴ�������c
 
     If (b(i) <> "") Then
  
     c(j) = b(i)
     j = j + 1
     Else
     End If
 
Next
    
    
  Do While (c(m) = "")  '������c��Ϊ�յ�����±��ҳ���
  m = m - 1
  If m = 0 Then
 ' m = 1
  Exit Do
  End If
  Loop
  
  
  
  
  ReDim Preserve c(m)  '��С�����С���������β�Ŀ�����������
  ReDim tepCmd(m)        ',ȷ������gstr��С

 
For i = 0 To m   ' �Ѵ����������͵�gstr
                            '�ж��Ƿ�Ϊ10��������
   '  If Not (c(i) Like "*cmd#*") Then
  '    If (c(i) Like "*[!0-9a-fA-F, ]*") Then
    ' MsgBox "���ݸ�ʽ�Ƿ�", vbExclamation + vbOKOnly, "��������"
 '   Label4.Caption = "���ݸ�ʽ�Ƿ�"
    'grayShow.Enabled = False
  '   Exit Sub
  '   End If
     
    ' gstr(i) = Val(c(i))
   '  If gstr(i) > 255 Then
    ' 'MsgBox "���ݳ���Χ�����޸�ʹ�䴦�ڷ�Χ��0��255��", vbExclamation + vbOKOnly, "��������"
   '  Label4.Caption = "���ݳ���Χ"
     'grayShow.Enabled = False
   '  Exit Sub
    ' End If
         
Next

'If Not cmdBusyFlag Then
'CommandmanualMeasure.Enabled = True
'Else: CommandmanualMeasure.Enabled = False
'End If
'grayShow.Enabled = True
Label4.Caption = ""
End Sub

Private Sub Command8_Editvcom_Click()



If (Command8_Editvcom.Caption = "Edit") Then
Txt_vcom.Text = cmdpub
Command8_Editvcom.Caption = "Save"
Else
Command8_Editvcom.Caption = "Edit"
cmdpub = Txt_vcom.Text
vVcom = Txt_vcom.Text
'Txt_vcom.Text = ""
End If

End Sub

Private Sub Command9_Vcomup_Click()

Dim cc
'Dim bb
'-----------------------------
Dim longth As Integer
cc = vVcom 'Text2.Text
'�ж����ݳ���
 If Len(cc) = 0 Then
 MsgBox "0����", vbExclamation + vbOKOnly, "��������"
 'Exit Function
 Exit Sub
 End If
 '�ж��Ƿ�Ϊ16��������
 If (cc Like "*[!0-9A-Fa-f, ]*") Then
 MsgBox "���ݸ�ʽ�Ƿ�", vbExclamation + vbOKOnly, "��������"
 'Exit Function
 Exit Sub
 End If
  
 cc = UCase(cc)
 cc = Replace(cc, " ", "")
 strtxt = cc
 
 '-----------------------------------------------------------------------------------
 'If Option_SendHEX.Value = True Then
 'intOutMode = 1
' Else: intOutMode = 0
' End If
 
     strSendText = Replace(cc, ",", "") 'frmMain.txtSend.Text
    If hexfmt Then
       ' frmMain.txtReceive.Text = "ascii"
        'frmMain.ctrMSComm.Output = strSendText
        mycomm.Output = strSendText
    Else
        'add code
        longth = strHexToByteArray(strSendText, bytSendByte())
        
        If longth > 0 Then
            'frmMain.ctrMSComm.Output = bytSendByte
            mycomm.Output = bytSendByte
            'mycomm.Output = strSendText
        End If
        
    End If

'Txt_vcom.Text = cmdSend(vVcom, False)

End Sub


Private Sub dubugg_Click(Index As Integer)

showTest.Show

End Sub

Private Sub Form_DblClick()
dubuggFlag = dubuggFlag + 1
If dubuggFlag > 1 Then
dubuggFlag = 0
showTest.Show
End If

End Sub

Private Sub Form_KeyPress(KeyAscii As Integer)
    Dim Buffer 'As Byte ' As Variant
    ' Dim Buffer As Variant
    Buffer = Chr$(KeyAscii)
    Buffer = str$(KeyAscii)
    ' ���ò��򿪴���
   ' MSComm1.CommPort = 1
    'MSComm1.PortOpen = True
    'Buffer = (KeyAscii)
    mycomm.Output = Buffer
End Sub






Private Sub Check2_Click()
If Check2.Value = 1 Then
Timer1.Enabled = True
Else: Timer1.Enabled = False
End If
End Sub

Private Sub Cmd_Clear_Click()
 Dim bytTemp(0) As Byte
    
    ReDim bytReceiveByte(0)
    intReceiveLen = 0
    
    Call InputManage(bytTemp, 0)
    
    Call GetDisplayText
   ' Call display
Text_Receive.Text = ""
receiveHex.Text = ""
End Sub


Private Sub Cmd_Send_Click()

Dim tep ' As String
tep = frmSet.comSend(CMD1.Text)
CMD1.Text = tep


Debug.Print tep


End Sub



Private Sub Form_Load()
Unload frmSet
Set mycomm = frmSet.MSComm1
cmdpub = "5A,55,02,bc,00,00,00,AA"
'Dim labx As Label
If (mycomm.PortOpen = True) Then
    
      imgledon.Visible = True
      imgledoff.Visible = False
      
      
     Else
          'imgledon.Visible = False
          'imgledoff.Visible = True
        On Error Resume Next
         frmSet.MSComm1.PortOpen = True
         If (frmSet.MSComm1.PortOpen = False) Then
         imgledon.Visible = False
         imgledoff.Visible = True
         
         MsgBox "����ȷ�ϱ������ڿ�����������", vbExclamation + vbOKOnly, "��������"
       End If
End If

End Sub
Private Sub About_Click()
frmAbout.Show vbModal

End Sub




Private Sub mycomm_OnComm()
Dim bytInput() As Byte
    Dim intInputLen As Integer
    
Select Case mycomm.CommEvent
 Dim cf As String
 Dim cft As Boolean
 'cft = False
 
  Case comEvReceive
    
    
    
    
    
    
    
    ' frmMain.ctrMSComm.InputMode = comInputModeBinary
                intInputLen = mycomm.InBufferCount
                ReDim bytInput(intInputLen)
                bytInput = mycomm.Input
                Call InputManage(bytInput, intInputLen)
                Call GetDisplayText
                receiveHex.Text = strHex
                Text_Receive = strAscii
               ' Call display
    
                Text_Receive.SelStart = Len(Text_Receive.Text)
                receiveHex.SelStart = Len(receiveHex)
    
    
    
    
    
    
    
    
     If (comnum > 200) Then
         Text_Receive.SelStart = 0
         Text_Receive.Text = ""
         comnum = 0
     End If
    '===========================================
     cf = strAscii 'mycomm.Input
     'Label7.FontSize = 18
     cft = False
     
     If InStr(cf, "Calibration_Start") > 0 Then
         Label7.Caption = "У׼��ʼ"
         Label11.Caption = "��ǰУ׼��λ��"
         flagstart = 1
         cft = True
         'Image9.Picture = Image10.Picture
     ElseIf InStr(cf, "complete") > 0 Then
         Label7.Caption = "У׼����"
         Label11.Caption = ""
         flagstart = 0
         cft = True
        ' Image9.Picture = Image8.Picture
         
     ElseIf InStr(cf, "MODE0") > 0 Then
         Image4.Picture = Image6.Picture
         Image5.Picture = Image7.Picture
         Label9.ForeColor = &H80000012
         Label10.ForeColor = &H8000000C '&H80000012&
         Label7.Caption = "IO VDD uAУ׼,��ȷ�ϵ���Ϊ30uA......"
         If (flagstart > 3) Then        '��ΪuA��λֻ��У׼2�Σ���flagstart����2����ζ���쳣
                 Label7.Caption = "У׼�����쳣���������¿�ʼ"
         End If
         flagstart = flagstart + 1
         cft = True
         cf = "--΢����У׼--"
      
      ElseIf InStr(cf, "MODE1") > 0 Then
        ' Image4.Picture = Image6.Picture
         'Image5.Picture = Image7.Picture
         'Label9.ForeColor = &H80000012
         'Label10.ForeColor = &H8000000C '&H80000012&
         Label7.Caption = "VDD uAУ׼����ȷ�ϵ���Ϊ30uA......"
         cft = True
         cf = "==΢����У׼=="
       
       ElseIf InStr(cf, "MODE2") > 0 Then
         'Image4.Picture = Image6.Picture
         'Image5.Picture = Image7.Picture
         Label9.ForeColor = &H80000012
         Label10.ForeColor = &H8000000C '&H80000012&
         Label7.Caption = "VDD uAУ׼����ȷ�ϵ���Ϊ50uA......"
         cft = True
         cf = "==΢����У׼=="
       
       ElseIf InStr(cf, "MODE3") > 0 Then
         Image4.Picture = Image7.Picture
         Image5.Picture = Image6.Picture
         Label9.ForeColor = &H8000000C
         Label10.ForeColor = &H80000012
         Label7.Caption = "VDD mAУ׼����ȷ�ϵ���Ϊ50mA......"
         cft = True
         cf = "==������У׼=="
        ElseIf InStr(cf, "MODE4") > 0 Then
         'Image4.Picture = Image7.Picture
        ' Image5.Picture = Image6.Picture
         Label9.ForeColor = &H8000000C
         Label10.ForeColor = &H80000012
         Label7.Caption = "IO VDD mAУ׼����ȷ�ϵ���Ϊ50mA......"
         cft = True
         cf = "==������У׼=="
      End If
        
        
      If (cft = True) Then
      '   Text_Receive.Text = Text_Receive.Text + vbCr + vbLf
         '��껻��
      '   Text_Receive.Text = Text_Receive.Text + cf
         'Text_Receive.SelStart = Len(Text_Receive)
      '   comnum = comnum + 1
         'ͳ�ƽ����ַ������������ض����������մ���
      '   Text_Receive.Text = Text_Receive.Text + vbCr + vbLf
         
         Text_Receive.SelStart = Len(Text_Receive)
        ' Image9.Picture = Image10.Picture
       Else
       
        ' Text_Receive.Text = Text_Receive.Text + cf
       '  Text_Receive.SelStart = Len(Text_Receive)
         '�趨�������ݵ���ʼλ��
         comnum = comnum + 1
       End If
        
         
         
    Case Else
End Select
End Sub
Private Sub Command6_Click()
 ' ���á�CancelError��Ϊ True
    dlgFile.CancelError = True
    On Error GoTo ErrHandler
    ' ���ñ�־
    'dlgFile.Flags = cdlOFNHideReadOnly
    ' ���ù�����
    dlgFile.Filter = "All Files (*.*)|*.*|Text Files" & _
    "(*.txt)|*.txt;*.cfg"
'���ù�������
'dlgFile.Filter = "Text _Files (*.txt)|*.txt;*.cfg|All Files (*.*)|*.*"
'ָ��ȱʡ��������
            dlgFile.FilterIndex = 2
dlgFile.Flags = _
        cdlOFNFileMustExist + _
        cdlOFNHideReadOnly + _
        cdlOFNLongNames

    On Error Resume Next
  
 'dlgFile.FileName = App.Path & "\*.*"
    dlgFile.ShowOpen
    
     'MsgBox dlgFile.FileName
    
    If Err.Number = cdlCancel Then Exit Sub
    If Err.Number <> 0 Then
        MsgBox "Error" & str$(Err.Number) & _
            " selecting file." & vbCrLf & _
            Err.Description
    End If
   ' On Error GoTo 0
 Label1.Caption = dlgFile.FileName
 iniRichtxt.LoadFile dlgFile.FileName
 iniRichtxt.SelStart = 0
iniRichtxt.SelLength = Len(iniRichtxt.Text)
'RichTextBox1.SelColor = vbGreen
 
ErrHandler:
    ' �û����ˡ�ȡ������ť
    Exit Sub
End Sub






Private Sub sett_Click()
frmSet.Show ' vbModal
End Sub


Private Sub Timer1_Timer()
Call Cmd_Send_Click
End Sub

Private Sub Vcomdown_Click()
If (mycomm.PortOpen = True) Then mycomm.Output = Text2.Text
End Sub

Private Sub ����༭_Click()
showEdit.Show vbModal
End Sub

