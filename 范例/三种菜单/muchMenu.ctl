VERSION 5.00
Begin VB.UserControl muchMenu 
   Appearance      =   0  'Flat
   AutoRedraw      =   -1  'True
   BackColor       =   &H00FDEAD9&
   BorderStyle     =   1  'Fixed Single
   ClientHeight    =   495
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   2280
   FillColor       =   &H00FF8080&
   PropertyPages   =   "muchMenu.ctx":0000
   ScaleHeight     =   495
   ScaleWidth      =   2280
   Begin VB.Frame Frame1 
      BackColor       =   &H00FFFFC0&
      BorderStyle     =   0  'None
      Caption         =   "Frame1"
      Height          =   450
      Left            =   500
      TabIndex        =   0
      Top             =   0
      Width           =   1905
      Begin VB.Label mLabel 
         BackColor       =   &H00FFFFC0&
         Caption         =   "Menu"
         BeginProperty Font 
            Name            =   "����"
            Size            =   10.5
            Charset         =   134
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   210
         Index           =   1
         Left            =   0
         TabIndex        =   1
         Top             =   45
         Width           =   2775
      End
   End
   Begin VB.Image mImage 
      Height          =   240
      Left            =   120
      Top             =   120
      Visible         =   0   'False
      Width           =   240
   End
End
Attribute VB_Name = "muchMenu"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Attribute VB_Ext_KEY = "PropPageWizardRun" ,"Yes"
Option Explicit
'Download by http://down.liehuo.net
Public Event Click(SelectedItem As Integer) '����˵�����¼�

Dim mCaption(1 To 10, 1 To 20) As String '�˵����ı�
Dim mItemSum(1 To 10) As Integer '��ǰ�˵���Ĳ˵�������������ʱֻ����
Dim sRep As Integer              '�˵�������
Dim vRep As Integer              '��ǰ�˵���
Dim sItemSum As Integer          '��ǰ�˵������һ�β˵�������
Dim mindex As Integer            '��һ����꾭���Ĳ˵����
Dim mStartColor As Long          '������ʼɫ
Dim mCeaseColor As Long          '�������ɫ
Dim i As Integer

Private Sub mLabel_Click(Index As Integer)
If left(mLabel(Index).Caption, 1) <> "-" Then RaiseEvent Click(Index) 'ת�������¼�
End Sub

Private Sub UserControl_Click()
If left(mLabel(mindex).Caption, 1) <> "-" Then RaiseEvent Click(mindex) 'ת�������¼�
End Sub

Private Sub UserControl_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
SetMenu (Y * sItemSum \ Height + 1)
End Sub

Private Sub mLabel_MouseMove(Index As Integer, Button As Integer, Shift As Integer, X As Single, Y As Single)
SetMenu (Index)
End Sub

Private Sub SetMenu(Index As Integer)
If left(mLabel(Index).Caption, 1) = "-" Then Exit Sub
mLabel(mindex).BackColor = &HFFFFC0
mLabel(mindex).ForeColor = 0
mLabel(Index).BackColor = &H8000&
mLabel(Index).ForeColor = &HFFFFFF
mindex = Index
End Sub

Public Property Get Font() As Font
Attribute Font.VB_Description = "����/���ò˵����ı������塣"
Set Font = mLabel(1).Font
End Property

Public Property Set Font(ByVal NewFont As Font) 'ע�⣺����ֻ���á�Set���������á�Let��
Set mLabel(1).Font = NewFont
PropertyChanged "Font"
End Property

Public Property Get RepeatCount() As Integer '�˵�������
Attribute RepeatCount.VB_Description = "����/���ò˵��ؼ����ܲ���������ʱֻ����"
RepeatCount = sRep
End Property

Public Property Let RepeatCount(ByVal NewValue As Integer) '����ʱֻ��
If Not Ambient.UserMode And NewValue > 0 And NewValue < 11 Then
  sRep = NewValue
  PropertyChanged "RepeatCount"
End If
End Property

Public Property Get RepeatCurrent() As Integer '��ǰ�˵���
Attribute RepeatCurrent.VB_Description = "����/���õ�ǰ�Ĳ˵����š�"
RepeatCurrent = vRep
End Property

Public Property Let RepeatCurrent(ByVal NewValue As Integer)
If NewValue > 0 And NewValue <= sRep Then
  mindex = 1
  vRep = NewValue
  PropertyChanged "RepeatCurrent"
  DrawMenu
End If
End Property

Public Property Get ItemS() As Integer '��ǰ�˵���Ĳ˵�������
Attribute ItemS.VB_Description = "����/���õ�ǰ�˵���Ĳ˵�������������ʱֻ����"
ItemS = mItemSum(vRep)
End Property

Public Property Let ItemS(ByVal NewValue As Integer) '����ʱֻ��
If Not Ambient.UserMode And NewValue > 0 And NewValue < 21 Then
  mItemSum(vRep) = NewValue
  PropertyChanged "ItemSum"
  DrawMenu
End If
End Property

Public Property Get Caption(ByVal Index As Integer) As String '��ǰ�˵�����˵�����ı�
Attribute Caption.VB_Description = "����/���ò˵�ͼ����������ɫ����Ľ���ɫ��"
Caption = mCaption(vRep, Index)
End Property

Public Property Let Caption(ByVal Index As Integer, ByVal newVal As String)
mCaption(vRep, Index) = newVal
mLabel(Index).Caption = newVal
PropertyChanged "sCaption"
End Property

Public Property Get CeaseColor() As OLE_COLOR
Attribute CeaseColor.VB_Description = "����/���ò˵�ͼ����������ɫ����Ľ���ɫ��"
CeaseColor = mCeaseColor
End Property

Public Property Let CeaseColor(ByVal NewColor As OLE_COLOR)
mCeaseColor = NewColor
PropertyChanged "CeaseColor"
DrawMenu
End Property

Public Property Get StartColor() As OLE_COLOR
Attribute StartColor.VB_Description = "����/���ò˵�ͼ����������ɫ�������ʼɫ��"
StartColor = mStartColor
End Property

Public Property Let StartColor(ByVal NewColor As OLE_COLOR)
mStartColor = NewColor
PropertyChanged "StartColor"
DrawMenu
End Property

Private Sub UserControl_Initialize() '���¼��е������ڴ���ҳ���Form_Load�¼�
For i = 1 To 10: mItemSum(i) = 1: Next
mindex = 1: sItemSum = 1: sRep = 1: vRep = 1
End Sub

Private Sub UserControl_ReadProperties(PropBag As PropertyBag)
Dim j As Integer
With PropBag
  mStartColor = .ReadProperty("StartColor", &HFFFFC0)
  mCeaseColor = .ReadProperty("CeaseColor", &H8000&)
  Set mLabel(1).Font = .ReadProperty("Font", Ambient.Font)
  sRep = .ReadProperty("RepeatCount", 1)
  vRep = .ReadProperty("RepeatCurrent", 1)
  For i = 1 To sRep: mItemSum(i) = .ReadProperty("ItemSum" & i, 1): Next
  For j = 1 To sRep: For i = 1 To mItemSum(j): mCaption(j, i) = .ReadProperty("sCaption" & j * 10 & i, ""): Next: Next
End With
End Sub

Private Sub UserControl_WriteProperties(PropBag As PropertyBag)
Dim j As Integer
With PropBag
  .WriteProperty "StartColor", mStartColor, &HFFFFC0
  .WriteProperty "CeaseColor", mCeaseColor, &H8000&
  .WriteProperty "Font", mLabel(1).Font, Ambient.Font
  .WriteProperty "RepeatCount", sRep, 1
  .WriteProperty "RepeatCurrent", vRep, 1
  For i = 1 To sRep: .WriteProperty "ItemSum" & i, mItemSum(i), 1: Next
  For j = 1 To sRep: For i = 1 To mItemSum(j): .WriteProperty "sCaption" & j * 10 & i, mCaption(j, i), "": Next: Next
End With
End Sub

Private Sub UserControl_Show()
DrawMenu
End Sub

Private Sub DrawMenu() '���Ʋ˵�
Dim iPath As String 'ͼ��·��
Height = 270 * mItemSum(vRep)
Frame1.Move 500, 0, Width - 500, Height
mLabel(1).Move 15, 30, Frame1.Width
Cls
mLabel(1).BackColor = &HFFFFC0
mLabel(1).ForeColor = 0
��ɫ����
If mItemSum(vRep) > 0 Then
  If mLabel.Count > 1 Then For i = 2 To sItemSum: Unload mLabel(i): Next '�������һ�ν����ı�ǩ�ؼ����飬��ɾ��
  For i = 2 To mItemSum(vRep): Load mLabel(i): mLabel(i).Move 15, (i - 1) * 265 + 30: mLabel(i).Visible = True: Next '������ǰ�ı�ǩ�ؼ�����
  For i = 1 To mItemSum(vRep)
    mLabel(i).Caption = mCaption(vRep, i)
    iPath = App.Path & "\ͼƬ\" & vRep * 10 & i & ".ico"
    If Len(Dir(iPath)) Then mImage.Picture = LoadPicture(iPath): PaintPicture mImage, 100, (i - 1) * 265 + 30
  Next
End If
sItemSum = mItemSum(vRep)
End Sub

Private Sub ��ɫ����()
Dim rSta, gSta, bSta, rEnd, gEnd, bEnd, rInfo, gInfo, bInfo
rSta = mStartColor Mod 256: gSta = mStartColor \ 256 Mod 256: bSta = mStartColor \ 256 \ 256
rEnd = mCeaseColor Mod 256: gEnd = mCeaseColor \ 256 Mod 256: bEnd = mCeaseColor \ 256 \ 256
rInfo = (rEnd - rSta) / Height: gInfo = (gEnd - gSta) / Height: bInfo = (bEnd - bSta) / Height
For i = 0 To Height: Line (0, i)-(500, i), RGB(rSta + i * rInfo, gSta + i * gInfo, bSta + i * bInfo): Next
End Sub
