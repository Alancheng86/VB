VERSION 5.00
Object = "{C1A8AF28-1257-101B-8FB0-0020AF039CA3}#1.1#0"; "MCI32.OCX"
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "COMDLG32.OCX"
Begin VB.Form FrmCD 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "CD������"
   ClientHeight    =   1455
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   5340
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   1455
   ScaleWidth      =   5340
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  '����ȱʡ
   Begin MSComDlg.CommonDialog CommonDialog1 
      Left            =   4800
      Top             =   360
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin VB.CommandButton ComEnd 
      Caption         =   "�˳�"
      Height          =   255
      Left            =   4440
      TabIndex        =   9
      Top             =   960
      Width           =   735
   End
   Begin VB.CommandButton ComEject 
      Caption         =   "����"
      Height          =   255
      Left            =   3720
      TabIndex        =   8
      Top             =   960
      Width           =   735
   End
   Begin VB.CommandButton ComStop 
      Caption         =   "ֹͣ"
      Height          =   255
      Left            =   3000
      TabIndex        =   7
      Top             =   960
      Width           =   735
   End
   Begin VB.CommandButton ComPause 
      Caption         =   "��ͣ"
      Height          =   255
      Left            =   2280
      TabIndex        =   6
      Top             =   960
      Width           =   735
   End
   Begin VB.CommandButton ComNext 
      Caption         =   "��һ��"
      Height          =   255
      Left            =   1560
      TabIndex        =   5
      Top             =   960
      Width           =   735
   End
   Begin VB.CommandButton ComPrev 
      Caption         =   "��һ��"
      Height          =   255
      Left            =   840
      TabIndex        =   4
      Top             =   960
      Width           =   735
   End
   Begin VB.CommandButton ComPlay 
      Caption         =   "����"
      Height          =   255
      Left            =   120
      TabIndex        =   3
      Top             =   960
      Width           =   735
   End
   Begin MCI.MMControl MMControl1 
      Height          =   330
      Left            =   120
      TabIndex        =   10
      Top             =   1200
      Width           =   5055
      _ExtentX        =   8916
      _ExtentY        =   582
      _Version        =   393216
      DeviceType      =   ""
      FileName        =   ""
   End
   Begin VB.Label Label1 
      Caption         =   "  CD������  "
      BeginProperty Font 
         Name            =   "����"
         Size            =   12
         Charset         =   134
         Weight          =   400
         Underline       =   -1  'True
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   1800
      TabIndex        =   11
      Top             =   240
      Width           =   1575
   End
   Begin VB.Label Label4 
      AutoSize        =   -1  'True
      Caption         =   "���ڲ�����ʱ�䣺"
      Height          =   180
      Left            =   3360
      TabIndex        =   2
      Top             =   600
      Width           =   1440
   End
   Begin VB.Label Label3 
      AutoSize        =   -1  'True
      Caption         =   "���ڲ�����Ŀ��"
      Height          =   180
      Left            =   1680
      TabIndex        =   1
      Top             =   600
      Width           =   1260
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      Caption         =   "��Ŀ������"
      Height          =   180
      Left            =   240
      TabIndex        =   0
      Top             =   600
      Width           =   900
   End
End
Attribute VB_Name = "FrmCD"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Load()
  MMControl1.Visible = False
End Sub

Private Sub ComPlay_Click()
  '��δѡ���ļ�ʱ���ļ���Ϊ���ַ�
  CommonDialog1.FileName = ""
  '�����ļ��Ĺ��˷�ʽ������ʾ�ļ���Ϊ.dat���ļ�
  CommonDialog1.Filter = "(vcd*.dat)��*.dat"
  '��ʼ���ļ����˷�ʽΪ*.dat
  CommonDialog1.FilterIndex = 2
  '�������ļ���ͨ�öԻ���
  CommonDialog1.ShowOpen
  '��һ���ļ���ر�ǰһ�˱��򿪵Ķ�ý���豸
  MMControl1.Command = "Close"
    '���ö�ý���豸����ΪMpegVideo
  MMControl1.DeviceType = "MpegVideo"
    '���ô򿪵��ļ�Ϊͨ�öԻ�����ѡ����ļ�
  MMControl1.FileName = CommonDialog1.FileName
    '���ļ�
  MMControl1.Command = "Open"
  MMControl1.Command = "Play"
  ComPause.Enabled = True
  ComPlay.Enabled = False
  ComStop.Enabled = True
End Sub

Private Sub MMControl1_StatusUpdate()
  Label2.Caption = "��Ŀ������" & MMControl1.Tracks
  Label4.Caption = "��Ŀ������ʱ�䣺" & Trim(Str(Int(MMControl1.Length / 60000))) + "��"
  Label3.Caption = "���ڲ�����Ŀ��" & Str(MMControl1.Track)
End Sub

Private Sub ComPrev_Click()
  MMControl1.Command = "Prev"
End Sub

Private Sub ComNext_Click()
  MMControl1.Command = "Next"
End Sub

Private Sub ComPause_Click()
  ComPlay.Enabled = True
  MMControl1.Command = "Pause"
  ComPause.Enabled = False
End Sub

Private Sub ComStop_Click()
  MMControl1.Command = "Stop"
  ComStop.Enabled = False
  ComPlay.Enabled = True
End Sub

Private Sub ComEject_Click()
  MMControl1.Command = "Stop"
  MMControl1.Command = "Eject"
  ComPlay.Enabled = True
End Sub

Private Sub ComEnd_Click()
  End
End Sub

Private Sub Form_Unload(Cancel As Integer)
  MMControl1.Command = "Stop"
  MMControl1.Command = "Close"
End Sub


