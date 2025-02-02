Imports System.Data.SqlClient
Imports System.Net
Imports System.Net.Configuration
Imports System.Net.Mail
Imports iTextSharp.text
Imports iTextSharp.text.pdf
Imports System.IO
Imports Azure.Core.HttpHeader
Imports Microsoft.Identity.Client.AuthScheme
Imports System.Windows.Forms.VisualStyles.VisualStyleElement.Menu
Imports System.Reflection.Metadata
Imports Document = iTextSharp.text.Document

Public Class admissionform1
    Inherits System.Web.UI.Page
    Dim conn As String = ConfigurationManager.ConnectionStrings("admissionformConnectionString").ConnectionString
    Private dob8 As Object
    Private Achievements As Object

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btnAddStudent_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim studentMail As String = mail.Text
        InsertStudentData(studentMail)

        ' Insert data into AdmissionReport table
        InsertAdmissionReportData(cs.Text, dropdownay.Text)

        GeneratePDFAndSendEmail(studentMail)

        clearformfields()
    End Sub

    Sub InsertAdmissionReportData(classSought As String, academicYear As String)
        Using conn1 As SqlConnection = New SqlConnection(conn)
            Using cmd As SqlCommand = New SqlCommand("
        MERGE INTO AdmissionReport AS target
        USING (SELECT @academicYear AS academicYear, @classSought AS classSought) AS source
        ON target.academic_year = source.academicYear AND target.class_sought = source.classSought
        WHEN MATCHED THEN
            UPDATE SET target.total_admissions = target.total_admissions + 1
        WHEN NOT MATCHED THEN
            INSERT (academic_year, class_sought, total_admissions)
            VALUES (@academicYear, @classSought, 1);
    ", conn1)
                cmd.Parameters.AddWithValue("@academicYear", academicYear)
                cmd.Parameters.AddWithValue("@classSought", classSought)
                conn1.Open()
                cmd.ExecuteNonQuery()
            End Using
        End Using

    End Sub



    Sub SendEmailWithAttachment(ByVal recipientEmail As String, ByVal attachmentBytes As Byte())


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
        mailMessage.Subject = "Admission Form Status"
        mailMessage.Body = "Your admission form submitted successfully.PFA of your pdf."



        Dim attachment As New Attachment(New MemoryStream(attachmentBytes), "StudentInformation.pdf")
        mailMessage.Attachments.Add(attachment)

        smtpClient.Send(mailMessage)

    End Sub





    Private Function IsValidEmail(email As String) As Boolean

        Dim emailPattern As String = "^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$"
        Dim regex As New Regex(emailPattern)
        Return regex.IsMatch(email)
    End Function



    Sub InsertStudentData(ByVal studentEmail As String)


        Dim conn1 As SqlConnection = New SqlConnection(conn)
        Dim ds As New DataSet()
        Dim adapter As New SqlDataAdapter("SELECT * FROM StudentAdmission", conn1)
        adapter.Fill(ds)
        Dim builder As New SqlCommandBuilder(adapter)
        Dim newRow As DataRow = ds.Tables(0).NewRow()
        newRow("name") = userTxt.Text
        newRow("class_sought") = cs.Text
        newRow("academic_year") = dropdownay.Text
        newRow("date_of_birth") = dateofbirth.Text
        newRow("aadhar_number") = Aadharnumber.Text
        newRow("place_of_birth") = pob.Text
        newRow("nationality") = Nation.Text
        newRow("gender") = Gender.Text
        newRow("residential_address") = Residentaladdress.Text
        newRow("pincode") = pincode.Text

        newRow("blood_group") = Bloodgrp.Text
        newRow("mother_tongue") = mothertongue.Text
        newRow("identification_mark") = Imark.Text
        newRow("previous_school_name") = previousschoolname.Text
        newRow("previous_school_location") = Previousschoollocation.Text
        newRow("previous_school_class") = Previousschoolclass.Text
        newRow("previous_school_year_of_study") = Dos.Text
        newRow("previous_school_percentage") = Previousschoolpercentage.Text
        newRow("achievements") = Achievements1.Text
        newRow("mail_id") = studentEmail

        ds.Tables(0).Rows.Add(newRow)
        adapter.Update(ds)
        ClientScript.RegisterStartupScript(Me.GetType(), "alert", "alert('Submission successful Payment link send to your registered email');", True)
    End Sub

    Sub clearformfields()

        userTxt.Text = String.Empty
        cs.Text = String.Empty
        dropdownay.Text = String.Empty
        dateofbirth.Text = String.Empty
        Aadharnumber.Text = String.Empty
        pob.Text = String.Empty
        Nation.Text = String.Empty
        Gender.Text = String.Empty
        Residentaladdress.Text = String.Empty
        pincode.Text = String.Empty

        Bloodgrp.Text = String.Empty
        mothertongue.Text = String.Empty
        Imark.Text = String.Empty
        previousschoolname.Text = String.Empty
        Previousschoollocation.Text = String.Empty
        Previousschoolclass.Text = String.Empty
        Dos.Text = String.Empty
        Previousschoolpercentage.Text = String.Empty
        Achievements1.Text = String.Empty
        mail.Text = String.Empty




    End Sub





    Sub GeneratePDFAndSendEmail(ByVal studentEmail As String)
        Dim doc As New Document()
        Dim pdfMemoryStream As New MemoryStream()
        Dim writer As PdfWriter = PdfWriter.GetInstance(doc, pdfMemoryStream)

        doc.Open()

        doc.Add(New Paragraph("Student Information"))
        doc.Add(New Paragraph("Name: " & userTxt.Text))
        doc.Add(New Paragraph("Academic Year: " & dropdownay.Text))
        doc.Add(New Paragraph("Date Of Birth: " & dateofbirth.Text))

        doc.Add(New Paragraph("Aadhar Number: " & Aadharnumber.Text))
        doc.Add(New Paragraph("Place of Birth: " & pob.Text))
        doc.Add(New Paragraph("Nationality: " & Nation.Text))
        doc.Add(New Paragraph("Gender: " & Gender.Text))
        doc.Add(New Paragraph("Residental Address: " & Residentaladdress.Text))
        doc.Add(New Paragraph("Pincode: " & pincode.Text))


        doc.Add(New Paragraph("Blood Group: " & Bloodgrp.Text))
        doc.Add(New Paragraph("Mother Tongue: " & mothertongue.Text))
        doc.Add(New Paragraph("Identification mark: " & Imark.Text))
        doc.Add(New Paragraph("Previous School Name: " & previousschoolname.Text))
        doc.Add(New Paragraph("Previous School Location: " & Previousschoollocation.Text))
        doc.Add(New Paragraph("Previous School Class: " & Previousschoolclass.Text))
        doc.Add(New Paragraph("Previous School Year Of Study: " & Dos.Text))
        doc.Add(New Paragraph("Previous School Percentage: " & Previousschoolpercentage.Text))
        doc.Add(New Paragraph("Achievements: " & Achievements1.Text))
        doc.Add(New Paragraph("G-mail id: " & mail.Text))


        doc.Close()

        Dim pdfBytes As Byte() = pdfMemoryStream.ToArray()

        SendEmailWithAttachment(studentEmail, pdfBytes)
    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs)
        Response.Redirect("User_Portal.aspx")
    End Sub
End Class