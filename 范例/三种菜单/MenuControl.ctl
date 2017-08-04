VERSION 5.00
Begin VB.UserControl MenuControl 
   AutoRedraw      =   -1  'True
   BackColor       =   &H0080FF80&
   ClientHeight    =   960
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   1800
   ScaleHeight     =   960
   ScaleWidth      =   1800
   Begin VB.PictureBox menuitem 
      BackColor       =   &H0000FFFF&
      BorderStyle     =   0  'None
      Height          =   320
      Left            =   0
      ScaleHeight     =   315
      ScaleWidth      =   1695
      TabIndex        =   0
      Top             =   0
      Visible         =   0   'False
      Width           =   1695
   End
End
Attribute VB_Name = "MenuControl"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit

Private Type menuRect  '�����˵�����Σ�����ƶ�ʱ���˵���ͳ����ڶ�Ӧ�ľ���λ��
  left As Integer
  top As Integer
  right As Integer
  bottom As Integer
End Type

Public Event Click(SelectedItem As Integer) '����˵���������¼�

Dim SelectedItem As Integer  '��ѡ�еĲ˵�����
Attribute SelectedItem.VB_VarDescription = "��ѡ�еĲ˵��ֻ������"
Dim mItemSum As Integer      '�˵�������������ʱֻ����
Dim mRects() As menuRect     '�˵���������飬������¼���в˵����λ��
Dim mStartColor As Long      '������ʼɫ
Dim mCeaseColor As Long      '�������ɫ

Private Sub menuitem_Click()
RaiseEvent Click(SelectedItem) 'ת�������¼�
End Sub

Public Property Get ItemSum() As Integer '�˵�������
Attribute ItemSum.VB_Description = "�˵�������������ʱֻ������"
ItemSum = mItemSum
End Property

Public Property Let ItemSum(ByVal vNewValue As Integer) '����������ʱֻ��
If Not Ambient.UserMode And vNewValue > 1 Then
  mItemSum = vNewValue
  PropertyChanged "ItemSum"
  UserControl_Resize
End If
End Property

Public Property Get CeaseColor() As OLE_COLOR
Attribute CeaseColor.VB_Description = "����/���ò˵�������ɫ����Ľ���ɫ��"
CeaseColor = mCeaseColor
End Property

Public Property Let CeaseColor(ByVal NewColor As OLE_COLOR)
mCeaseColor = NewColor
PropertyChanged "CeaseColor"
��ɫ����
End Property

Public Property Get StartColor() As OLE_COLOR
Attribute StartColor.VB_Description = "����/���ò˵�������ɫ�������ʼɫ��"
StartColor = mStartColor
End Property

Public Property Let StartColor(ByVal NewColor As OLE_COLOR)
mStartColor = NewColor
PropertyChanged "StartColor"
��ɫ����
End Property

Private Sub UserControl_ReadProperties(PropBag As PropertyBag)
With PropBag
  mItemSum = .ReadProperty("ItemSum", 1)
  mStartColor = .ReadProperty("StartColor", &HFFFFC0)
  mCeaseColor = .ReadProperty("CeaseColor", &H8000&)
End With
End Sub

Private Sub UserControl_WriteProperties(PropBag As PropertyBag)
With PropBag
  .WriteProperty "ItemSum", mItemSum, 1
  .WriteProperty "StartColor", mStartColor, &HFFFFC0
  .WriteProperty "CeaseColor", mCeaseColor, &H8000&
End With
End Sub

Private Sub UserControl_Show()
PopAndLoadpic
End Sub

Private Sub UserControl_InitProperties()
mItemSum = 1
mStartColor = &HFFFFC0
mCeaseColor = &H8000&
End Sub

Private Sub UserControl_Resize() '�����ؼ���С
UserControl.Height = 320 * mItemSum
menuitem.Width = UserControl.Width
End Sub

Sub PopAndLoadpic() '���ɲ˵������
Dim i As Integer
ReDim mRects(mItemSum) '���¶���˵����������

For i = 1 To mItemSum
  mRects(i).left = 0       '�˵��������߾�
  mRects(i).right = menuitem.Width '�˵�������ұ߾�
  mRects(i).top = IIf(i = 1, 0, mRects(i - 1).bottom) '����ǵ�һ���˵������ζ��ࣽ0��������һ���˵�����εĵױ�
  mRects(i).bottom = mRects(i).top + menuitem.Height  '�˵���ױ߸߶�
Next i
��ɫ����
End Sub

Private Sub UserControl_MouseMove(Button As Integer, Shift As Integer, x As Single, y As Single)
Dim i As Integer, mName As String
For i = 1 To mItemSum
  If y > mRects(i).top And y <= mRects(i).bottom Then
    SelectedItem = i: mName = App.Path & "\ͼƬ\" & i & ".bmp"
    If Len(Dir(mName)) Then menuitem.Picture = LoadPicture(mName)
    menuitem.Move 0, mRects(i).top
    menuitem.Visible = True
    Exit Sub
  End If
Next
End Sub

Private Sub ��ɫ����()
Dim rSta, gSta, bSta, rEnd, gEnd, bEnd, rInfo, gInfo, bInfo
Dim i As Integer
rSta = mStartColor Mod 256: gSta = mStartColor \ 256 Mod 256: bSta = mStartColor \ 256 \ 256
rEnd = mCeaseColor Mod 256: gEnd = mCeaseColor \ 256 Mod 256: bEnd = mCeaseColor \ 256 \ 256
rInfo = (rEnd - rSta) / Height: gInfo = (gEnd - gSta) / Height: bInfo = (bEnd - bSta) / Height
For i = 0 To Height: Line (0, i)-(Width, i), RGB(rSta + i * rInfo, gSta + i * gInfo, bSta + i * bInfo): Next
End Sub
