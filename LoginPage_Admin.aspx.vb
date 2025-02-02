Imports System.Data.SqlClient

Public Class LoginPage_Admin
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button1.Click
        Dim connectionString As String = "Data Source=DESKTOP-59JF4FA\SQLEXPRESS;Initial Catalog=admissionform;Integrated Security=True"
        Dim username As String = txtUsername.Text
        Dim password As String = txtPassword.Text

        Using connection As New SqlConnection(connectionString)
            Dim query As String = "SELECT COUNT(*) FROM adminlogin WHERE userid = @Username AND password = @Password"

            Using command As New SqlCommand(query, connection)
                command.Parameters.AddWithValue("@Username", username)
                command.Parameters.AddWithValue("@Password", password)
                connection.Open()

                Dim count As Integer = Convert.ToInt32(command.ExecuteScalar())

                If count > 0 Then

                    Response.Redirect("Admin_Home.aspx")
                Else

                    lblMessage.Text = "Invalid username or password."
                    txtUsername.BorderColor = Drawing.Color.Red
                    txtPassword.BorderColor = Drawing.Color.Red
                End If
            End Using
        End Using
    End Sub


End Class