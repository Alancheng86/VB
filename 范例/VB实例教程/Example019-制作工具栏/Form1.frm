VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "mscomctl.ocx"
Begin VB.Form Form1 
   Caption         =   "������"
   ClientHeight    =   2970
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   5745
   LinkTopic       =   "Form1"
   ScaleHeight     =   2970
   ScaleWidth      =   5745
   StartUpPosition =   3  '����ȱʡ
   Begin MSComctlLib.ImageList ImageList1 
      Left            =   720
      Top             =   720
      _ExtentX        =   1005
      _ExtentY        =   1005
      BackColor       =   -2147483643
      ImageWidth      =   16
      ImageHeight     =   16
      MaskColor       =   12632256
      _Version        =   393216
      BeginProperty Images {2C247F25-8591-11D1-B16A-00C0F0283628} 
         NumListImages   =   7
         BeginProperty ListImage1 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Form1.frx":0000
            Key             =   ""
         EndProperty
         BeginProperty ListImage2 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Form1.frx":0112
            Key             =   ""
         EndProperty
         BeginProperty ListImage3 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Form1.frx":0224
            Key             =   ""
         EndProperty
         BeginProperty ListImage4 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Form1.frx":0766
            Key             =   ""
         EndProperty
         BeginProperty ListImage5 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Form1.frx":0878
            Key             =   ""
         EndProperty
         BeginProperty ListImage6 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Form1.frx":098A
            Key             =   ""
         EndProperty
         BeginProperty ListImage7 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Form1.frx":0A9C
            Key             =   ""
         EndProperty
      EndProperty
   End
   Begin VB.TextBox Text1 
      Height          =   2415
      Left            =   720
      MultiLine       =   -1  'True
      TabIndex        =   0
      Text            =   "Form1.frx":0BAE
      Top             =   960
      Width           =   2535
   End
   Begin MSComctlLib.Toolbar Toolbar1 
      Align           =   1  'Align Top
      Height          =   420
      Left            =   0
      TabIndex        =   1
      Top             =   0
      Width           =   5745
      _ExtentX        =   10134
      _ExtentY        =   741
      ButtonWidth     =   1138
      ButtonHeight    =   582
      Appearance      =   1
      TextAlignment   =   1
      ImageList       =   "ImageList1"
      _Version        =   393216
      BeginProperty Buttons {66833FE8-8583-11D1-B16A-00C0F0283628} 
         NumButtons      =   9
         BeginProperty Button1 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Key             =   "Open"
            Description     =   "ͨ���Ի�����ı��ļ�"
            Object.ToolTipText     =   "���ļ�"
            Object.Tag             =   "Open"
            ImageIndex      =   1
            MixedState      =   -1  'True
         EndProperty
         BeginProperty Button2 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Key             =   "Save"
            Description     =   "�����ļ�"
            Object.ToolTipText     =   "�����ļ�"
            ImageIndex      =   2
         EndProperty
         BeginProperty Button3 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Style           =   3
         EndProperty
         BeginProperty Button4 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Key             =   "Preview"
            Description     =   "��ӡԤ��"
            Object.ToolTipText     =   "��ӡԤ��"
            ImageIndex      =   3
         EndProperty
         BeginProperty Button5 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Key             =   "Print"
            Description     =   "��ӡ"
            Object.ToolTipText     =   "��ӡ"
            ImageIndex      =   4
         EndProperty
         BeginProperty Button6 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Style           =   3
         EndProperty
         BeginProperty Button7 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Key             =   "FontBold"
            Description     =   "����"
            Object.ToolTipText     =   "����"
            ImageIndex      =   5
            Style           =   1
            Object.Width           =   1
         EndProperty
         BeginProperty Button8 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Key             =   "FontItalic "
            Description     =   "б��"
            Object.ToolTipText     =   "б��"
            ImageIndex      =   6
            Style           =   1
         EndProperty
         BeginProperty Button9 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Key             =   "FontULine"
            Description     =   "�»� ��"
            Object.ToolTipText     =   "�»� ��"
            ImageIndex      =   7
            Style           =   1
         EndProperty
      EndProperty
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Toolbar1_ButtonClick( _
        ByVal Button As MSComctlLib.Button)
    Select Case Button.Index
        Case 7
        '��������İ�ť��Index����Ϊ7
            If Button.Value = tbrPressed Then
               Text1.FontBold = True
            '�����ʱ��ť����ѡ��״̬
            '��Text1��FontBold��������ΪTrue
            Else
               Text1.FontBold = False
               '�����ʱ��ť���ڷ�ѡ��״̬
               '��Text1��FontBold��������ΪFalse
            End If
        Case 8
        '��������İ�ť��Index����Ϊ8
            If Button.Value = tbrPressed Then
               Text1.FontItalic = True
               '�����ʱ��ť����ѡ��״̬
               '��Text1��FontItalic��������ΪTrue
            Else
                Text1.FontItalic = False
            End If
        Case 9
            If Button.Value = tbrPressed Then
               Text1.FontUnderline = True
            Else
                Text1.FontUnderline = False
            End If
    End Select

End Sub
