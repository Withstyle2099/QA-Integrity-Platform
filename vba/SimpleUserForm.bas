' Simple VBA user form example
' To use: import this module into Excel or Access

Sub ShowSimpleForm()
    Dim frm As Object
    Set frm = VBA.UserForms.Add()
    With frm
        .Caption = "Simple Form"
        .Width = 200
        .Height = 120
        ' Add a label
        Dim lbl As Object
        Set lbl = .Controls.Add("Forms.Label.1")
        lbl.Caption = "Hello, world!"
        lbl.Left = 20
        lbl.Top = 20

        ' Add a command button to close the form
        Dim cmd As Object
        Set cmd = .Controls.Add("Forms.CommandButton.1")
        cmd.Caption = "Close"
        cmd.Left = 20
        cmd.Top = 50
        cmd.Width = 60
        ' Assign the close event
        cmd.OnClick = "CloseForm"
    End With
    frm.Show
End Sub

Sub CloseForm()
    ' This closes the form that triggered the event
    Unload VBA.UserForms(1)
End Sub
