<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="admissionform1.aspx.vb" Inherits="WebApplication2.admissionform1" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head  runat="server">
    <title>Admission Form</title>
        <meta name="viewport" content="width=device-width, initial-scale=1"/>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-icons/1.8.3/font/bootstrap-icons.min.css"/>

    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>

   <style>


       .checkbox-large {
               margin-top: 10px; 

    transform: scale(2); 
}

         #chb {
    transform: scale(2.5);
    margin-left: 20px;
  
  
  }
        label {
        font-weight: 600;
        color:#ffffff;
    }
    .adjustthecheckbox{
        justify-content:space-around;
    }
    body {
     
   /*
       
      background-image: url('https://wallpapers.com/images/hd/old-books-on-shelves-h8cn9mhxw0br2w5o.jpg');
  
       */}
    .box8{
      box-shadow: 0px 0px 5px 1px #999;
    }
    .mx-t3{
      margin-top: -3rem;
    }
    .ad{
        margin-top:50px ;
    }
   .img-fluid{
       max-width: 50px; 
        height: auto;
        margin-left:460px;
   }

   header{
       margin-right:0px;
   }
    </style>
    </head>


<body>
   
    <div class="ad">
<div class="container mt-3"  >
        <form id="form1" runat="server">
             <header>
        <asp:Button CssClass="btn btn-primary" ID="Button2" OnClick="Button2_Click" runat="server" Text="Return to Homepage" />
    </header>
            <img src="l1.png" alt="Admission Form Image" class="img-fluid" />
                <div class="row jumbotron box8">
       <div class="col-sm-12 mx-t3 mb-4">
  
    <h2 class="text-center text-info">ADMISSION FORM</h2>
</div>



                 <div class="col-sm-6 form-group">

                <asp:Label CssClass="form-label" ID="Label1" runat="server" Text="Name"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <!--<asp:TextBox CssClass="form-control"  ID="name" runat="server" required></asp:TextBox>-->
                     <asp:TextBox CssClass="form-control"  ID="userTxt" runat="server" ></asp:TextBox>
            </div>





               <div class="col-sm-6 form-group">
                <asp:Label CssClass="form-label" ID="Classsought" runat="server" Text="Class sought"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <!--  <asp:TextBox CssClass="form-control"  ID="class_sought" runat="server"></asp:TextBox> -->
                    <asp:DropDownList CssClass="form-control" ID="cs" runat="server">
                 <asp:ListItem>Select</asp:ListItem>
                 <asp:ListItem>I</asp:ListItem>
                 <asp:ListItem>II</asp:ListItem>
                 <asp:ListItem>III</asp:ListItem>
                 <asp:ListItem>IV</asp:ListItem>
                 <asp:ListItem>V</asp:ListItem>
                 <asp:ListItem>VI</asp:ListItem>
                 <asp:ListItem>VII</asp:ListItem>
                 <asp:ListItem>VIII</asp:ListItem>
                 <asp:ListItem>IX</asp:ListItem>
                 <asp:ListItem>X</asp:ListItem>
                 <asp:ListItem>XI</asp:ListItem>
                 <asp:ListItem>XII</asp:ListItem>
        
             </asp:DropDownList>
            </div>


          <div class="col-sm-6 form-group">
        <asp:Label CssClass="form-label" ID="Label3"  runat="server" Text="Academic Year"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       <!-- <asp:TextBox CssClass="form-control"  ID="Academicyear" runat="server"></asp:TextBox>-->
              <asp:DropDownList CssClass="form-control" ID="dropdownay" runat="server">
                 <asp:ListItem>Select</asp:ListItem>
                 <asp:ListItem>2010</asp:ListItem>
                 <asp:ListItem>2011</asp:ListItem>
                 <asp:ListItem>2012</asp:ListItem>
                 <asp:ListItem>2013</asp:ListItem>
                 <asp:ListItem>2014</asp:ListItem>
                 <asp:ListItem>2015</asp:ListItem>
                 <asp:ListItem>2016</asp:ListItem>
                 <asp:ListItem>2017</asp:ListItem>
                 <asp:ListItem>2018</asp:ListItem>
                 <asp:ListItem>2019</asp:ListItem>
                 <asp:ListItem>2020</asp:ListItem>
                 <asp:ListItem>2021</asp:ListItem>
                 <asp:ListItem>2022</asp:ListItem>
                 <asp:ListItem>2023</asp:ListItem>
             </asp:DropDownList>
            </div>
            

    

         <div class="col-sm-6 form-group">
    <asp:Label CssClass="form-label" ID="Label4" runat="server" Text="Date of birth"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox CssClass="form-control"  ID="dateofbirth" type="date" pattern="\d{4}-\d{2}-\d{2}" runat="server"></asp:TextBox>
    
</div>

       

         
<div class="col-sm-6 form-group">
 <asp:Label CssClass="form-label" ID="Label5"  runat="server" Text="Aadhaar Number"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox  CssClass="form-control"  ID="Aadharnumber" runat="server"></asp:TextBox>
            </div>
            

                     
    <div class="col-sm-4 form-group">
        <asp:Label CssClass="form-label" ID="Label6"  runat="server" Text="Place of birth"></asp:Label>

        <asp:TextBox CssClass="form-control" ID="pob"  runat="server"></asp:TextBox>
               </div>
                 

   
               <div class="col-sm-2 form-group">
        <asp:Label CssClass="form-label" ID="Label7"  runat="server" Text="Country"></asp:Label>

        <asp:TextBox CssClass="form-control" ID="Nation"  runat="server"></asp:TextBox>
        
            </div>
             
<div class="col-sm-6 form-group">
    <asp:Label CssClass="form-label" ID="Label8" runat="server" Text="Gender"></asp:Label>
    <asp:DropDownList CssClass="form-control" ID="Gender" runat="server">
        <asp:ListItem Text="Select Gender" Value=""></asp:ListItem>
        <asp:ListItem Text="Male" Value="Male"></asp:ListItem>
        <asp:ListItem Text="Female" Value="Female"></asp:ListItem>
        <asp:ListItem Text="Prefer Not to Say" Value="Prefer Not to Say"></asp:ListItem>
    </asp:DropDownList>
</div>


            


            <div class="col-sm-6 form-group">
        <asp:Label CssClass="form-label" ID="Label9"  runat="server" Text="Residental Address"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox CssClass="form-control" ID="Residentaladdress"   runat="server"></asp:TextBox>
        </div>
            



     <div class="col-sm-3 form-group">
        <asp:Label CssClass="form-label" ID="Label10"  runat="server" Text="Pincode"></asp:Label>
        <asp:TextBox CssClass="form-control" ID="pincode"  runat="server"></asp:TextBox>
       </div>
          


                <div class="col-sm-3 form-group">
        <asp:Label CssClass="form-label" ID="Label11"  runat="server" Text="Blood group"></asp:Label>
        <asp:TextBox CssClass="form-control" ID="Bloodgrp"  runat="server"></asp:TextBox>
             </div>
          


                <div class="col-sm-3 form-group">
        <asp:Label CssClass="form-label" ID="Label12"  runat="server" Text="Mother Tongue"></asp:Label>
        <asp:TextBox CssClass="form-control" ID="mothertongue"  runat="server"></asp:TextBox>
                </div>

             


                <div class="col-sm-3 form-group">

        <asp:Label CssClass="form-label" ID="Label13"  runat="server" Text="Identification mark"></asp:Label>
        <asp:TextBox CssClass="form-control" ID="Imark"  runat="server"></asp:TextBox>
            </div>
         

            <div class="col-sm-6 form-group">
        <asp:Label CssClass="form-label" ID="Label14"  runat="server" Text="Previous school name"></asp:Label>
        <asp:TextBox CssClass="form-control" ID="previousschoolname"  runat="server"></asp:TextBox>
            </div>
             


       <div class="col-sm-6 form-group">
        <asp:Label CssClass="form-label" ID="Label15"  runat="server" Text="Previous school location"></asp:Label>
        <asp:TextBox CssClass="form-control"  ID="Previousschoollocation"  runat="server"></asp:TextBox>
           </div>
            


          <div class="col-sm-6 form-group">
        <asp:Label  CssClass="form-label" ID="Label16"  runat="server" Text="Previous school class"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox CssClass="form-control" ID="Previousschoolclass"  runat="server"></asp:TextBox>
             </div>
            


         <div class="col-sm-3 form-group">
        <asp:Label ID="Label17" CssClass="form-label" runat="server" Text="Previous school year of study"></asp:Label>
        <!--<asp:TextBox CssClass="form-control" ID="Previousschoolyearofstudy"  runat="server"></asp:TextBox> -->
             <asp:DropDownList CssClass="form-control" ID="Dos" runat="server">
                 <asp:ListItem>Select</asp:ListItem>
                 <asp:ListItem>2010</asp:ListItem>
                 <asp:ListItem>2011</asp:ListItem>
                 <asp:ListItem>2012</asp:ListItem>
                 <asp:ListItem>2013</asp:ListItem>
                 <asp:ListItem>2014</asp:ListItem>
                 <asp:ListItem>2015</asp:ListItem>
                 <asp:ListItem>2016</asp:ListItem>
                 <asp:ListItem>2017</asp:ListItem>
                 <asp:ListItem>2018</asp:ListItem>
                 <asp:ListItem>2019</asp:ListItem>
                 <asp:ListItem>2020</asp:ListItem>
                 <asp:ListItem>2021</asp:ListItem>
                 <asp:ListItem>2022</asp:ListItem>
                 <asp:ListItem>2023</asp:ListItem>
             </asp:DropDownList>
            </div>
         


        <div class="col-sm-3 form-group">
        <asp:Label CssClass="form-label" ID="Label18" runat="server" Text="Previous school percentage"></asp:Label>
        <asp:TextBox CssClass="form-control" ID="Previousschoolpercentage" runat="server"></asp:TextBox>
           </div>
       


        <div class="col-sm-6 form-group">
        <asp:Label CssClass="form-label" ID="Label19" runat="server" Text="Achievements"></asp:Label>
        <asp:TextBox CssClass="form-control" ID="Achievements1" runat="server"></asp:TextBox>
           </div>
           

        <div class="col-sm-6 form-group">
        <asp:Label ID="Label20" CssClass="form-label" runat="server" Text="G-mail id"></asp:Label>
        <asp:TextBox ID="mail" CssClass="form-control" runat="server"></asp:TextBox>
            <br />
           </div>
                </div>
        <br />   

<div class="terms-container">
    &nbsp;<input class="form-check-input checkbox-large" type="checkbox" id="check-box" />&nbsp;&nbsp;&nbsp;
    <button id="terms-button" class="btn btn-secondary" onmouseover="showTerms()" onmouseout="hideTerms()">Terms and Conditions</button>
    <div class="terms-popup" id="terms-popup">
        <h3><pre> Terms and Conditions</pre></h3>
        <p><pre>   Double Entry leads to Rejection</pre></p>
    </div>
</div>



            <div class="btn">
                <asp:Button CssClass="btn-primary" ID="Button1" OnClick="btnAddStudent_Click" runat="server" Text="Submit" />
            </div>
                    
        </form>
    </div>
        </div>



  
    
    <script>
        function showTerms() {
            var termsPopup = document.getElementById("terms-popup");
            termsPopup.style.display = "block";
        }

        function hideTerms() {
            var termsPopup = document.getElementById("terms-popup");
            termsPopup.style.display = "none";
        }
    </script>
    <style>
    

        .terms-container {
            position: relative;
            display: inline-block;
        }

        .terms-popup {
            display: none;
            position: fixed;
            top: 50%;
            left: 50%; 
            transform: translate(-50%, -50%); 
            background-color: white;
            border: 1px solid #ccc;
            padding: 10px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            z-index: 1;
        }

        #terms-button:hover + #terms-popup {
            display: block;
        }

.btn-primary {
    background-color: #007bff; 
    color: #fff;
    border-radius: 9px;
    padding: 6px 12px; 
    font-size: 20px; 
}

        </style>
    
</body>
</html>

