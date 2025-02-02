<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Admin_Home.aspx.vb" Inherits="WebApplication2.Admin_Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous"/>
<link rel="stylesheet"
  href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-icons/1.8.3/font/bootstrap-icons.min.css"/>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>

<link
  href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap"
  rel="stylesheet"/>

    <title></title>

    <style>


        .list {
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
}

/* Apply background images and borders to tab content divs */
.student, .staff, .library, .hotel {
    background-size: cover;
    background-repeat: no-repeat;
    background-position: center;
    height: 300px; 
    padding: 20px;
    margin: 20px;
    color: white; 
    border: 2px solid white;
    border-radius: 10px; 
}

/* Media query for screens below 600px */
@media (max-width: 600px) {
    .list {
        flex-direction: column; /* Stack items vertically on smaller screens */
    }
    
    .student, .staff, .library, .hotel {
        height: 200px; /* Adjust height for smaller screens */
        padding: 10px; /* Adjust padding */
        margin: 10px; /* Adjust margin */
        width: 80%; /* Set a specific width for items */
        margin: 10px auto; /* Center items horizontally */
    }
}

        .list {
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
}

/* Apply background images and borders to tab content divs */
.student, .staff, .library, .hotel {
    background-size: cover;
    background-repeat: no-repeat;
    background-position: center;
    height: 300px; /* Set the default height */
    padding: 20px;
    margin: 20px;
    color: white; /* Adjust text color for better visibility */
    border: 2px solid white; /* Add a white border to the div */
    border-radius: 10px; /* Add rounded corners to the border */
}
        @media (max-width: 600px) {
    .list {
        flex-direction: column; /* Stack items vertically on smaller screens */
    }
    
    .student, .staff, .library, .hotel {
        height: 200px; /* Adjust height for smaller screens */
        padding: 10px; /* Adjust padding */
        margin: 10px; /* Adjust margin */
    }
}
          .student, .staff, .library, .hotel {
        background-size: cover;
        background-repeat: no-repeat;
        background-position: center;
        height: 200px; /* Reduced height */
        padding: 10px; /* Smaller padding */
        margin: 10px; /* Smaller margin */
        color: white; /* Adjust text color for better visibility */
        border: 2px solid white; /* Add a white border to the div */
        border-radius: 8px; /* Smaller rounded corners */
    }

         .list > div {
        flex: 1;
        flex-wrap:wrap
    }

       .list {
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
    }

    
    .student, .staff, .library, .hotel {
        background-size: cover;
        background-repeat: no-repeat;
        background-position: center;
        height: 300px; 
        padding: 20px;
        margin: 20px;
        color: white; 
        border: 2px solid white;
        border-radius: 10px; 
    }

   
    .student {
        background-image: url("https://images.pexels.com/photos/3401403/pexels-photo-3401403.jpeg?auto=compress&cs=tinysrgb&w=600");
    }

    .staff {
        background-image: url("https://images.pexels.com/photos/5212648/pexels-photo-5212648.jpeg?auto=compress&cs=tinysrgb&w=600");
    }

    .library {
        background-image: url("https://images.pexels.com/photos/9572672/pexels-photo-9572672.jpeg?auto=compress&cs=tinysrgb&w=600");
    }

    .hotel {
        background-image: url("https://images.pexels.com/photos/5137969/pexels-photo-5137969.jpeg?auto=compress&cs=tinysrgb&w=600");
    }
         @media (max-width: 767px) {
            .navbar-brand {
                margin-left: 0;
            }
        }

          body {
        background-image: url("https://images.pexels.com/photos/2982449/pexels-photo-2982449.jpeg");
        background-size: cover; /* Adjust the image size to cover the entire background */
        background-repeat: no-repeat; /* Prevent the image from repeating */
        background-attachment: fixed; /* Keep the background fixed while scrolling */
    }
    .bi-list {
        color: white;
    }
      
        @media (min-width: 250px) and (max-width: 450px) {
        .navbar-brand h2 {
            font-size: 16px;
           
        }
        
    }

    /* Media query for screens between 450px and 600px */
    @media (min-width: 450px) and (max-width: 600px) {
        .navbar-brand h2 {
            margin-left:0px;
            font-size: 18px; /* Example: Adjust font size for medium screens */
        }
       
    }


    @media (min-width: 600px) and (max-width: 780px) {
        .navbar-brand h2 {
            margin-left:0px;
            font-size: 20px; 
        }
       
    }

        .navbar img {
            border: 2px solid white;
            border-radius: 50%;
            padding: 2px;
            width: 45px;
            height: 45px;
        }
        .image-container {
            background-color: white;
            display: inline-block;
            border-radius: 50%;
            padding: 2px;
            
        }
         @media (min-width: 992px) {
            .nav-item {
                display: none;
            }
        }
        
         .container-fluid h2{
             color:white;
         }
      .navbar {
            background-image: linear-gradient(to right, #191f45, #002366);
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <header>
              <nav class="navbar navbar-expand-lg navbar-light" style="background-color: #ffe6ff;">

               <div class="container-fluid">
                <div class="image-container">
                    <img src="l1.png" alt="Logo" width="50" height="50" />
                </div>&nbsp;&nbsp;&nbsp;
                   <a class="navbar-brand" href="index.html">
                       <h2 class="mb-2 mb-lg-0 mb-sm-0" >TN MATRICULATION SCHOOL </h2>
                   </a>
                   <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                       data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                       aria-expanded="false" aria-label="Toggle navigation">
                       <span class="bi bi-list"></span>
                   </button>
                   <div class="collapse navbar-collapse" id="navbarSupportedContent">
                       <ul class="nav nav-tabs m-auto mb-2 mb-lg-0">
                           <li class="nav-item">
                               <a class="nav-link  text-white" aria-current="page" href="#">Student</a>
                           </li>
                           <li class="nav-item">
                               <a class="nav-link text-white" href="#about">Staff</a>
                           </li>
                           <li class="nav-item">
                               <a class="nav-link text-white" href="#courses">Library</a>
                           </li>
                           <li class="nav-item">
                               <a class="nav-link text-white" href="#Events">Hostel</a>
                           </li>
                       </ul>
                      
                   </div>
                    <button class="btn btn-light ms-lg-2">LOGOUT</button>
               </div>
           </nav>
            </header>
        <div class="list">

        <div class="student">
                 <h1>STUDENT</h1>
          <asp:Button ID="btnVisit" runat="server" CssClass="btn btn-primary" Text="VISIT" OnClick="btnVisit_Click" />

        </div>
        <div class="staff">
                 <h1>FACULTY</h1> 
                          <button class="btn btn-primary" >VISIT</button>
            
        </div>
            <div class="library">
                  <h1>LIBRARY</h1>
                            <button class="btn btn-primary">VISIT</button>

        </div>
            <div class="hotel">
                 <h1>HOSTEL</h1>
                            <button class="btn btn-primary">VISIT</button>



 



                 
        </div>
            </div>
    </form>
</body>
</html>
