<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="fp.aspx.vb" Inherits="WebApplication2.fp" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet" />
    <style>
        body {
            background-image: url('https://images.pexels.com/photos/5212700/pexels-photo-5212700.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1');
            background-size: cover;
            background-repeat: no-repeat;
        }
        .container {
            margin-top: 250px; /* Reduced margin-top */
            max-width: 400px; /* Added max-width */
            padding: 20px;
            border-radius: 10px;
            background-color: rgba(255, 255, 255, 0.9);
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2); /* Added shadow */
        }
        .btn-primary {
            background-color: #007bff;
            border-color: #007bff;
        }
        .btn-secondary {
            background-color: #6c757d;
            border-color: #6c757d;
        }
        .btn-group {
            margin-top: 10px;
        }
        
        .attractive-text {
            font-family: 'Poppins', sans-serif;
            font-size: 24px;
            color: #555;
            margin-bottom: 15px;
        }
    </style>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@500&display=swap" rel="stylesheet"/>
</head>
<body>
    <form id="form1" runat="server" class="container">
        <div class="text-center">
            <asp:Label ID="Label3" runat="server" Text="FORGET PASSWORD" CssClass="h3 violet-background attractive-text"></asp:Label>
        </div>
        
        <br />
        <div class="form-group">
            <asp:Label ID="Label1" runat="server" Text="Enter Your Email-ID"></asp:Label>
            <asp:TextBox ID="mailbox" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="text-center">
            <div class="btn-group" role="group">
                <asp:Button ID="iknowbutton" OnClick="iknowbutton_Click" runat="server" Text="I know my password" CssClass="btn btn-secondary" />
                <asp:Button ID="sendlink" runat="server" OnClick="sendlink_Click" Text="Send Password Reset Link" CssClass="btn btn-primary" />
            </div>
        </div>
    </form>
</body>
</html>
