
Imports System.Data.SqlClient
Imports iTextSharp.text
Imports iTextSharp.text.pdf
Imports System.IO
Imports System.Web.UI.HtmlControls
Imports System.Net
Imports System.Net.Configuration
Imports System.Net.Mail
Public Class Admission_approval
    Inherits System.Web.UI.Page



    Dim connectionString As String = "Data Source=DESKTOP-59JF4FA\SQLEXPRESS;Initial Catalog=admissionform;Integrated Security=True"

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then
            BindStudentData()
        End If
    End Sub

    Protected Sub BindStudentData()
        Using connection As New SqlConnection(connectionString)
            Dim query As String = "SELECT student_id, name, mail_id, status FROM StudentAdmission"
            Dim adapter As New SqlDataAdapter(query, connection)
            Dim ds As New DataSet()
            adapter.Fill(ds)
            StudentRepeater.DataSource = ds
            StudentRepeater.DataBind()
        End Using
    End Sub
    Protected Sub StudentRepeater_ItemCommand(source As Object, e As CommandEventArgs) Handles StudentRepeater.ItemCommand
        If e.CommandName = "ViewPdf" Then
            Dim studentId As Integer = Convert.ToInt32(e.CommandArgument)
            GeneratePdfForStudent(studentId)
        ElseIf e.CommandName = "Accept" Then
            Dim studentId As Integer = Convert.ToInt32(e.CommandArgument)
            AcceptStudent(studentId)
            BindStudentData()
        ElseIf e.CommandName = "Reject" Then
            Dim studentId As Integer = Convert.ToInt32(e.CommandArgument)
            RejectStudent(studentId)
            BindStudentData()
        End If
    End Sub

    Protected Sub DisplayStatusUpdateMessage(message As String)
        Dim script As String = $"<script>alert('{message}');</script>"
        ClientScript.RegisterStartupScript(Me.GetType(), "StatusUpdateScript", script)
    End Sub

    Private Sub AcceptStudent(studentId As Integer)
        UpdateStudentStatus(studentId, "Accepted")
        Dim studentEmail As String = GetStudentEmail(studentId)
        SendEmail(studentEmail, "Admission Update: Acceptance", "Congratulations! Your admission has been accepted.")
        DisplayStatusUpdateMessage("Student admission has been accepted.")
        BindStudentData()
    End Sub

    Private Sub RejectStudent(studentId As Integer)
        UpdateStudentStatus(studentId, "Rejected")
        Dim studentEmail As String = GetStudentEmail(studentId)
        SendEmail(studentEmail, "Admission Update: Rejection", "We regret to inform you that your admission has been rejected.")
        DisplayStatusUpdateMessage("Student admission has been rejected.")
        BindStudentData()
    End Sub



    Protected Sub GeneratePdfForStudent(studentId As Integer)
        Using connection As New SqlConnection(connectionString)
            Dim query As String = "SELECT * FROM StudentAdmission WHERE student_id = @studentId"
            Dim command As New SqlCommand(query, connection)
            command.Parameters.AddWithValue("@studentId", studentId)
            connection.Open()

            Dim reader As SqlDataReader = command.ExecuteReader()
            If reader.Read() Then
                Dim document As New Document()
                Dim fileName As String = $"Student_{studentId}_Details.pdf"
                Dim pdfWriter As PdfWriter = pdfWriter.GetInstance(document, Response.OutputStream)
                Response.ContentType = "application/pdf"
                Response.AddHeader("content-disposition", $"attachment;filename={fileName}")
                document.Open()

                Dim content As New Paragraph()
                content.Add($"Student ID: {reader("student_id")}")
                content.Add(Environment.NewLine)
                content.Add($"Name: {reader("name")}")
                content.Add(Environment.NewLine)

                content.Add($"Class Sought: {reader("class_sought")}")
                content.Add(Environment.NewLine)
                content.Add($"Academic Year: {reader("academic_year")}")
                content.Add(Environment.NewLine)
                content.Add($"Date Of Birth: {reader("date_of_birth")}")
                content.Add(Environment.NewLine)
                content.Add($"Aadhar Number: {reader("aadhar_number")}")
                content.Add(Environment.NewLine)
                content.Add($"Place Of Birth: {reader("place_of_birth")}")
                content.Add(Environment.NewLine)
                content.Add($"Nationality: {reader("nationality")}")
                content.Add(Environment.NewLine)
                content.Add($"Gender: {reader("gender")}")
                content.Add(Environment.NewLine)
                content.Add($"Residental Address: {reader("residential_address")}")
                content.Add(Environment.NewLine)
                content.Add($"Pin Code: {reader("pincode")}")
                content.Add(Environment.NewLine)
                content.Add($"Blood Group: {reader("blood_group")}")
                content.Add(Environment.NewLine)
                content.Add($"Mother Tongue: {reader("mother_tongue")}")
                content.Add(Environment.NewLine)
                content.Add($"Identification Mark: {reader("identification_mark")}")
                content.Add(Environment.NewLine)
                content.Add($"Previous School Name: {reader("previous_school_name")}")
                content.Add(Environment.NewLine)
                content.Add($"Previous School Location: {reader("previous_school_location")}")
                content.Add(Environment.NewLine)
                content.Add($"Previous School Class: {reader("previous_school_class")}")
                content.Add(Environment.NewLine)
                content.Add($"Previous School Year Of Study: {reader("previous_school_year_of_study")}")
                content.Add(Environment.NewLine)
                content.Add($"Achievements: {reader("achievements")}")
                content.Add(Environment.NewLine)
                content.Add($"Gmail-ID: {reader("mail_id")}")



                document.Add(content)
                document.Close()
                Response.Write(document)
                Response.End()
            End If

            reader.Close()
        End Using
    End Sub








    Private Sub SendEmail(recipientEmail As String, subject As String, body As String)
        Dim smtpSettings As SmtpSection = DirectCast(ConfigurationManager.GetSection("system.net/mailSettings/smtp"), SmtpSection)
        Dim smtpClient As New SmtpClient()

        smtpClient.Host = smtpSettings.Network.Host
        smtpClient.Port = smtpSettings.Network.Port
        smtpClient.EnableSsl = smtpSettings.Network.EnableSsl
        smtpClient.UseDefaultCredentials = smtpSettings.Network.DefaultCredentials
        smtpClient.Credentials = New NetworkCredential(smtpSettings.Network.UserName, smtpSettings.Network.Password)

        Dim mailMessage As New MailMessage()
        mailMessage.From = New MailAddress(smtpSettings.From)
        mailMessage.To.Add(recipientEmail)
        mailMessage.Subject = subject
        mailMessage.Body = body

        smtpClient.Send(mailMessage)
    End Sub





    Private Sub UpdateStudentStatus(studentId As Integer, status As String)
        Using connection As New SqlConnection(connectionString)
            Dim query As String = "UPDATE StudentAdmission SET status = @status WHERE student_id = @studentId"
            Dim command As New SqlCommand(query, connection)
            command.Parameters.AddWithValue("@status", status)
            command.Parameters.AddWithValue("@studentId", studentId)
            connection.Open()
            command.ExecuteNonQuery()
        End Using
    End Sub




    Private Function GetStudentEmail(studentId As Integer) As String
        Dim studentEmail As String = ""

        Using connection As New SqlConnection(connectionString)
            Dim query As String = "SELECT mail_id FROM StudentAdmission WHERE student_id = @studentId"
            Dim command As New SqlCommand(query, connection)
            command.Parameters.AddWithValue("@studentId", studentId)
            connection.Open()
            studentEmail = Convert.ToString(command.ExecuteScalar())
        End Using

        Return studentEmail
    End Function

End Class