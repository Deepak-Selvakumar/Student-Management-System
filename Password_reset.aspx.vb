Imports System.Data.SqlClient

Public Class Password_reset
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button1.Click
        ' Get the new password from the CONFIRM TextBox
        Dim newPassword As String = CONFIRM.Text.Trim()

        ' Update the adminlogin table with the new password
        Dim connectionString As String = "Data Source=DESKTOP-59JF4FA\SQLEXPRESS;Initial Catalog=admissionform;Integrated Security=True"
        Dim query As String = "UPDATE adminlogin SET password = @NewPassword WHERE userid = 'admin';"

        Using connection As New SqlConnection(connectionString)
            Using command As New SqlCommand(query, connection)
                command.Parameters.AddWithValue("@NewPassword", newPassword)
                connection.Open()
                command.ExecuteNonQuery()
            End Using
        End Using

        ' 
        Dim successGifDiv As HtmlGenericControl = form1.FindControl("successGif")

        If successGifDiv IsNot Nothing Then
            successGifDiv.Style("display") = "block"
        End If

        ' delay the redirection after a few seconds
        Dim script As String = "<script type='text/javascript'>setTimeout(function() { window.location.href = 'LoginPage_Admin.aspx'; }, 3000);</script>"
        ClientScript.RegisterStartupScript(Me.GetType(), "RedirectScript", script)
    End Sub
End Class
