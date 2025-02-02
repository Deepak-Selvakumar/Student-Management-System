<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Password_reset.aspx.vb" Inherits="WebApplication2.Password_reset" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet" />
    <style>
        body {
            background-image: url('https://images.pexels.com/photos/305823/pexels-photo-305823.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1');
        }
        .container {
            margin-top: 15%;
            max-width: 500px;
            padding: 20px;
            border-radius: 10px;
            background-color: rgba(255, 255, 255, 0.9);
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
            margin-left: auto;
            margin-right: auto;
        }
        .btn-primary {
            background-color: #007bff;
            border-color: #007bff;
        }

          @media (min-width: 414px) and (max-width: 888px) {
            .container {
                max-width: 600px;
            }
            .h4 {
                font-size: 1.5rem; /* Adjust font size for h4 on smaller screens */
            }
            .form-control {
                font-size: 14px; /* Adjust font size for form controls on smaller screens */
            }
            .attractive-text {
                font-size: 18px; /* Adjust font size for attractive-text on smaller screens */
            }
        }
        @media (max-width: 576px) {
            .btn-success {
                width: 100%;
            }
            .h4 {
                font-size: 1.5rem; /* Adjust font size for h4 on smaller screens */
            }
            .form-control {
                font-size: 14px; /* Adjust font size for form controls on smaller screens */
            }
            .attractive-text {
                font-size: 18px; /* Adjust font size for attractive-text on smaller screens */
            }
        }
    </style>
</head>
<body>
     <div id="successGif" runat="server" class="text-center" style="display: none;">
    <img src="gf.gif" alt="Success GIF" />
</div>
    <form id="form1" runat="server" class="container">
        <div class="text-center">
            <asp:Label ID="Label1" runat="server" Text="RESET YOUR PASSWORD" CssClass="h4"></asp:Label>
        </div>
        <br />
        <div class="form-group">
            <asp:Label ID="Label2" runat="server" Text="ENTER NEW PASSWORD"></asp:Label>
            <asp:TextBox ID="NEWPASS" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:Label ID="Label3" runat="server" Text="CONFIRM PASSWORD"></asp:Label>
            <asp:TextBox ID="CONFIRM" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
         <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="NEWPASS" ControlToValidate="CONFIRM"
            Operator="Equal" Type="String" ErrorMessage="Passwords do not match." CssClass="text-danger" Display="Dynamic"></asp:CompareValidator>
        <br />
        <div class="text-center">
            <asp:Button ID="Button1" OnClick="Button1_Click" runat="server" Text="UPDATE PASSWORD" CssClass="btn btn-success" />
        </div>
        
    </form>
   

</body>
</html>
