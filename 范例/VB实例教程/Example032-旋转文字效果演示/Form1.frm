VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Text"
   ClientHeight    =   3255
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   3690
   LinkTopic       =   "Form1"
   ScaleHeight     =   3255
   ScaleWidth      =   3690
   StartUpPosition =   3  '����ȱʡ
   Begin VB.PictureBox Picture1 
      Height          =   1695
      Left            =   360
      ScaleHeight     =   109
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   189
      TabIndex        =   5
      Top             =   240
      Width           =   2895
   End
   Begin VB.CommandButton Command_View 
      Caption         =   "View"
      Height          =   375
      Left            =   2520
      TabIndex        =   4
      Top             =   2640
      Width           =   735
   End
   Begin VB.TextBox txtEscapement 
      Height          =   375
      Left            =   1320
      TabIndex        =   3
      Top             =   2640
      Width           =   1095
   End
   Begin VB.TextBox Text_Input 
      Height          =   375
      Left            =   1320
      TabIndex        =   1
      Top             =   2160
      Width           =   1935
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      Caption         =   "��б�Ƕ�:"
      Height          =   180
      Left            =   360
      TabIndex        =   2
      Top             =   2760
      Width           =   810
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "��ʾ����:"
      Height          =   180
      Left            =   360
      TabIndex        =   0
      Top             =   2280
      Width           =   810
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Declare Function CreateFontIndirect Lib "gdi32" _
                Alias "CreateFontIndirectA" _
                (lpLogFont As LOGFONT) _
                As Long
                
Private Declare Function SelectObject Lib "gdi32" _
                (ByVal hdc As Long, _
                ByVal hObject As Long) _
                As Long
                
Private Declare Function TextOut Lib "gdi32" _
                Alias "TextOutA" _
                (ByVal hdc As Long, _
                ByVal x As Long, _
                ByVal y As Long, _
                ByVal lpString As String, _
                ByVal nCount As Long) _
                As Long
                
Private Declare Function DeleteObject Lib "gdi32" _
                (ByVal hObject As Long) _
                As Long
                
Private Declare Function SetBkMode Lib "gdi32" _
                (ByVal hdc As Long, _
                ByVal nBkMode As Long) _
                As Long

Private Type LOGFONT
        lfHeight As Long
        lfWidth As Long
        lfEscapement As Long
        lfOrientation As Long
        lfWeight As Long
        lfItalic As Byte
        lfUnderline As Byte
        lfStrikeOut As Byte
        lfCharSet As Byte
        lfOutPrecision As Byte
        lfClipPrecision As Byte
        lfQuality As Byte
        lfPitchAndFamily As Byte
        lfFaceName As String * 50
End Type

Dim RF As LOGFONT
Dim NewFont As Long
Dim OldFont As Long

Private Sub Command_View_Click()
     Dim Throw As Long
     Me.Picture1.Cls
     RF.lfEscapement = Int(Val(Me.txtEscapement.Text)) * 10
    '�����ı���б��
     '�����������
     NewFont = CreateFontIndirect(RF)
     '����������
     OldFont = SelectObject(Me.Picture1.hdc, NewFont)
     'Ӧ��������
     x = Me.Picture1.ScaleWidth / 2
     y = Me.Picture1.ScaleHeight / 2
     'ѡ����ʾ�ı������
     Throw = TextOut(Me.Picture1.hdc, x, y, Me.Text_Input.Text, _
                Len(Me.Text_Input.Text))
     '��ʾ�ı�
     NewFont = SelectObject(Me.Picture1.hdc, OldFont)
     'ѡ�������
     Throw = DeleteObject(NewFont)
     'ɾ��������
End Sub

Private Sub Form_Load()
     SetBkMode Me.Picture1.hdc, 1
     RF.lfHeight = 50
     '�����ַ��߶�
     RF.lfWidth = 10
     '�����ַ�ƽ�����
     RF.lfEscapement = 0
     '�����ı���б��
     RF.lfWeight = 400
     '�������������
     RF.lfItalic = 0
     '���岻��б
     RF.lfUnderline = 0
     '���岻���»���
     RF.lfStrikeOut = 0
     '���岻��ɾ����
     RF.lfOutPrecision = 0
     '�����������
     RF.lfClipPrecision = 0
     '���ü�������
     RF.lfQuality = 0
     '�����������
     RF.lfPitchAndFamily = 0
     '����������־��������
     RF.lfCharSet = 0
     '�����ַ���
     RF.lfFaceName = "Arial" + Chr(0)
     '������������
     
     Me.txtEscapement.Text = RF.lfEscapement / 10
End Sub
