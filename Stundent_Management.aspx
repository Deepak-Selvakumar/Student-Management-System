<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Stundent_Management.aspx.vb" Inherits="WebApplication2.Stundent_Management" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" />
    <style>
        body {
            background-image: url('https://images.pexels.com/photos/281260/pexels-photo-281260.jpeg?auto=compress&cs=tinysrgb&w=600');
            background-size: cover;
            background-repeat: no-repeat;
        }

        header {
            background-color: #f8f8f8;
           
            text-align: left;
            border-bottom: 2px solid #ccc;
            color: #333;
        }

        header h1 {
            margin-left: 20px;
            font-size: 18px;
        }

        .breadcrumb {
           width:1500px;
           margin-left:20px;
            font-size: 16px;
        }

        .breadcrumb a {
            text-decoration: none;
            color: #555;
        }

        .breadcrumb a:hover {
            color: #007bff;
        }

        .breadcrumb::after {
            content: ">";
            color: #555;
            margin: 0 5px;
        }

        .breadcrumb a:last-child::after {
            content: "";
        }

     

       .student-card {
    position: relative; 
    width: 300px;
    height: 200px;
    border: 1px solid #ccc;
    margin-right: 20px;
    transition: background-color 0.3s;
    background-size: cover;
    background-repeat: no-repeat;
    display: flex;
    align-items: center;
    justify-content: center;
    overflow: hidden;
}

        .student-card::before {
    content: "";
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background-color: rgba(0, 0, 0, 0.5);
    opacity: 0;
    transition: opacity 0.3s;
}

/* Apply the hover effect */
.student-card:hover::before {
    opacity: 1;
}









        .container-fluid {
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: row; 
            margin-top: 250px;
        }

        .student-card h1 {
    position: relative;
    z-index: 1;
    font-size: 16px;
    color: white;
}
    </style>
</head>
<body>
    <header>
        <h1>STUDENT MANAGEMENT</h1>
        <div class="breadcrumb">
            <a href="#">Home</a> &gt;
              
            <a href="#">Student Management</a>
        </div>
    </header>
    <form id="form1" runat="server">
        <div class="container-fluid">
           <div class="student-card" style="background-image: url('https://images.pexels.com/photos/1553150/pexels-photo-1553150.jpeg?auto=compress&cs=tinysrgb&w=600');">
    <a href="General_Details.aspx" class="card-link">
        <h1>STUDENT INFORMATION</h1>
    </a>
</div>
             <a href="Admission_approval.aspx" class="card-link">
            <div class="student-card" style="background-image: url('https://images.pexels.com/photos/8423046/pexels-photo-8423046.jpeg?auto=compress&cs=tinysrgb&w=600');">
                <h1>ADMISSIONS</h1>
            </div>
                 </a>
             <a href="admissionreport.aspx" class="card-link">
            <div class="student-card" style="background-image: url('https://images.pexels.com/photos/5212345/pexels-photo-5212345.jpeg?auto=compress&cs=tinysrgb&w=600');">
                <h1>ADMISSION REPORT</h1>
            </div>
                 </a>

            <div class="student-card" style="background-image: url('https://images.pexels.com/photos/5212687/pexels-photo-5212687.jpeg?auto=compress&cs=tinysrgb&w=600');">
                <h1>REMOVE STUDENT</h1>
            </div>
        </div>
    </form>
</body>
</html>
