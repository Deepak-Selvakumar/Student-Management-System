Imports System.Net
Imports System.Net.Configuration
Imports System.Net.Mail

Public Class fp
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub iknowbutton_Click(ByVal sender As Object, ByVal e As EventArgs) Handles iknowbutton.Click
        Response.Redirect("LoginPage_Admin.aspx")
    End Sub

    Protected Sub sendlink_Click(ByVal sender As Object, ByVal e As EventArgs) Handles sendlink.Click


        Dim recipientEmail As String = mailbox.Text.Trim() ' Get the entered email from the TextBox

        Dim smtpSettings As SmtpSection = DirectCast(ConfigurationManager.GetSection("system.net/mailSettings/smtp"), SmtpSection)
        Dim smtpClient As New SmtpClient()
        smtpClient.Host = smtpSettings.Network.Host
        smtpClient.Port = smtpSettings.Network.Port
        smtpClient.EnableSsl = smtpSettings.Network.EnableSsl
        smtpClient.UseDefaultCredentials = smtpSettings.Network.DefaultCredentials
        smtpClient.Credentials = New NetworkCredential(smtpSettings.Network.UserName, smtpSettings.Network.Password)
        smtpClient.EnableSsl = True

        Dim mailMessage As New MailMessage()
        mailMessage.From = New MailAddress(smtpSettings.From)
        mailMessage.To.Add(recipientEmail)
        mailMessage.Subject = "Password Reset Link"
        mailMessage.Body = "Here is your password reset link:https://localhost:44328/Password_reset"

        Try
            smtpClient.Send(mailMessage)

            Dim successScript As String = "alert('Password reset link sent successfully.');"
            ScriptManager.RegisterStartupScript(Me, Me.GetType(), "successAlert", successScript, True)
        Catch ex As Exception

            Dim errorScript As String = "alert('Failed to send password reset link.');"
            ScriptManager.RegisterStartupScript(Me, Me.GetType(), "errorAlert", errorScript, True)
        End Try
        Response.Redirect("Password_reset.aspx")
    End Sub
End Class
