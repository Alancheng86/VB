VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   4725
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   11295
   BeginProperty Font 
      Name            =   "����"
      Size            =   10.5
      Charset         =   134
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   LinkTopic       =   "Form1"
   ScaleHeight     =   4725
   ScaleWidth      =   11295
   StartUpPosition =   3  '����ȱʡ
   Begin VB.CommandButton Command2 
      Caption         =   "����2"
      Height          =   375
      Left            =   4080
      TabIndex        =   9
      Top             =   240
      Width           =   1095
   End
   Begin VB.CommandButton Command1 
      Caption         =   "����1"
      Height          =   375
      Left            =   8280
      TabIndex        =   8
      Top             =   240
      Width           =   1095
   End
   Begin ����1.muchMenu muchMenu1 
      Height          =   1890
      Left            =   960
      TabIndex        =   7
      Top             =   240
      Visible         =   0   'False
      Width           =   2775
      _ExtentX        =   4895
      _ExtentY        =   3334
      StartColor      =   12632256
      CeaseColor      =   12648447
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "����"
         Size            =   10.5
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      RepeatCount     =   5
      RepeatCurrent   =   4
      ItemSum1        =   14
      ItemSum2        =   8
      ItemSum3        =   9
      ItemSum4        =   7
      ItemSum5        =   2
      sCaption101     =   "�½�          Ctrl+N"
      sCaption102     =   "��          Ctrl+O"
      sCaption103     =   "����          Ctrl+S"
      sCaption104     =   "���Ϊ"
      sCaption105     =   "---------------------"
      sCaption106     =   "�ı�����          F1"
      sCaption107     =   "�ı��ϲ�          F2"
      sCaption108     =   "�ı��ָ�          F3"
      sCaption109     =   "�ı��ʶ�          F4"
      sCaption1010    =   "�ı��ķ�          F5"
      sCaption1011    =   "---------------------"
      sCaption1012    =   "��ӡ          Ctrl+P"
      sCaption1013    =   "����"
      sCaption1014    =   "����"
      sCaption201     =   "ȫѡ          Ctrl+A"
      sCaption202     =   "�ֿ�          Ctrl+B"
      sCaption203     =   "--------------------"
      sCaption204     =   "����          Ctrl+Z"
      sCaption205     =   "����          Ctrl+X"
      sCaption206     =   "����          Ctrl+C"
      sCaption207     =   "ճ��          Ctrl+v"
      sCaption208     =   "ɾ��             Del"
      sCaption301     =   "����"
      sCaption302     =   "--------------------"
      sCaption303     =   "�û�����      Ctrl+I"
      sCaption304     =   "��ʱ����      Ctrl+Y"
      sCaption305     =   "ϵͳ����"
      sCaption306     =   "ϵͳ��Ϣ"
      sCaption307     =   "--------------------"
      sCaption308     =   "��ͨ����      Ctrl+G"
      sCaption309     =   "����ͳ��      Ctrl+L"
      sCaption401     =   "����>̨��    Ctrl+F1"
      sCaption402     =   "̨��>����    Ctrl+F2"
      sCaption403     =   "����>����    Ctrl+F3"
      sCaption404     =   "����>����    Ctrl+F4"
      sCaption405     =   "--------------------"
      sCaption406     =   "ȫ��>���    Ctrl+F7"
      sCaption407     =   "���>ȫ��    Ctrl+F8"
      sCaption501     =   "��������"
      sCaption502     =   "����...."
   End
   Begin VB.CommandButton Command 
      Caption         =   "����"
      Height          =   375
      Index           =   5
      Left            =   0
      TabIndex        =   6
      Top             =   2640
      Width           =   855
   End
   Begin VB.CommandButton Command 
      Caption         =   "ת��"
      Height          =   375
      Index           =   4
      Left            =   0
      TabIndex        =   5
      Top             =   2040
      Width           =   855
   End
   Begin ����1.MyMenu MyMenu1 
      Height          =   3780
      Left            =   5280
      TabIndex        =   4
      Top             =   120
      Visible         =   0   'False
      Width           =   2775
      _ExtentX        =   4895
      _ExtentY        =   6668
      StartColor      =   16777215
      CeaseColor      =   16744576
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "����"
         Size            =   10.5
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ItemSum         =   14
      sCaption1       =   "�½�          Ctrl+N"
      sCaption2       =   "��          Ctrl+O"
      sCaption3       =   "����          Ctrl+S"
      sCaption4       =   "���Ϊ"
      sCaption5       =   "---------------------"
      sCaption6       =   "�ı�����          F1"
      sCaption7       =   "�ı��ϲ�          F2"
      sCaption8       =   "�ı��ָ�          F3"
      sCaption9       =   "�ı��ʶ�          F4"
      sCaption10      =   "�ı��ķ�          F5"
      sCaption11      =   "---------------------"
      sCaption12      =   "��ӡ          Ctrl+P"
      sCaption13      =   "����"
      sCaption14      =   "����"
   End
   Begin ����1.MenuControl MenuControl1 
      Height          =   1605
      Left            =   1080
      TabIndex        =   3
      Top             =   2400
      Visible         =   0   'False
      Width           =   1695
      _ExtentX        =   2990
      _ExtentY        =   2831
      ItemSum         =   5
      CeaseColor      =   8421631
   End
   Begin VB.CommandButton Command 
      Caption         =   "ѡ��"
      Height          =   375
      Index           =   3
      Left            =   0
      TabIndex        =   2
      Top             =   1440
      Width           =   855
   End
   Begin VB.CommandButton Command 
      Caption         =   "�༭"
      Height          =   375
      Index           =   2
      Left            =   0
      TabIndex        =   1
      Top             =   840
      Width           =   855
   End
   Begin VB.CommandButton Command 
      Caption         =   "�ļ�"
      Height          =   375
      Index           =   1
      Left            =   0
      TabIndex        =   0
      Top             =   240
      Width           =   855
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
'Download by http://down.liehuo.net
Private Sub Form_Click()
MyMenu1.Visible = False
muchMenu1.Visible = False
MenuControl1.Visible = False
End Sub

Private Sub Command1_Click()
MenuControl1.Move Command1.left + Command1.Width, Command1.top
MenuControl1.Visible = True
End Sub

Private Sub Command2_Click()
MyMenu1.Move Command2.left + Command2.Width, Command2.top
MyMenu1.Visible = True
End Sub

Private Sub Command_Click(Index As Integer)
muchMenu1.Move Command(Index).left + Command(Index).Width, Command(Index).top
muchMenu1.RepeatCurrent = Index
muchMenu1.Visible = True
End Sub

Private Sub muchMenu1_Click(SelectedItem As Integer)
muchMenu1.Visible = False
MsgBox "��" & SelectedItem & "���˵��ѡ��"
End Sub

Private Sub MyMenu1_Click(SelectedItem As Integer)
MyMenu1.Visible = False
MsgBox "��" & SelectedItem & "���˵��ѡ��"
End Sub

Private Sub menuControl1_Click(SelectedItem As Integer)
MenuControl1.Visible = False
MsgBox "��" & SelectedItem & "���˵��ѡ��"
End Sub


