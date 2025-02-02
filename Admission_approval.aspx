<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Admission_approval.aspx.vb" Inherits="WebApplication2.Admission_approval" %>

<!DOCTYPE html>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Student Details</title>

    <style>
        .formsize{
            margin-top:50px;
         
        }
        .container-fluid{
            background-color:grey;
            width:100%
           
        }

       .headerstudentsdetails{
           margin-left:530px;
           color:white;

       }
   
        table {
            border-collapse: collapse;
            width: 100%;
        }

        th, td {
            border: 1px solid black;
            padding: 10px; /* Increased padding for better spacing */
            text-align: center; /* Center align text */
        }

        th {
            background-color: #f2f2f2;
            font-weight: bold;
        }

        .student-row {
            height: 20%; /* Set a fixed height for the rows */
        }

        .btn-cell {
            text-align: center; /* Center align buttons */
            padding-top: 10px; /* Add spacing above buttons */
        }

        .btn-cell button {
            margin: 5px; /* Add margin around buttons */
            padding: 5px 10px; /* Adjust button padding */
        }
    </style>

</head>
   
<body>

         <header class="fixed-top container-fluid">
        <h2 class="headerstudentsdetails">STUDENT ADMISSION DETAILS</h2>

             
    </header>
    <form class="formsize" id="form1" runat="server">
        <div>
            
            <asp:Repeater ID="StudentRepeater" runat="server" OnItemCommand="StudentRepeater_ItemCommand">
                <ItemTemplate>
                    <table>
                        <tr class="student-row">
                            <th colspan="2">Student ID: <%# Eval("student_id") %></th>
                        </tr>
                        <tr class="student-row">
                            <td colspan="2">Name: <%# Eval("name") %></td>
                        </tr>
                       <tr class="student-row">
                             <td colspan="2">Email: <%# Eval("mail_id") %></td>
</tr>

                         <tr class="student-row">
                            <td colspan="2">Status: <%# Eval("status") %></td>
                        </tr>
                        <tr class="btn-cell student-row">
                           
<td colspan="2">
  <asp:Button ID="ViewPdfButton" CssClass="btn btn-primary" runat="server" Text="Download PDF" CommandName="ViewPdf" CommandArgument='<%# Eval("student_id") %>' />

<asp:Button ID="AcceptButton" CssClass="btn btn-success" runat="server" OnCommand="StudentRepeater_ItemCommand" Text="Accept" CommandName="Accept" CommandArgument='<%# Eval("student_id") %>' />
<asp:Button ID="RejectButton" CssClass="btn btn-danger" runat="server" OnCommand="StudentRepeater_ItemCommand" Text="Reject" CommandName="Reject" CommandArgument='<%# Eval("student_id") %>' />


<a href='<%# "Admission_gen.aspx?stuid=" + Eval("student_id").ToString() %>'>


    <svg xmlns="http://www.w3.org/2000/svg" width="16" fill="red" height="16" fill="currentColor" class="bi bi-file-earmark-ruled" viewBox="0 0 16 16">
  <path d="M14 14V4.5L9.5 0H4a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h8a2 2 0 0 0 2-2zM9.5 3A1.5 1.5 0 0 0 11 4.5h2V9H3V2a1 1 0 0 1 1-1h5.5v2zM3 12v-2h2v2H3zm0 1h2v2H4a1 1 0 0 1-1-1v-1zm3 2v-2h7v1a1 1 0 0 1-1 1H6zm7-3H6v-2h7v2z"/>
</svg>
            </a>


</td>
                           

                        </tr>
                    </table>
                         
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </form>
</body>
</html>
