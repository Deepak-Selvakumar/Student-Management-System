Imports System.Data.SqlClient
Imports System.IO
Imports WebApplication2.DataSet1TableAdapters
Imports CrystalDecisions.CrystalReports.Engine
Imports CrystalDecisions.Web

Public Class Admission_gen
    Inherits System.Web.UI.Page
    Dim constr As String = ConfigurationManager.ConnectionStrings("admissionformConnectionString").ConnectionString

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then
            Dim admissionnumber As String = Request.QueryString("stuid")
            Dim ds As DataSet1 = getdata(admissionnumber)
            Dim reportdocument As New ReportDocument()
            reportdocument.Load(Server.MapPath("~/CrystalReport2.rpt"))
            reportdocument.SetDataSource(ds)
            CrystalReportViewer2.ReportSource = reportdocument
        End If
    End Sub
    Function getdata(admin As String)
        Dim query As String = $"Select * from StudentAdmission where student_id='{admin}'"
        Dim connection As New SqlConnection(constr)
        Dim adapter As New SqlDataAdapter(query, connection)
        Dim ds As New DataSet1()
        adapter.Fill(ds, "StudentAdmission")
        Return ds
    End Function
End Class

