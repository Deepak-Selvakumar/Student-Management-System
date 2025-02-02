<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="General_Details.aspx.vb" Inherits="WebApplication2.General_Details" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <link rel="stylesheet" href="General_Info.css" />
     <style>

             @media (max-width: 768px) {
            /* Adjust your header styles for smaller screens */
            .head {
                font-size: 24px;
                text-align: center;
            }

            /* Adjust breadcrumb styles */
            .breadcrumb {
                text-align: center;
            }

        }

        /* Media query for screens smaller than 576px */
        @media (max-width: 576px) {
            /* Adjust your header styles for even smaller screens */
            .head {
                font-size: 20px;
            }

            /* Adjust breadcrumb styles */
            .breadcrumb {
                font-size: 14px;
            }

            /* Add more styles as needed */
        }
        /* Define your default styles here */

        /* Media query for screens smaller than 768px */
        @media (max-width: 768px) {
            /* Adjust your styles for smaller screens */
            .container-fluid {
                padding: 10px;
            }

            /* Add more styles as needed */
        }

        /* Media query for screens smaller than 576px */
        @media (max-width: 576px) {
            /* Adjust your styles for even smaller screens */
            .container-fluid {
                padding: 5px;
            }

            /* Add more styles as needed */
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <header>
            <h1 class="head">General Information</h1>
            <div class="bread">
                <div class="breadcrumb">
                    <a href="#">Home</a> &gt;
                    <a class="#" href="Stundent_Management.aspx">Student Management</a>&gt;
                    <a href="#">Student Information</a> &gt;
                    <a class="#" href="#">General Information</a>&gt;
                </div>
            </div>
        

        <div class="container-fluid">
            <div class="a">
                <asp:TextBox placeholder="Enter Admission Number" ID="TextBox1" runat="server"></asp:TextBox>
                <asp:TextBox ID="TextBox2"  placeholder="Enter Student Name" runat="server"></asp:TextBox>
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>Select</asp:ListItem>
                    <asp:ListItem>12A</asp:ListItem>
                    <asp:ListItem>12B</asp:ListItem>
                    <asp:ListItem>11D</asp:ListItem>
                    <asp:ListItem>8D</asp:ListItem>
                </asp:DropDownList>
                <asp:DropDownList ID="DropDownList2" runat="server">
                    <asp:ListItem>Select</asp:ListItem>
                    <asp:ListItem>Student Name</asp:ListItem>
                    <asp:ListItem>Admission Number</asp:ListItem>
                    <asp:ListItem>Date Of Joining</asp:ListItem>
                </asp:DropDownList>
                <asp:TextBox ID="TextBox3" type="date" runat="server"></asp:TextBox>
                <asp:Button CssClass="b3" ID="VIEW1" runat="server" OnClientClick="clearInputFields();" Text="REFRESH" />
                <asp:Button CssClass="b1" ID="VIEW" runat="server" Text="VIEW" />
                <asp:Button CssClass="b2" ID="Button2" runat="server" Text="UPLOAD STUDENT PHOTO" />
            </div>

            <div class="b">
                <h6>STATUS: Y - CURRENT, P - PASS, F - FAIL, W - WITHDRAWN, L - LONGLEAVE, E - EXIT-PENDING, CLASS CHANGED</h6>
            </div>
        </div>
            </header>

        <table class="responsive">
            <tr>
                <th>SI NO</th>
                <th>Stundet Name</th>
                <th>Admission No</th>
                <th>Class</th>
                <th>Date Of Joining</th>
                <th>Status</th>
                <th>Effective From</th>
                <th>Effective To</th>
                <th>View</th>
                <th>ID Card</th>
            </tr>
            <asp:Repeater ID="repeaterAdmissionDetails" runat="server">
                <ItemTemplate>
                    <tr>
                        <td><%# Container.ItemIndex + 1 %></td>
                        <td><%# Eval("student_name") %></td>
                        <td><%# Eval("admission_number") %></td>
                        <td><%# Eval("class") %></td>
                        <td><%# Eval("date_of_joining", "{0:yyyy-MM-dd}") %></td>
                    
                        <td><%# Eval("status") %></td>
                          <td><%# Eval("date_of_joining", "{0:yyyy-MM-dd}") %></td>
                        <td><%# Eval("date_of_leaving", "{0:yyyy-MM-dd}") %></td>
                        


                       <td>
    <a href='<%# "Update_Info.aspx?name=" + Eval("student_name") + "&AdmNo=" + Eval("admission_number") + "&status=" + Eval("status") + "&class=" + Eval("class")  %>'>  

       <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="red" class="bi bi-eye" viewBox="0 0 16 16">
  <path d="M16 8s-3-5.5-8-5.5S0 8 0 8s3 5.5 8 5.5S16 8 16 8zM1.173 8a13.133 13.133 0 0 1 1.66-2.043C4.12 4.668 5.88 3.5 8 3.5c2.12 0 3.879 1.168 5.168 2.457A13.133 13.133 0 0 1 14.828 8c-.058.087-.122.183-.195.288-.335.48-.83 1.12-1.465 1.755C11.879 11.332 10.119 12.5 8 12.5c-2.12 0-3.879-1.168-5.168-2.457A13.134 13.134 0 0 1 1.172 8z"/>
  <path d="M8 5.5a2.5 2.5 0 1 0 0 5 2.5 2.5 0 0 0 0-5zM4.5 8a3.5 3.5 0 1 1 7 0 3.5 3.5 0 0 1-7 0z"/>
</svg>

    </a>
</td>
                        <td>
          <a href='<%# "StudentID.aspx?AdmNo=" + Eval("admission_number")  %>'>  

                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="red" class="bi bi-person-badge" viewBox="0 0 16 16">
  <path d="M6.5 2a.5.5 0 0 0 0 1h3a.5.5 0 0 0 0-1h-3zM11 8a3 3 0 1 1-6 0 3 3 0 0 1 6 0z"/>
  <path d="M4.5 0A2.5 2.5 0 0 0 2 2.5V14a2 2 0 0 0 2 2h8a2 2 0 0 0 2-2V2.5A2.5 2.5 0 0 0 11.5 0h-7zM3 2.5A1.5 1.5 0 0 1 4.5 1h7A1.5 1.5 0 0 1 13 2.5v10.795a4.2 4.2 0 0 0-.776-.492C11.392 12.387 10.063 12 8 12s-3.392.387-4.224.803a4.2 4.2 0 0 0-.776.492V2.5z"/>
</svg>
                                </a>
                        </td>

                    </tr>
                </ItemTemplate>
            </asp:Repeater>
        </table>
    </form>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.5.0/dist/js/bootstrap.bundle.min.js"></script>
   
<script type="text/javascript">
    function clearInputFields() {
        document.getElementById('<%= TextBox1.ClientID %>').value = ''; // Clear Admission Number
        document.getElementById('<%= TextBox2.ClientID %>').value = ''; // Clear Student Name
        document.getElementById('<%= DropDownList1.ClientID %>').selectedIndex = 0; // Reset DropDown
        document.getElementById('<%= DropDownList2.ClientID %>').selectedIndex = 0; // Reset DropDown
        document.getElementById('<%= TextBox3.ClientID %>').value = ''; // Clear Date
    }
</script>

</body>
</html>