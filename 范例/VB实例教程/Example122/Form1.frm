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
Enum COMPUTER_NAME_FORMAT
    ComputerNameNetBIOS
    'NetBIOS��
    ComputerNameDnsHostname
    'DNS������
    ComputerNameDnsDomain
    'DNS����
    ComputerNameDnsFullyQualified
    '��ȫ����DNS��
    ComputerNamePhysicalNetBIOS
    '�����NetBIOS��
    ComputerNamePhysicalDnsHostname
    '�����DNS������
    ComputerNamePhysicalDnsDomain
    '�����DNS������
    ComputerNamePhysicalDnsFullyQualified
    '�������ȫ����DNS��
    ComputerNameMax
    'δʹ��
End Enum

Private Declare Function GetComputerNameEx Lib "kernel32.dll" _
                Alias "GetComputerNameExA" _
                (ByVal NameType As Long, _
                ByVal lpBuffer As String, _
                lpnSize As Long) As Long

Private Sub Form_Load()
    Dim lngExtComputerNameType As Long
    Dim strExtComputerName     As String * 128
    Dim lngWin32apiResultCode  As Long
    
    lngExtComputerNameType = ComputerNameDnsHostname
    lngWin32apiResultCode = GetComputerNameEx(lngExtComputerNameType, _
                                              strExtComputerName, _
                                              Len(strExtComputerName))
   
    Dim str_Names As String
    str_Names = ""
    
    If lngWin32apiResultCode <> 0 Then
        str_Names = str_Names + "NetBIOS��:"
        str_Names = str_Names + Left(strExtComputerName, _
                                        InStr(strExtComputerName, _
                                        vbNullChar) - 1) + Chr(13)
    End If
    
    lngExtComputerNameType = ComputerNameDnsHostname
    lngWin32apiResultCode = GetComputerNameEx(lngExtComputerNameType, _
                                              strExtComputerName, _
                                              Len(strExtComputerName))
   
    If lngWin32apiResultCode <> 0 Then
        str_Names = str_Names + "DNS������:"
        str_Names = str_Names + Left(strExtComputerName, _
                                        InStr(strExtComputerName, _
                                        vbNullChar) - 1)
    End If
    
    MsgBox str_Names
End Sub
