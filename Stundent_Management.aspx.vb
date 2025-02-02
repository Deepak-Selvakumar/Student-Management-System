Public Class Stundent_Management
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btnVisit_Click(ByVal sender As Object, ByVal e As EventArgs)
        Response.Redirect("General_Details.aspx")
    End Sub
End Class
