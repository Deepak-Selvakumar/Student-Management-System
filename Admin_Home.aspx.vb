Public Class Admin_Home
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub


    Protected Sub btnVisit_Click(ByVal sender As Object, ByVal e As EventArgs)
        Response.Redirect("Stundent_Management.aspx")
    End Sub
End Class