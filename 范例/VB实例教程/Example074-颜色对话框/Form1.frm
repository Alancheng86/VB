VERSION 5.00
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "comdlg32.ocx"
Begin VB.Form Form1 
   Caption         =   "��ɫ�Ի���"
   ClientHeight    =   3135
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   5370
   LinkTopic       =   "Form1"
   ScaleHeight     =   3135
   ScaleWidth      =   5370
   StartUpPosition =   3  '����ȱʡ
   Begin MSComDlg.CommonDialog CommonDialog1 
      Left            =   3480
      Top             =   1920
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
      CancelError     =   -1  'True
   End
   Begin VB.CommandButton Command2 
      Caption         =   "���������ɫ"
      Height          =   495
      Left            =   3360
      TabIndex        =   1
      Top             =   1080
      Width           =   1815
   End
   Begin VB.CommandButton Command1 
      Caption         =   "���ñ߿���ɫ"
      Height          =   495
      Left            =   3360
      TabIndex        =   0
      Top             =   240
      Width           =   1815
   End
   Begin VB.Shape Shape1 
      BorderWidth     =   10
      FillStyle       =   3  'Vertical Line
      Height          =   2415
      Left            =   360
      Shape           =   4  'Rounded Rectangle
      Top             =   240
      Width           =   2415
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub Command1_Click()
'ʹ����ɫ�Ի������ñ߿���ɫ
    On Error GoTo Err_Handle
    CommonDialog1.ShowColor
    Shape1.BorderColor = CommonDialog1.Color
    Exit Sub
Err_Handle:
    MsgBox Err.Description
    Exit Sub
End Sub

Private Sub Command2_Click()
'ʹ����ɫ�Ի������������ɫ
    On Error GoTo Err_Handle
    CommonDialog1.ShowColor
    Shape1.FillColor = CommonDialog1.Color
    Exit Sub
Err_Handle:
    MsgBox Err.Description
    Exit Sub

End Sub

Private Sub Form_Load()
    With CommonDialog1
        .DialogTitle = "��ɫ"
        .Flags = cdCClFullOpen
    End With
End Sub
