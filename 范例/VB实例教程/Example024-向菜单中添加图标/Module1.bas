Attribute VB_Name = "Module1"
Public Declare Function GetMenu Lib "user32" _
( _
    ByVal hwnd As Long _
    ) As Long
'��ô����еĲ˵�
'-------------------------------------------------------
Public Declare Function GetSubMenu Lib "user32" _
( _
    ByVal hMenu As Long, _
    ByVal nPos As Long _
    ) As Long
'��ò˵��е��Ӳ˵�(��һ���˵�)
'-------------------------------------------------------
Public Declare Function GetMenuItemID Lib "user32" _
( _
    ByVal hMenu As Long, _
    ByVal nPos As Long _
    ) As Long
'��ò˵���
'-------------------------------------------------------
Public Declare Function GetMenuItemCount Lib "user32" _
( _
    ByVal hMenu As Long _
    ) As Long
'���ָ���˵��²˵������Ŀ
'-------------------------------------------------------
Public Declare Function GetMenuItemInfo Lib "user32" _
Alias "GetMenuItemInfoA" _
( _
    ByVal hMenu As Long, ByVal un As Long, _
    ByVal b As Boolean, lpMenuItemInfo As MENUITEMINFO _
    ) As Boolean
'���ָ���˵������Ϣ
Type MENUITEMINFO
    cbSize As Long
    fMask As Long
    fType As Long
    fState As Long
    wID As Long
    hSubMenu As Long
    hbmpChecked As Long
    hbmpUnchecked As Long
    dwItemData As Long
    dwTypeData As String
    cch As Long
End Type
Public Const MIIM_ID = &H2
Public Const MIIM_TYPE = &H10
Public Const MFT_STRING = &H0&
'-------------------------------------------------------
Public Declare Function SetMenuItemBitmaps Lib "user32" _
( _
    ByVal hMenu As Long, _
    ByVal nPosition As Long, _
    ByVal wFlags As Long, _
    ByVal hBitmapUnchecked As Long, _
    ByVal hBitmapChecked As Long _
    ) As Long
'���ò˵���
Public Const MF_BITMAP = &H4&
'-------------------------------------------------------

