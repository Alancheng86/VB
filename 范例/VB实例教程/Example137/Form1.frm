VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   3195
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   4680
   LinkTopic       =   "Form1"
   ScaleHeight     =   3195
   ScaleWidth      =   4680
   StartUpPosition =   3  '����ȱʡ
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Load()
    Me.AutoRedraw = True
    
    ' Replace Sample
    S = "VB4, VB5, VB6"
    S = Replace(S, "VB", "Visual Basic ")
    Print S '�Y������"Visual Basic 4, Visual Basic 5, Visual Basic 6"

    ' Split Sample
    S = "VB4, VB5, VB6"
    X = Split(S, ", ")
    For i = 0 To UBound(X)
    Print X(i)
    Next ' �Y�� VB4��VB5��VB6 ��ݔ����һ��
    
    ' Join Sample
    X(0) = "VB4"
    X(1) = "VB5"
    X(2) = "VB6"
    S = Join(X, ", ")
    Print S ' �Y�����"VB4, VB5, VB6"
    
    ' StrReverse Sample
    V = StrReverse("Wangxingjing")
    Print V
    
    ' InStrRev Sample
    X = "Hi Hi Hi Hi Hi Hi"
    V = InStrRev(X, "Hi")
    ' �Y�� V = 16
    Print V
    
    V = InStrRev(X, "Hi", 12)
    ' �Y�� V = 10
    Print V
End Sub
