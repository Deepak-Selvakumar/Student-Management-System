Imports System.Collections.ObjectModel
Imports System.Data.Common
Imports System.Data.SqlClient
Imports System.Drawing
Imports System.IO

Public Class Update_Info
    Inherits System.Web.UI.Page

    Dim constr As String = ConfigurationManager.ConnectionStrings("admissionformConnectionString").ConnectionString
    Public Property documentsTable As DataTable

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If Not IsPostBack Then
            Dim admno As String = Request.QueryString("AdmNo")
            Dim conn1 As New SqlConnection(constr)
            Dim cmd1 As New SqlCommand("select * from Docs where admission_number='" + admno + "'", conn1)

            Dim adapter As New SqlDataAdapter(cmd1)
            Dim filelist As New DataSet()

            adapter.Fill(filelist)
                Docupload.DataSource = filelist
                Docupload.DataBind()


            fetch()
            parentsfetch()
        End If



    End Sub






    Protected Sub parentsfetch()
        Dim name As String = Request.QueryString("name")
        Dim admno As String = Request.QueryString("AdmNo")
        Dim status As String = Request.QueryString("status")
        Dim classname As String = Request.QueryString("class")


        If Not String.IsNullOrEmpty(admno) Then
            Dim con As SqlConnection = New SqlConnection(constr)
            Dim cmd As SqlCommand = New SqlCommand()
            cmd.Connection = con

            cmd.CommandText = "SELECT * FROM parentdetails WHERE admissionnumber = @admno;"
            cmd.Parameters.AddWithValue("@admno", admno)

            con.Open()
            Dim reader As SqlDataReader = cmd.ExecuteReader()

            If reader.HasRows Then
                reader.Read()

                primarycontact.Text = reader("primary_contact").ToString()
                pfname.Text = reader("primarycontact_first").ToString()
                pmiddlename.Text = reader("primarycontact_middle").ToString()
                plastname.Text = reader("primarycontact_last").ToString()
                mobilenumber.Text = reader("primarycontact_mobile").ToString()
                mailid.Text = reader("primarycontact_email").ToString()
                secondarycontact.Text = reader("secondary_contact").ToString()
                sfname.Text = reader("secondarycontact_first").ToString()
                sname.Text = reader("secondarycontact_middle").ToString()
                slname.Text = reader("secondarycontact_last").ToString()
                smob.Text = reader("secondarycontact_mobile").ToString()
                mail.Text = reader("secondarycontact_email").ToString()



                reader.Close()

            End If

            con.Close()
        End If



    End Sub


    Protected Sub fetch()

        Dim name As String = Request.QueryString("name")
        Dim admno As String = Request.QueryString("AdmNo")
        Dim status As String = Request.QueryString("status")
        Dim classname As String = Request.QueryString("class")


        Label32.Text = name
        Label33.Text = admno
        Label34.Text = status
        Label35.Text = classname



        If Not String.IsNullOrEmpty(admno) Then
            Dim con As SqlConnection = New SqlConnection(constr)
            Dim cmd As SqlCommand = New SqlCommand()
            cmd.Connection = con
            cmd.CommandText = "SELECT * FROM admissiondetails WHERE admission_number = @admno;"
            cmd.Parameters.AddWithValue("@admno", admno)

            con.Open()
            Dim reader As SqlDataReader = cmd.ExecuteReader()

            If reader.HasRows Then
                reader.Read()

                admissionno.Text = reader("admission_number").ToString()
                applicationno.Text = reader("application_number").ToString()

                regno.Text = reader("registration_number").ToString()
                yourname.Text = reader("student_name").ToString()
                jsite.Text = reader("joining_site").ToString()
                csite.Text = reader("current_site").ToString()
                cs.Text = reader("class_sought").ToString()
                dateofbirth.Text = Convert.ToDateTime(reader("date_of_birth")).ToString("yyyy-MM-dd")
                Aadharnumber.Text = reader("aadhar_number").ToString()
                pob.Text = reader("place_of_birth").ToString()
                Nationality.Text = reader("country").ToString()
                Gender.Text = reader("gender").ToString()
                Bloodgrp.Text = reader("blood_group").ToString()
                mothertongue.Text = reader("mother_tongue").ToString()
                exrollno.Text = reader("exam_roll_no").ToString()
                exregno.Text = reader("exam_reg_no").ToString()
                Religion.Text = reader("religion").ToString()

                Caste.Text = reader("caste").ToString()


                Subcaste.Text = reader("sub_caste").ToString()
                familyid.Text = reader("family_id").ToString()
                resiid.Text = reader("residence_id").ToString()


                Try
                    Dim stud_photo As Byte() = DirectCast(reader("stud_photo"), Byte())

                    If stud_photo IsNot Nothing Then
                        Dim contentType As String = "image/jpeg/jpg/png"
                        Dim base64Image1 As String = Convert.ToBase64String(stud_photo)
                        Dim Image As String = $"data:{contentType};base64,{base64Image1}"
                        Image1.ImageUrl = Image
                        Image2.ImageUrl = Image
                    End If
                Catch ex As Exception
                    MsgBox("Invlid")

                End Try

                reader.Close()

            End If

            con.Close()
        End If



    End Sub

    Protected Sub Button3_Click(sender As Object, e As EventArgs) Handles Button3.Click

        Dim admno As String = admissionno.Text

        If Not String.IsNullOrEmpty(admno) Then
            Dim con As SqlConnection = New SqlConnection(constr)
            Dim cmd As SqlCommand = New SqlCommand()
            cmd.Connection = con
            cmd.CommandText = "UpdateParentDetails"
            cmd.CommandType = CommandType.StoredProcedure
            Dim name As String = Request.QueryString("name")
            Dim status As String = Request.QueryString("status")
            Dim classname As String = Request.QueryString("class")


            cmd.Parameters.AddWithValue("@admissionnumber", admno)

            cmd.Parameters.AddWithValue("@primary_contact", primarycontact.Text)
            cmd.Parameters.AddWithValue("@primarycontact_first", pfname.Text)
            cmd.Parameters.AddWithValue("@primarycontact_middle", pmiddlename.Text)
            cmd.Parameters.AddWithValue("@primarycontact_last", plastname.Text)
            cmd.Parameters.AddWithValue("@primarycontact_mobile", mobilenumber.Text)
            cmd.Parameters.AddWithValue("@primarycontact_email", mailid.Text)


            cmd.Parameters.AddWithValue("@secondary_contact", secondarycontact.Text)
            cmd.Parameters.AddWithValue("@secondarycontact_first", sfname.Text)
            cmd.Parameters.AddWithValue("@secondarycontact_middle", sname.Text)
            cmd.Parameters.AddWithValue("@secondarycontact_last", slname.Text)
            cmd.Parameters.AddWithValue("@secondarycontact_mobile", smob.Text)

            cmd.Parameters.AddWithValue("@secondarycontact_email", mail.Text)



            con.Open()


            cmd.ExecuteNonQuery()
            con.Close()
        End If

        ClientScript.RegisterStartupScript(Me.GetType(), "alert", "alert('Updated successfully');", True)

    End Sub


    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim admno As String = admissionno.Text

        If Not String.IsNullOrEmpty(admno) Then
            Dim con As SqlConnection = New SqlConnection(constr)
            Dim cmd As SqlCommand = New SqlCommand()
            cmd.Connection = con
            cmd.CommandText = "UpdateAdmissionDetails"
            cmd.CommandType = CommandType.StoredProcedure

            cmd.Parameters.AddWithValue("@appno", applicationno.Text)
            cmd.Parameters.AddWithValue("@admno", admno)
            cmd.Parameters.AddWithValue("@registration_number", regno.Text)
            cmd.Parameters.AddWithValue("@student_name", yourname.Text)
            cmd.Parameters.AddWithValue("@joining_site", jsite.Text)
            cmd.Parameters.AddWithValue("@current_site", csite.Text)
            cmd.Parameters.AddWithValue("@class_sought", cs.Text)
            cmd.Parameters.AddWithValue("@date_of_birth", dateofbirth.Text)
            cmd.Parameters.AddWithValue("@aadhar_number", Aadharnumber.Text)
            cmd.Parameters.AddWithValue("@place_of_birth", pob.Text)
            cmd.Parameters.AddWithValue("@country", Nationality.Text)
            cmd.Parameters.AddWithValue("@gender", Gender.Text)
            cmd.Parameters.AddWithValue("@blood_group", Bloodgrp.Text)
            cmd.Parameters.AddWithValue("@mother_tongue", mothertongue.Text)
            cmd.Parameters.AddWithValue("@exam_roll_no", exrollno.Text)
            cmd.Parameters.AddWithValue("@exam_reg_no", exregno.Text)
            cmd.Parameters.AddWithValue("@caste", Caste.Text)
            cmd.Parameters.AddWithValue("@religion", Religion.Text)
            cmd.Parameters.AddWithValue("@sub_caste", Subcaste.Text)
            cmd.Parameters.AddWithValue("@family_id", familyid.Text)
            cmd.Parameters.AddWithValue("@residence_id", resiid.Text)


            con.Open()


            cmd.ExecuteNonQuery()
            con.Close()
        End If

        ClientScript.RegisterStartupScript(Me.GetType(), "alert", "alert('Updated successfully');", True)

    End Sub


    Protected Sub Submit_Click(sender As Object, e As EventArgs)
        Dim script As String = "<script>document.getElementById('studentTab').style.display = 'block';</script>"
        ClientScript.RegisterStartupScript(Me.GetType(), "ShowAddTab", script)
        If formFile.HasFile Then
            Dim fileExtension As String = Path.GetExtension(formFile.FileName)
            Dim allowedExtensions As String() = {".jpg", ".jpeg", ".png"}

            If allowedExtensions.Contains(fileExtension.ToLower()) Then
                Dim con As SqlConnection = New SqlConnection(constr)
                Dim cmd As SqlCommand = New SqlCommand()
                Dim admno As String = admissionno.Text

                cmd.Connection = con
                Dim imageSize As Integer = formFile.PostedFile.ContentLength
                Dim imageData As Byte() = New Byte(imageSize - 1) {}
                formFile.PostedFile.InputStream.Read(imageData, 0, imageSize)
                cmd.Connection = con
                cmd.CommandText = "UpdateAdmissionDetails"
                cmd.CommandType = CommandType.StoredProcedure
                'cmd.Parameters.AddWithValue("@stud_photo", imageData)

                cmd.Parameters.AddWithValue("@appno", applicationno.Text)
                cmd.Parameters.AddWithValue("@admno", admno)
                cmd.Parameters.AddWithValue("@registration_number", regno.Text)
                cmd.Parameters.AddWithValue("@student_name", yourname.Text)
                cmd.Parameters.AddWithValue("@joining_site", jsite.Text)
                cmd.Parameters.AddWithValue("@current_site", csite.Text)
                cmd.Parameters.AddWithValue("@class_sought", cs.Text)
                cmd.Parameters.AddWithValue("@date_of_birth", dateofbirth.Text)
                cmd.Parameters.AddWithValue("@aadhar_number", Aadharnumber.Text)
                cmd.Parameters.AddWithValue("@place_of_birth", pob.Text)
                cmd.Parameters.AddWithValue("@country", Nationality.Text)
                cmd.Parameters.AddWithValue("@gender", Gender.Text)
                cmd.Parameters.AddWithValue("@blood_group", Bloodgrp.Text)
                cmd.Parameters.AddWithValue("@mother_tongue", mothertongue.Text)
                cmd.Parameters.AddWithValue("@exam_roll_no", exrollno.Text)
                cmd.Parameters.AddWithValue("@exam_reg_no", exregno.Text)
                cmd.Parameters.AddWithValue("@caste", Caste.Text)
                cmd.Parameters.AddWithValue("@religion", Religion.Text)
                cmd.Parameters.AddWithValue("@sub_caste", Subcaste.Text)
                cmd.Parameters.AddWithValue("@family_id", familyid.Text)
                cmd.Parameters.AddWithValue("@residence_id", resiid.Text)
                con.Open()
                cmd.ExecuteNonQuery()
                con.Close()


            End If


        End If
        fetch()


    End Sub

    Protected Sub Submit_Click1(sender As Object, e As EventArgs)



        If formFile.HasFile Then
            Dim fileExtension As String = Path.GetExtension(formFile.FileName)
            Dim allowedExtensions As String() = {".jpg", ".jpeg", ".png"}

            If allowedExtensions.Contains(fileExtension.ToLower()) Then
                Dim imageSize As Integer = formFile.PostedFile.ContentLength
                Dim imageData As Byte() = New Byte(imageSize - 1) {}
                formFile.PostedFile.InputStream.Read(imageData, 0, imageSize)

                Dim admno As String = admissionno.Text

                If Not String.IsNullOrEmpty(admno) Then
                    Dim con As SqlConnection = New SqlConnection(constr)
                    Dim cmd As SqlCommand = New SqlCommand()
                    cmd.Connection = con
                    cmd.CommandText = "UPDATE admissiondetails SET stud_photo = @stud_photo WHERE admission_number = @admno;"


                    cmd.Parameters.AddWithValue("@stud_photo", imageData)
                    cmd.Parameters.AddWithValue("@admno", admno)



                    con.Open()
                    cmd.ExecuteNonQuery()
                    con.Close()
                End If

            Else
                MsgBox("Invalid file format. Please upload a valid image file.")
            End If
        Else
            MsgBox("Please choose a file to upload.")
        End If

        MsgBox("Image Uploaded Successfully")


        fetch()

    End Sub


    Protected Sub insert(sender As Object, e As EventArgs) Handles ins.Click
        Dim admno As String = admissionno.Text

        Dim filelocation = Server.MapPath("~/Documents/")
        If Not Directory.Exists(filelocation) Then
            Directory.CreateDirectory(filelocation)
        End If
        Dim fn = Path.GetFileName(uploaddoc.FileName)
        uploaddoc.SaveAs(filelocation + fn)
        Dim conn As New SqlConnection(constr)
        Dim cmd As New SqlCommand()
        cmd.Connection = conn
        cmd.CommandType = CommandType.StoredProcedure
        cmd.CommandText = "InsertDoc"
        cmd.Parameters.AddWithValue("@file_type", Request.Form("newFileType"))
        cmd.Parameters.AddWithValue("@file_description", Request.Form("newFileDescription"))


        cmd.Parameters.AddWithValue("@updated_on", DateTime.Now)
        cmd.Parameters.AddWithValue("@updated_by", "admin")
        cmd.Parameters.AddWithValue("@document_type", doctype.SelectedValue)
        cmd.Parameters.AddWithValue("@filepath", filelocation + fn)
        cmd.Parameters.AddWithValue("@comment", "gkjhfhf")
        cmd.Parameters.AddWithValue("@admission_number", admno)

        conn.Open()
        cmd.ExecuteNonQuery()
        conn.Close()

        'document.Style.Add(HtmlTextWriterStyle.Display, "block")
        'enroll.Style.Add(HtmlTextWriterStyle.Display, "none")
        Dim conn1 As New SqlConnection(constr)
        Dim cmd1 As New SqlCommand("select * from Docs where admission_number=" + admno, conn1)
        Dim adapter As New SqlDataAdapter(cmd1)
        Dim filelist As New DataSet()
        Try
            adapter.Fill(filelist)
            Docupload.DataSource = filelist
            Docupload.DataBind()
        Catch ex As Exception
            MsgBox("File Uploaded Successfully")

        Finally
            fetch()
            parentsfetch()
        End Try
        'getdoc.Style.Add(HtmlTextWriterStyle.Display, "none")
    End Sub



    Function getTable() As DataSet

        Dim conn As New SqlConnection(constr)
        Dim cmd As New SqlCommand("select * from admissiondetails", conn)
        Dim adapter As New SqlDataAdapter(cmd)
        Dim studentlist As New DataSet()
        adapter.Fill(studentlist)
        Return studentlist
    End Function

    Protected Sub previousButton_Click(sender As Object, e As EventArgs)
        Dim ds As DataSet = getTable()
        For i = ds.Tables(0).Rows.Count - 1 To 0 Step -1
            If ds.Tables(0).Rows(i).Item("admission_number") = Request.QueryString("AdmNo") Then
                If i = 0 Then
                    previousButton.Enabled = False
                Else
                    Dim previd As String = ds.Tables(0).Rows(i - 1).Item("admission_number")
                    Dim student_name As String = ds.Tables(0).Rows(i - 1).Item("student_name")
                    Dim status As String = ds.Tables(0).Rows(i - 1).Item("status")
                    Dim cls As String = ds.Tables(0).Rows(i - 1).Item("class")


                    Response.Redirect("Update_Info.aspx?name=" + student_name + "&AdmNo=" + previd + "&status=" + status + "&class=" + cls)
                End If
            End If
        Next
    End Sub

    Protected Sub nextButton_Click(sender As Object, e As EventArgs)
        Dim ds As DataSet = getTable()
        For i = 0 To ds.Tables(0).Rows.Count - 1
            If ds.Tables(0).Rows(i).Item("admission_number") = Request.QueryString("AdmNo") Then
                If i + 1 = ds.Tables(0).Rows.Count Then
                    nextButton.Enabled = False
                Else
                    Dim nextid As String = ds.Tables(0).Rows(i + 1).Item("admission_number")
                    Dim student_name As String = ds.Tables(0).Rows(i + 1).Item("student_name")
                    Dim status As String = ds.Tables(0).Rows(i + 1).Item("status")
                    Dim cls As String = ds.Tables(0).Rows(i + 1).Item("class")
                    Response.Redirect("Update_Info.aspx?name=" + student_name + "&AdmNo=" + nextid + "&status=" + status + "&class=" + cls)
                End If
            End If
        Next
    End Sub
End Class