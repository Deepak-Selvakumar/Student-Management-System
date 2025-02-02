Imports System.Data.SqlClient



Public Class admissionreport
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub AcademicYearDropDown_SelectedIndexChanged(sender As Object, e As EventArgs)
        Dim selectedYear As String = AcademicYearDropDown.SelectedValue

        Dim connectionString As String = ConfigurationManager.ConnectionStrings("admissionformConnectionString").ConnectionString
        Dim query As String = "SELECT class_sought, total_admissions FROM AdmissionReport WHERE academic_year = @Year"

        Using connection As New SqlConnection(connectionString)
            Using command As New SqlCommand(query, connection)
                command.Parameters.AddWithValue("@Year", selectedYear)
                connection.Open()
                Dim reader As SqlDataReader = command.ExecuteReader()


                Chart1.Series("Series1").Points.Clear()


                While reader.Read()
                    Dim classSought As String = reader("class_sought").ToString()
                    Dim totalAdmissions As Integer = Convert.ToInt32(reader("total_admissions"))
                    Chart1.Series("Series1").Points.AddXY(classSought, totalAdmissions)
                End While
            End Using
        End Using
    End Sub




    Protected Sub Button1_Click(sender As Object, e As EventArgs)
        Response.Redirect("Stundent_Management.aspx")

    End Sub
End Class
