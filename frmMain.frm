VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Test Histogram Control"
   ClientHeight    =   765
   ClientLeft      =   1095
   ClientTop       =   1620
   ClientWidth     =   9300
   LinkTopic       =   "Form1"
   ScaleHeight     =   765
   ScaleWidth      =   9300
   Begin prjHistogram.ucHistogram ucHistogram1 
      Height          =   600
      Left            =   45
      TabIndex        =   0
      Top             =   90
      Width           =   2355
      _ExtentX        =   4154
      _ExtentY        =   1058
      GridTickHorizontal=   2
      NumberOfPoints  =   150
      BackColor       =   0
      ForeColor       =   8454016
   End
   Begin VB.Timer Timer1 
      Interval        =   100
      Left            =   135
      Top             =   2115
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Sub Form_Load()
    Randomize
End Sub

Private Sub Form_Resize()
    
    With ucHistogram1
        .Move 0, 0, Me.ScaleWidth, Me.ScaleHeight
        .Refresh
    End With
    
End Sub

Private Sub Timer1_Timer()
    
    Dim lPoint As Long
    
    'generate a random value between min (0) and max values for the control
    lPoint = Int((100 - 1) * Rnd + 1)
    
    ucHistogram1.NextPoint lPoint

End Sub
