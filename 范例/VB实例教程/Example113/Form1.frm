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
Private Const DRIVE_REMOVABLE = 2
Private Const DRIVE_FIXED = 3
Private Const DRIVE_REMOTE = 4
Private Const DRIVE_CDROM = 5
Private Const DRIVE_RAMDISK = 6

Private Sub Form_Load()
        Dim fso As New Scripting.FileSystemObject
        Dim drive As Scripting.drive
        
        For Each drive In fso.Drives
            On Error Resume Next
            Debug.Print ("���������������ĸ:" + drive.DriveLetter)
            Select Case drive.DriveType
                Case DRIVE_REMOVABLE:
                    Debug.Print ("������������:" + "REMOVABLE")
                Case DRIVE_FIXED:
                    Debug.Print ("������������:" + "FIXED")
                Case DRIVE_REMOTE:
                    Debug.Print ("������������:" + "REMOTE")
                Case DRIVE_CDROM:
                    Debug.Print ("������������:" + "CDROM")
                Case DRIVE_RAMDISK:
                    Debug.Print ("������������:" + "RAMDISK")
            End Select
            Debug.Print ("�������ľ���:" + drive.VolumeName)
            Debug.Print ("---------------------------------------")
        Next
End Sub
