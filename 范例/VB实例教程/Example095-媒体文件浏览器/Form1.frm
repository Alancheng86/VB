VERSION 5.00
Object = "{6BF52A50-394A-11D3-B153-00C04F79FAA6}#1.0#0"; "wmp.dll"
Begin VB.Form Form1 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "ý���ļ������"
   ClientHeight    =   6540
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   7485
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   6540
   ScaleWidth      =   7485
   StartUpPosition =   3  '����ȱʡ
   Begin VB.FileListBox File1 
      Height          =   3690
      Left            =   120
      TabIndex        =   2
      Top             =   2400
      Width           =   2535
   End
   Begin VB.DirListBox Dir1 
      Height          =   1770
      Left            =   120
      TabIndex        =   1
      Top             =   480
      Width           =   2535
   End
   Begin VB.DriveListBox Drive1 
      Height          =   300
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   2535
   End
   Begin WMPLibCtl.WindowsMediaPlayer WindowsMediaPlayer1 
      Height          =   6015
      Left            =   2760
      TabIndex        =   3
      Top             =   120
      Width           =   4455
      URL             =   ""
      rate            =   1
      balance         =   0
      currentPosition =   0
      defaultFrame    =   ""
      playCount       =   1
      autoStart       =   -1  'True
      currentMarker   =   0
      invokeURLs      =   -1  'True
      baseURL         =   ""
      volume          =   50
      mute            =   0   'False
      uiMode          =   "full"
      stretchToFit    =   0   'False
      windowlessVideo =   0   'False
      enabled         =   -1  'True
      enableContextMenu=   -1  'True
      fullScreen      =   0   'False
      SAMIStyle       =   ""
      SAMILang        =   ""
      SAMIFilename    =   ""
      captioningID    =   ""
      enableErrorDialogs=   0   'False
      _cx             =   7858
      _cy             =   10610
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Dir1_Change()
    File1.Path = Dir1.Path
    '�����ļ��б��
End Sub

Private Sub Drive1_Change()
    On Error GoTo IFerr          '���ش���
    Dir1.Path = Drive1.Drive    '����Ŀ¼�б��
    Exit Sub
IFerr:                           '������̴���
    MsgBox ("��ȷ���������Ƿ�׼���û��ߴ����Ѿ�������!"), _
            vbOKOnly + vbExclamation
    '����ע��Ի���
    Drive1.Drive = Dir1.Path        '�����������ı�

End Sub

Private Sub File1_Click()
    Me.WindowsMediaPlayer1.URL = Me.File1.Path + "\" + Me.File1.FileName
End Sub

Private Sub Form_Load()
    File1.Pattern = "*.AVI;*.MOV;*.DAT;*.MPG;*.WAV,*.MID;*.QT;*.MPEG"
    'ָ��File1����ʾ�̶���ʽ���ļ�
    Me.WindowsMediaPlayer1.settings.autoStart = False
    '���Զ�����
    Me.WindowsMediaPlayer1.settings.playCount = 1
    '���Ŵ���Ϊ1
End Sub

