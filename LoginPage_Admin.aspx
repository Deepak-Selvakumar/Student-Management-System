<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="LoginPage_Admin.aspx.vb" Inherits="WebApplication2.LoginPage_Admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login Page</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>


    <style>
        /* Custom CSS */
      .fp{
          margin-left:5px;
      }

          body::before {
            content: "";
            background-image: url(''); /* Replace with your image path */
            background-size: cover;
            background-repeat: no-repeat;
            background-attachment: fixed;
            filter: blur(2px); /* Adjust the blur intensity as needed */
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
        }

           body {
            background-image: url('https://images.pexels.com/photos/2041540/pexels-photo-2041540.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'); /* Replace with your image path */
            background-size: cover;
            background-repeat: no-repeat;
            background-attachment: fixed;
        }


        .custom-login-form {
    max-width: 40%; /* Allow the form to take full width on smaller screens */
    padding: 0 10px; /* Add some horizontal padding for better spacing */
    position: relative;
    margin-top:130px; /* Add some space from the header */
}
.card {
    width: 100%; /* Allow the card to take full width on smaller screens */
    margin: 0 auto; /* Center the card horizontally */
    border: none; /* Remove default card border */
}

       header {
    background-color: #011451;
    display: flex;
    height: 70px; /* Increase the height for better visibility on smaller screens */
    justify-content: space-between;
    padding: 10px 16px; /* Adjust padding for better spacing */
    align-items: center;
    background-color: #040d2b;
    position: relative;
}


        h1 {
            color: white;
            font-size: 14px;
        }

        #addBtn {
            padding: 8px 24px;
            border-radius: 4px;
            font-weight: bold;
            font-size: 10px;
            text-transform: uppercase;
            cursor: pointer;
        }
        .dropdown-menu-right {
            right: 0;
            left: auto;
        }
       
         h1#page_title {
        color: white;
        font-size: 24px; /* Adjust the font size as needed */
        margin: 0;
    }
         .form-control {
    width: 100%; /* Make textboxes take full width of their container */
}
.btn {
    width: 100%; /* Make buttons take full width of their container */
}

#responsiveBtn {
    width=30px;
}

#responsiveBtn:hover {
    background-color: #5a6268;
    color: white;
}



   @media (max-width: 768px) {
         header {
                height: 50px; 
                padding: 8px 16px;
            }
            h1#page_title {
                font-size: 18px;
            }
            .custom-login-form {
                max-width: 80%;
                margin-top: 50px;
            }
        }
      @media (min-width: 768px) and (max-width: 1024px) and (orientation: landscape) {
            /* Adjust styling for tablets in landscape mode */
            header {
                height: 60px;
                padding: 10px 20px;
            }
            h1#page_title {
                font-size: 20px;
            }
            .custom-login-form {
                max-width: 60%;
                margin-top: 70px;
            }
        }
     
        .card-header {
            text-align: center;
            color: grey;
            background-color: #088593; /* Change background color to grey */
        }
                .card-header h4 {
            font-weight: bold;
            margin: 0; /* Remove default margin for cleaner appearance */
        }
                       .a2 {
            font-family: 'Georgia', serif; /* Set a classic font */
            font-size: 22px; /* Larger font size for a classic look */
            font-weight: bold;
            text-decoration: none;
            border-bottom: 2px solid #555; /* Dark gray underline effect */
            color: white; /* Set the text color to white */
        }

    </style>
  
</head>

<body>
      <header>
        <h1 id="page_title">ADMIN PORTAL</h1>


    </header>
    <form id="form1" runat="server" class="container custom-login-form">
        <div class="card">
            <div class="card-header">
                <a class="a2">WELCOME !</a>
            </div>
            <div class="card-body">
                <div class="mb-3">
                    <label for="txtUsername" class="form-label">Username:</label>
                    <asp:TextBox ID="txtUsername" placeholder="Enter userID" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="mb-3">
                    <label for="txtPassword" class="form-label">Password:</label>
                    <asp:TextBox ID="txtPassword" placeholder="Enter Password" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="mb-3">
                    <a class="fp" href="fp.aspx">Forget Password</a>
                                    </div>
                <asp:Label ID="lblMessage" runat="server" CssClass="text-danger"></asp:Label>
                <br />
                <br />
                <asp:Button ID="Button1" runat="server" Text="LOGIN" CssClass="btn btn-primary" />
                <br />
                                    <a href="User_Portal.aspx" class="btn btn-secondary" id="responsiveBtn"> RETURN TO HOME PAGE</a>

            </div>
        </div>
    </form>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-AZCvrAg6dA5Pe33zZptvqPuH4pO1hC2HfH" crossorigin="anonymous"></script>

</body>
</html>
