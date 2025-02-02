Imports System.Data.SqlClient

Public Class General_Details
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then
            BindAdmissionDetails()
        End If
    End Sub


    Private Sub BindAdmissionDetails()
        Dim connectionString As String = "Data Source=DESKTOP-59JF4FA\SQLEXPRESS; Initial Catalog=admissionform; Integrated Security=True;"
        Dim query As String = "SELECT * FROM admissiondetails"

        Using connection As New SqlConnection(connectionString)
            Using command As New SqlCommand(query, connection)
                Dim adapter As New SqlDataAdapter(command)
                Dim ds As New DataSet()
                adapter.Fill(ds)
                repeaterAdmissionDetails.DataSource = ds
                repeaterAdmissionDetails.DataBind()
            End Using
        End Using
    End Sub

    Protected Sub VIEW_Click(sender As Object, e As EventArgs) Handles VIEW.Click
        Dim admissionNumber As String = TextBox1.Text.Trim()
        Dim name As String = TextBox2.Text.Trim()
        Dim selectedClass As String = DropDownList1.SelectedValue
        Dim selectedSortBy As String = DropDownList2.SelectedValue



        Dim connectionString As String = "Data Source=DESKTOP-59JF4FA\SQLEXPRESS; Initial Catalog=admissionform; Integrated Security=True;"
        Dim query As String = "SELECT * FROM admissiondetails WHERE 1=1"

        Dim selectedDate As String = TextBox3.Text.Trim()



        If Not String.IsNullOrEmpty(admissionNumber) Then
            query &= " AND admission_number = @AdmissionNumber"
        ElseIf Not String.IsNullOrEmpty(name) Then
            query &= " AND student_name = @StudentName"
        ElseIf Not String.IsNullOrEmpty(selectedClass) AndAlso selectedClass <> "Select" Then
            query &= " AND class = @SelectedClass"
        End If

        If selectedSortBy = "Student Name" Then
            query &= " ORDER BY student_name"
        ElseIf selectedSortBy = "Date Of Joining" Then
            query &= " ORDER BY date_of_joining"
        ElseIf selectedSortBy = "Admission Number" Then
            query &= " ORDER BY admission_number"
        End If
        If Not String.IsNullOrEmpty(selectedDate) Then
            query &= " AND date_of_joining = '" & selectedDate & "'"
        End If
        Using connection As New SqlConnection(connectionString)
            Using command As New SqlCommand(query, connection)
                If Not String.IsNullOrEmpty(admissionNumber) Then
                    command.Parameters.AddWithValue("@AdmissionNumber", admissionNumber)
                ElseIf Not String.IsNullOrEmpty(name) Then
                    command.Parameters.AddWithValue("@StudentName", name)
                ElseIf Not String.IsNullOrEmpty(selectedClass) AndAlso selectedClass <> "Select" Then
                    command.Parameters.AddWithValue("@SelectedClass", selectedClass)
                End If
                Dim adapter As New SqlDataAdapter(command)
                Dim ds As New DataSet()
                adapter.Fill(ds)
                repeaterAdmissionDetails.DataSource = ds
                repeaterAdmissionDetails.DataBind()
            End Using
        End Using
    End Sub

End Class