VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "ͼ�񶯻�"
   ClientHeight    =   4620
   ClientLeft      =   165
   ClientTop       =   735
   ClientWidth     =   6450
   LinkTopic       =   "Form1"
   ScaleHeight     =   4620
   ScaleWidth      =   6450
   StartUpPosition =   3  '����ȱʡ
   Begin VB.ListBox List1 
      Height          =   3840
      ItemData        =   "Form1.frx":0000
      Left            =   3840
      List            =   "Form1.frx":0002
      TabIndex        =   2
      Top             =   0
      Width           =   2055
   End
   Begin VB.Timer Timer 
      Enabled         =   0   'False
      Index           =   1
      Interval        =   200
      Left            =   600
      Top             =   3480
   End
   Begin VB.Timer Timer 
      Enabled         =   0   'False
      Index           =   4
      Interval        =   200
      Left            =   2040
      Top             =   3480
   End
   Begin VB.Timer Timer 
      Enabled         =   0   'False
      Index           =   6
      Interval        =   200
      Left            =   3000
      Top             =   3480
   End
   Begin VB.Timer Timer 
      Enabled         =   0   'False
      Index           =   7
      Interval        =   200
      Left            =   3480
      Top             =   3480
   End
   Begin VB.Timer Timer 
      Enabled         =   0   'False
      Index           =   3
      Interval        =   200
      Left            =   1560
      Top             =   3480
   End
   Begin VB.Timer Timer 
      Enabled         =   0   'False
      Index           =   5
      Interval        =   200
      Left            =   2520
      Top             =   3480
   End
   Begin VB.Timer Timer 
      Enabled         =   0   'False
      Index           =   2
      Interval        =   200
      Left            =   1080
      Top             =   3480
   End
   Begin VB.Timer Timer 
      Enabled         =   0   'False
      Index           =   0
      Interval        =   200
      Left            =   240
      Top             =   3480
   End
   Begin VB.PictureBox Picture2 
      AutoRedraw      =   -1  'True
      Height          =   4095
      Left            =   240
      ScaleHeight     =   4035
      ScaleWidth      =   3435
      TabIndex        =   1
      Top             =   240
      Width           =   3495
   End
   Begin VB.PictureBox Picture1 
      Height          =   4095
      Left            =   0
      ScaleHeight     =   4035
      ScaleWidth      =   3555
      TabIndex        =   0
      Top             =   0
      Width           =   3615
   End
   Begin VB.Menu Effect 
      Caption         =   "��Ч"
      Begin VB.Menu PushPull 
         Caption         =   "����"
         Index           =   0
         Shortcut        =   ^P
      End
      Begin VB.Menu mosaic 
         Caption         =   "������"
         Index           =   1
         Shortcut        =   ^M
      End
      Begin VB.Menu Roll1 
         Caption         =   "�����"
         Index           =   2
         Shortcut        =   ^R
      End
      Begin VB.Menu FCTA 
         Caption         =   "������������"
         Index           =   3
      End
      Begin VB.Menu FATC 
         Caption         =   "������������"
         Index           =   4
      End
      Begin VB.Menu cross 
         Caption         =   "����"
         Index           =   6
      End
      Begin VB.Menu VWinblind 
         Caption         =   "�����Ҷ��"
         Index           =   5
      End
      Begin VB.Menu Grid 
         Caption         =   "����"
         Index           =   7
      End
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim w, h As Single
'w��h�ֱ��¼ͼƬ�Ŀ�Ⱥ͸߶�
Dim x, y As Single
'x��y�ֱ�Ϊȡͼλ�õ�X�����Y����
'����Ҳ����˵������ȡ����Ŀ�Ⱥ͸߶�
Dim b As Boolean

Sub Stopped()
'���ø���ʱ����Ч
    For i = 0 To 7
        Timer(i).Enabled = False
    Next
End Sub
Private Sub Reset()
    w = Picture1.Width
    h = Picture1.Height
    '����ͼƬ�Ŀ�Ⱥ͸߶�
    Picture2.Width = w
    Picture2.Height = h
    '����ͼƬ����Picture2�Ŀ�Ⱥ͸߶�
    List1.Top = 0
    List1.Left = Picture2.Left + Picture2.Width + 350
    '��������List1�ؼ���λ��
    Me.Width = w + List1.Width + 700
    '���ô��ڵĿ��
    Me.Height = h + 700
    '���ô��ڵĸ߶�
    'ע�������˵��ĸ߶�
    b = False
    Stopped
End Sub
Private Sub PushPull_Click(Index As Integer)
    x = w / 2
    y = h / 2
    Timer(0).Enabled = True
    '����ʵ������Ч���ļ�ʱ��
End Sub
Private Sub mosaic_Click(Index As Integer)
    Timer(1).Enabled = True
    '����ʵ��������Ч���ļ�ʱ��
End Sub
Private Sub Roll1_Click(Index As Integer)
    x = 0
    Timer(2).Enabled = True
    '����ʵ�������Ч���ļ�ʱ��
End Sub
Private Sub FCTA_Click(Index As Integer)
    x = 0
    y = 0
    Timer(3).Enabled = True
    '����ʵ������������Ч���ļ�ʱ��
End Sub
Private Sub FATC_Click(Index As Integer)
    x = 0
    y = 0
    Timer(4).Enabled = True
    '����ʵ������������Ч���ļ�ʱ��
End Sub
Private Sub cross_Click(Index As Integer)
    x = 0
    y = 0
    Timer(5).Enabled = True
    '����ʵ�ֽ���Ч���ļ�ʱ��
End Sub
Private Sub VWinblind_Click(Index As Integer)
    x = 0
    Timer(6).Enabled = True
    '����ʵ�������Ҷ��Ч���ļ�ʱ��
End Sub
Private Sub Grid_Click(Index As Integer)
    x = 0
    y = 0
    Timer(7).Enabled = True
    '����ʵ������Ч���ļ�ʱ��
End Sub
Private Sub Form_Load()
    List1.AddItem "1.bmp", 0
    List1.AddItem "2.bmp", 1
    List1.AddItem "3.bmp", 2
    List1.AddItem "4.bmp", 3
    List1.AddItem "5.bmp", 4
    List1.AddItem "6.bmp", 5
    List1.AddItem "7.bmp", 6
    List1.AddItem "8.bmp", 7
    '����б���
    Picture1.Left = 0
    Picture1.Top = 0
    'ʹPicture1λ�ڴ��ڵ����Ͻ�
    Picture1.AutoSize = True
    'ʹPicture1�ܹ�����ͼƬ�Զ������Լ��Ŀ�Ⱥ͸߶�
    Picture1.Visible = False
    '����Picture1
    Picture1.Picture = LoadPicture(App.Path + "\1.bmp")
    '��Picture1����ʾһ��ͼƬ
    Picture2.Left = 0
    Picture2.Top = 0
    Reset
End Sub

Private Sub List1_Click()
    Picture1.Picture = LoadPicture(App.Path + "\" + List1.List(List1.ListIndex))
    Reset
    'ѡ��ͼƬ
End Sub


Private Sub Timer_Timer(Index As Integer)
    Dim m, n, xx, yy As Single
    Dim i, j As Integer

Select Case Index
Case 0
    '����Ч��
    If b Then
        x = x + w / 100
        y = y + h / 100
        If x >= w / 2 Or y >= h / 2 Then
            b = Not b
            x = w / 2 - 10
            y = h / 2 - 10
        End If
    Else
        x = x - w / 100
        y = y - h / 100
        If x < 0 Or y < 0 Then
            b = Not b
            x = 0
            y = 0
         End If
    End If
    Picture2.PaintPicture Picture1.Picture, 0, 0, w, h, x, y, w - 2 * x, h - 2 * y
Case 1
    '������Ч��
    Static c As Integer
    c = c + 1
    If c > 100 Then
        Picture2.PaintPicture Picture1.Picture, 0, 0
        c = 0
        Stopped
    End If
    m = w / 100
    n = h / 100
    For i = 0 To 50 + c * 10
        xx = Rnd * (w - m - 50)
        yy = Rnd * (h - n - 50)
        Picture2.PaintPicture Picture1.Picture, xx, yy, , , xx, yy, m, n
    Next
Case 2
    '�����
    x = x + w / 100
    Picture2.PaintPicture Picture1.Picture, w - x, 0, , , 0, 0, x, h
    If x >= w Then
        Stopped
        Picture2.Picture = Picture1.Picture
    End If
Case 3
    '������������
    x = x + w / 100
    y = y + h / 100
    If x > w / 2 Or y > h / 2 Then
        Stopped
        Picture2.Picture = Picture1.Picture
    End If
    Picture2.PaintPicture Picture1.Picture, w / 2 - x, h / 2 - y, , , w / 2 - x, h / 2 - y, 2 * x, 2 * y
Case 4
    '������������
    x = x + w / 50
    y = y + h / 50
    If x > w / 2 Or y > h / 2 Then
        Stopped
        Picture2.Picture = Picture1.Picture
    End If
    Picture2.PaintPicture Picture1.Picture, 0, 0, , , 0, 0, x, y
    Picture2.PaintPicture Picture1.Picture, 0, (h - y), , , 0, (h - y), x, y
    Picture2.PaintPicture Picture1.Picture, (w - x), 0, , , (w - x), 0, x, y
    Picture2.PaintPicture Picture1.Picture, w - x, (h - y), , , (w - x), (h - y), x, y
Case 5
    '����
    x = x + (w / 50)
    If x > w Then
     Stopped
     Picture2.Picture = Picture1.Picture
    End If
    Picture2.PaintPicture Picture1.Picture, w - x, 0, , , 0, 0, x, h / 4
    Picture2.PaintPicture Picture1.Picture, 0, h / 4, , , w - x, h / 4, x, h / 4
    Picture2.PaintPicture Picture1.Picture, w - x, h / 2, , , 0, h / 2, x, h / 4
    Picture2.PaintPicture Picture1.Picture, 0, 3 * h / 4, , , w - x, 3 * h / 4, x, h / 4
Case 6
    '�����Ҷ��
    m = w / 20
    x = x + w / 200
    If x > m Then
        Stopped
         Picture2.Picture = Picture1.Picture
    End If
    For i = 0 To 20
        Picture2.PaintPicture Picture1.Picture, i * m, 0, , , i * m, 0, x, h
    Next
Case 7
    '����Ч��
    m = w / 20
    n = h / 20
    x = x + w / 200
    y = y + h / 200
    If x > m Then
        Stopped
         Picture2.Picture = Picture1.Picture
    End If
    For i = 0 To 20
        For j = 0 To 20
            Picture2.PaintPicture Picture1.Picture, i * m, j * n, , , i * m, j * n, x, y
    Next j, i
End Select
End Sub

