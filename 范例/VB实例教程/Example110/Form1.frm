VERSION 5.00
Begin VB.Form Form1 
   AutoRedraw      =   -1  'True
   Caption         =   "BinaryFile"
   ClientHeight    =   1995
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   4395
   LinkTopic       =   "Form1"
   ScaleHeight     =   1995
   ScaleWidth      =   4395
   StartUpPosition =   3  '����ȱʡ
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Load()
    Dim c As Variant
    c = "abcd"
    Dim numFile As Integer
    numFile = FreeFile()
    Open App.Path + "\test.dat" For Binary Access Read Write As #numFile
    Put #numFile, 1, c
    Get #numFile, 1, c
    Form1.Print c
    Close #numFile
        
    Dim MyArray1(2, 1) As Integer
    Dim MyArray2(2, 1) As Integer
    '����Integer��������

    MyArray1(0, 0) = 10
    MyArray1(0, 1) = 6

    MyArray1(1, 0) = 9
    MyArray1(1, 1) = 66

    MyArray1(2, 0) = 8
    MyArray1(2, 1) = 888
    'Ϊ����MyArray1��ֵ
    numFile = FreeFile()
    Open App.Path + "\test.dat" For Binary Access Read Write As #numFile
    Put #numFile, Len(c) * 8, MyArray1
    '������MyArray1�����ݴ���test.dat
    'ע��ָ���Ĵ���λ��
    'Len(c)�õ������ַ������ַ��ĸ���
    '��ÿ���ַ�ռ8bit
    '����MyArray1�洢����ǰд������ݺ�
    '�������ÿ�ʼ����λ��ΪLen(c)*8

    Get #numFile, Len(c) * 8, MyArray2
    '��ָ��λ�õ����ݴ���MyArray2
    Dim i, j As Integer
    For i = 0 To 2
        For j = 0 To 1
        Form1.Print MyArray2(i, j)
        Next
    Next
    '��ʾMyArray2����
    Close #numFile
End Sub
