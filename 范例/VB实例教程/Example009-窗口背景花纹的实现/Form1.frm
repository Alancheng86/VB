VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "��������"
   ClientHeight    =   3195
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   4680
   LinkTopic       =   "Form1"
   ScaleHeight     =   3195
   ScaleWidth      =   4680
   StartUpPosition =   3  '����ȱʡ
   Begin VB.PictureBox Pic1 
      BorderStyle     =   0  'None
      Height          =   375
      Left            =   120
      ScaleHeight     =   375
      ScaleWidth      =   495
      TabIndex        =   0
      Top             =   240
      Width           =   495
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub BackGround(f As Form, pic As PictureBox)
    For i = 0 To (f.ScaleWidth \ pic.Width)
        For j = 0 To (f.ScaleHeight \ pic.Height)
            PaintPicture pic.Picture, i * pic.Width, j * pic.Height
        Next
    Next
'��pic�е�ͼƬ��������������Ϊ���ڱ�������
End Sub

Private Sub Form_Load()
    Me.AutoRedraw = True
    '���ڿ����Զ��ػ�
    Pic1.Visible = False
    '����
    Pic1.BorderStyle = 0
    'û�б߿�
    Pic1.AutoSize = True
    '���������ͼƬ�Զ����ڴ�С
    Pic1.Picture = LoadPicture(App.Path + "\3.bmp")
    '����ͼƬ
    'Appָ������
    'App.Pathָ������·��
    '�ļ�3.bmp�洢�ڱ�����Ŀ¼��
    BackGround Me, Pic1
    '�����ӹ���BackGround��Pic1�е�ͼƬ��������
End Sub
Private Sub Form_Resize()
   BackGround Me, Pic1
End Sub
