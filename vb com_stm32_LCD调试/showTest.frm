VERSION 5.00
Begin VB.Form showTest 
   Caption         =   "Form1"
   ClientHeight    =   8235
   ClientLeft      =   1950
   ClientTop       =   3540
   ClientWidth     =   11730
   Icon            =   "showTest.frx":0000
   LinkTopic       =   "Form1"
   ScaleHeight     =   8235
   ScaleWidth      =   11730
   StartUpPosition =   2  '��Ļ����
   Begin VB.Frame Frame2 
      Caption         =   "Gamma����"
      Height          =   2295
      Left            =   4560
      TabIndex        =   30
      Top             =   1080
      Width           =   6855
      Begin VB.CommandButton grayShow 
         Caption         =   "�ҽ���ʾ"
         Height          =   375
         Left            =   5400
         TabIndex        =   34
         Top             =   480
         Width           =   1215
      End
      Begin VB.TextBox grayValueText 
         Height          =   495
         Left            =   240
         TabIndex        =   31
         Text            =   "255,00,  16,32,48,64,80,96,112,128,144,160,176��192��208��224��240"
         Top             =   960
         Width           =   6495
      End
      Begin VB.Label Label4 
         Caption         =   "'"
         Height          =   375
         Left            =   3720
         TabIndex        =   35
         Top             =   600
         Width           =   1335
      End
      Begin VB.Label laberGrayinfo 
         Caption         =   "��ǰ������"
         BeginProperty Font 
            Name            =   "΢���ź�"
            Size            =   15.75
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   615
         Left            =   360
         TabIndex        =   33
         Top             =   240
         Width           =   3855
      End
      Begin VB.Label Label1 
         Caption         =   "������������뻭�������Gamma����ͨ����Ҫ�Ӱ׻��濪ʼ���⣬���Բ�Ҫ��©�׺ڻ���"
         Height          =   375
         Left            =   360
         TabIndex        =   32
         Top             =   1680
         Width           =   6375
      End
   End
   Begin VB.Frame Frame1 
      Caption         =   "����ֱ��"
      Height          =   5895
      Left            =   240
      TabIndex        =   2
      Top             =   960
      Width           =   4095
      Begin VB.CommandButton P27 
         Caption         =   "Command12"
         Enabled         =   0   'False
         Height          =   375
         Left            =   2760
         TabIndex        =   29
         Top             =   5280
         Width           =   975
      End
      Begin VB.CommandButton P26 
         Caption         =   "Command11"
         Enabled         =   0   'False
         Height          =   375
         Left            =   1560
         TabIndex        =   28
         Top             =   5280
         Width           =   975
      End
      Begin VB.CommandButton P25 
         Caption         =   "CtCenter.Bk"
         BeginProperty Font 
            Name            =   "Gabriola"
            Size            =   10.5
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   360
         TabIndex        =   27
         Top             =   5280
         Width           =   975
      End
      Begin VB.CommandButton P24 
         Caption         =   "TBD"
         Enabled         =   0   'False
         Height          =   375
         Left            =   2760
         TabIndex        =   26
         Top             =   4680
         Width           =   975
      End
      Begin VB.CommandButton P23 
         Caption         =   "TBD"
         Enabled         =   0   'False
         Height          =   375
         Left            =   1560
         TabIndex        =   25
         Top             =   4680
         Width           =   975
      End
      Begin VB.CommandButton P22 
         Caption         =   "Dot.Flk.A"
         Height          =   375
         Left            =   360
         TabIndex        =   24
         Top             =   4680
         Width           =   975
      End
      Begin VB.CommandButton P21 
         Caption         =   "Flk.H.Dot"
         Height          =   375
         Left            =   2760
         TabIndex        =   23
         Top             =   4080
         Width           =   975
      End
      Begin VB.CommandButton P20 
         Caption         =   "Flicker.V"
         Height          =   375
         Left            =   1560
         TabIndex        =   22
         Top             =   4080
         Width           =   975
      End
      Begin VB.CommandButton P19 
         Caption         =   "Flicker.H"
         Height          =   375
         Left            =   360
         TabIndex        =   21
         Top             =   4080
         Width           =   975
      End
      Begin VB.CommandButton P18 
         Caption         =   "Blue.V"
         Height          =   375
         Left            =   2760
         TabIndex        =   20
         Top             =   3480
         Width           =   975
      End
      Begin VB.CommandButton P17 
         Caption         =   "Blue.H"
         Height          =   375
         Left            =   1560
         TabIndex        =   19
         Top             =   3480
         Width           =   975
      End
      Begin VB.CommandButton P16 
         Caption         =   "Green.V"
         Height          =   375
         Left            =   360
         TabIndex        =   18
         Top             =   3480
         Width           =   975
      End
      Begin VB.CommandButton P15 
         Caption         =   "Green.H"
         Height          =   375
         Left            =   2760
         TabIndex        =   17
         Top             =   2880
         Width           =   975
      End
      Begin VB.CommandButton P14 
         Caption         =   "Red.V"
         Height          =   375
         Left            =   1560
         TabIndex        =   16
         Top             =   2880
         Width           =   975
      End
      Begin VB.CommandButton P13 
         Caption         =   "Red.H"
         Height          =   375
         Left            =   360
         TabIndex        =   15
         Top             =   2880
         Width           =   975
      End
      Begin VB.CommandButton P12 
         Caption         =   "Gray.V"
         Height          =   375
         Left            =   2760
         TabIndex        =   14
         Top             =   2280
         Width           =   975
      End
      Begin VB.CommandButton P11 
         Caption         =   "Gray.H"
         Height          =   375
         Left            =   1560
         TabIndex        =   13
         Top             =   2280
         Width           =   975
      End
      Begin VB.CommandButton P10 
         Caption         =   "�߿�"
         Height          =   375
         Left            =   360
         TabIndex        =   12
         Top             =   2280
         Width           =   975
      End
      Begin VB.CommandButton P7 
         Caption         =   "White"
         Height          =   375
         Left            =   360
         TabIndex        =   11
         Top             =   1680
         Width           =   975
      End
      Begin VB.CommandButton P9 
         Caption         =   "Black"
         Height          =   375
         Left            =   2760
         TabIndex        =   10
         Top             =   1680
         Width           =   975
      End
      Begin VB.CommandButton P8 
         Caption         =   "G.127"
         Height          =   375
         Left            =   1560
         TabIndex        =   9
         Top             =   1680
         Width           =   975
      End
      Begin VB.CommandButton P6 
         Caption         =   "B"
         Height          =   375
         Left            =   2760
         TabIndex        =   8
         Top             =   1080
         Width           =   975
      End
      Begin VB.CommandButton P5 
         Caption         =   "G"
         Height          =   375
         Left            =   1560
         TabIndex        =   7
         Top             =   1080
         Width           =   975
      End
      Begin VB.CommandButton P4 
         Caption         =   "R"
         Height          =   375
         Left            =   360
         TabIndex        =   6
         Top             =   1080
         Width           =   975
      End
      Begin VB.CommandButton P3 
         Caption         =   "���̸�"
         Height          =   375
         Left            =   2760
         TabIndex        =   5
         Top             =   480
         Width           =   975
      End
      Begin VB.CommandButton P2 
         Caption         =   "CT.Center.W"
         BeginProperty Font 
            Name            =   "Gabriola"
            Size            =   10.5
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   1560
         TabIndex        =   4
         Top             =   480
         Width           =   975
      End
      Begin VB.CommandButton P1 
         Caption         =   "Flicker"
         Height          =   375
         Left            =   360
         TabIndex        =   3
         Top             =   480
         Width           =   975
      End
   End
   Begin VB.CommandButton PcmdSend 
      Caption         =   "Send"
      BeginProperty Font 
         Name            =   "΢���ź�"
         Size            =   9
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   3480
      TabIndex        =   1
      Top             =   360
      Width           =   975
   End
   Begin VB.TextBox Text1 
      BeginProperty Font 
         Name            =   "Arial Narrow"
         Size            =   14.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   240
      TabIndex        =   0
      Text            =   "Text1"
      Top             =   360
      Width           =   3015
   End
End
Attribute VB_Name = "showTest"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim dubuggFlag As Byte '����˫������
Dim m, grayNumflag As Integer 'm���������ͻҽ����鳤�ȣ�grayNumflag����gamma����ʱ�ҽ���ʾ����
Dim gstr()


Private Sub Form_DblClick()
dubuggFlag = dubuggFlag + 1
If dubuggFlag > 1 Then
dubuggFlag = 0
Unload Me
End If

End Sub

Private Sub Form_Load()
dubuggFlag = 0
m = 0
grayNumflag = 0
Call grayValueText_Change
End Sub



Private Sub grayShow_Click()
 '�ж����ݳ���
 If m < 5 Then
 MsgBox "���ݹ���", vbExclamation + vbOKOnly, "��������"
 'Exit Function
 Exit Sub
 End If
laberGrayinfo.Caption = "��ǰ���� " + CStr(gstr(grayNumflag)) + "/255" 'CStr


Dim tep As String
tep = "5A55120400" + CStr(Replace((Format(Hex(gstr(grayNumflag)), "@@")), " ", "0")) + "00AA"
showTest.Text1 = frmSet.comSend(tep)

''0~9ת����16����ʱ��ת��00 01~09�ĸ�ʽ���Է���Э��Ҫ��

If grayNumflag < m Then
grayNumflag = grayNumflag + 1
Else
grayNumflag = 0
End If
End Sub

Private Sub grayValueText_Change()
Dim i, j As Integer
Dim a
Dim b$()
Dim c$()

 
  a = grayValueText.Text
  a = Replace(a, " ", "")   'ȥ�ո�
  
  
  If a = "" Then   '��ֹ������
    grayValueText.Text = "0,"
    grayValueText.SelStart = Len(grayValueText.Text)
     a = "0"
  End If
  
  b = Split(a, ",", -1, 1)  '����a������ȥ���ź�����b
  
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
  ReDim gstr(m)        ',ȷ������gstr��С

 
For i = 0 To m   ' �Ѵ����������͵�gstr
                            '�ж��Ƿ�Ϊ10��������
     If (c(i) Like "*[!0-9, ]*") Then
    ' MsgBox "���ݸ�ʽ�Ƿ�", vbExclamation + vbOKOnly, "��������"
    Label4.Caption = "���ݸ�ʽ�Ƿ�"
    grayShow.Enabled = False
     Exit Sub
     End If
     
     gstr(i) = Val(c(i))
     If gstr(i) > 255 Then
     'MsgBox "���ݳ���Χ�����޸�ʹ�䴦�ڷ�Χ��0��255��", vbExclamation + vbOKOnly, "��������"
     Label4.Caption = "���ݳ���Χ"
     grayShow.Enabled = False
     Exit Sub
     End If
         
Next

'If Not cmdBusyFlag Then
'CommandmanualMeasure.Enabled = True
'Else: CommandmanualMeasure.Enabled = False
'End If
grayShow.Enabled = True
Label4.Caption = ""
End Sub

Private Sub P1_Click() 'Flicker
Dim tep As String
tep = "5A551217010400AA"
showTest.Text1 = frmSet.comSend(tep)
End Sub
Private Sub P2_Click()  'CT.Center.white
Dim tep As String
tep = "5A55121AFF0400AA        "
showTest.Text1 = frmSet.comSend(tep)
End Sub



Private Sub P3_Click() '����
Dim tep As String
tep = "5A55120BFF0100AA                "
showTest.Text1 = frmSet.comSend(tep)
End Sub

Private Sub P4_Click() 'r
Dim tep As String
tep = "5A,55,11,ff,00,00,00AA                "
showTest.Text1 = frmSet.comSend(tep)
End Sub

Private Sub P5_Click() 'G
Dim tep As String
tep = "5A,55,11,00,FF,00,00AA"
showTest.Text1 = frmSet.comSend(tep)
End Sub

Private Sub P6_Click() 'B
Dim tep As String
tep = "5A,55,11,00,00,FF,00AA"
showTest.Text1 = frmSet.comSend(tep)
End Sub

Private Sub P7_Click()      'white
Dim tep As String
tep = "5A,55,11,ff,ff,FF,00AA"
showTest.Text1 = frmSet.comSend(tep)
End Sub

Private Sub P8_Click()  'gray 127
Dim tep As String
tep = "5A,55,11,7f,7f,7f,00AA "
showTest.Text1 = frmSet.comSend(tep)
End Sub

Private Sub P9_Click()
Dim tep As String
tep = "5A,55,11,00,00,00,00AA " 'Black
showTest.Text1 = frmSet.comSend(tep)
End Sub

Private Sub P10_Click()   '�߿�
Dim tep As String
tep = "5A,55,12,05,00,FF,00AA"
showTest.Text1 = frmSet.comSend(tep)
End Sub

Private Sub P11_Click() 'gray.h
Dim tep As String
tep = "5A,55,12,0c,00,FF,00AA"
showTest.Text1 = frmSet.comSend(tep)
End Sub

Private Sub P12_Click()  'Gray V
Dim tep As String
tep = "5A,55,12,0d,00,FF,00AA"
showTest.Text1 = frmSet.comSend(tep)
End Sub

Private Sub P13_Click()  'red.h
Dim tep As String
tep = "5A,55,12,0e,00,FF,00AA"
showTest.Text1 = frmSet.comSend(tep)
End Sub

Private Sub P14_Click()  'red.v
Dim tep As String
tep = "5A,55,12,0f,00,FF,00AA"
showTest.Text1 = frmSet.comSend(tep)
End Sub

Private Sub P15_Click()  ' green.h
Dim tep As String
tep = "5A,55,12,10,00,FF,00AA"
showTest.Text1 = frmSet.comSend(tep)
End Sub

Private Sub P16_Click()  'green.v
Dim tep As String
tep = "5A,55,12,11,00,FF,00AA"
showTest.Text1 = frmSet.comSend(tep)
End Sub

Private Sub P17_Click() 'blue.h
Dim tep As String
tep = "5A,55,12,12,00,FF,00AA"
showTest.Text1 = frmSet.comSend(tep)
End Sub

Private Sub P18_Click()   'blue.v
Dim tep As String
tep = "5A,55,12,13,00,FF,00AA"
showTest.Text1 = frmSet.comSend(tep)
End Sub

Private Sub P19_Click() 'FLICKER.H
Dim tep As String
tep = "5A,55,12,14,00,FF,00AA"
showTest.Text1 = frmSet.comSend(tep)
End Sub
Private Sub P20_Click()   ''BLICKER.V
Dim tep As String
tep = "5A,55,12,15,00,FF,00AA"
showTest.Text1 = frmSet.comSend(tep)
End Sub

Private Sub P21_Click()  'FLICKER_H.DOT
Dim tep As String
tep = "5A,55,12,16,00,FF,00AA"
showTest.Text1 = frmSet.comSend(tep)
End Sub

Private Sub P22_Click() ''  'DOT. FLICKER_A
Dim tep As String
tep = "5A,55,12,17,00,FF,00AA"
showTest.Text1 = frmSet.comSend(tep)
End Sub

Private Sub P23_Click()   'tbd
Dim tep As String
tep = "5A,55,12,18,00,FF,00AA"
showTest.Text1 = frmSet.comSend(tep)
End Sub

Private Sub P24_Click()  'tbd
Dim tep As String
tep = "5A,55,12,19,00,FF,00AA"
showTest.Text1 = frmSet.comSend(tep)
End Sub

Private Sub P25_Click() 'ct center.127gray
Dim tep As String
tep = "5A,55,12,1a,00,FF,00AA"
showTest.Text1 = frmSet.comSend(tep)
End Sub

Private Sub P26_Click()
showTest.Text1.Text = "δ���廭��2"
End Sub

Private Sub P27_Click()
showTest.Text1.Text = "δ���廭��3"
End Sub
Private Sub PcmdSend_Click()
Call frmSet.comSend(showTest.Text1.Text)
End Sub


Private Sub Text2_Change()

End Sub

