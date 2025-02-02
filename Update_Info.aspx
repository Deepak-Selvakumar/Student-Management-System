<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Update_Info.aspx.vb" Inherits="WebApplication2.Update_Info" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <link rel="stylesheet" href="Update_Info.css" />


</head>

<body>

    <form id="form2" runat="server">
        <header>
            <h1 class="head">Edit Information</h1>
            <div class="bread">
                <div class="breadcrumb">
                    <a href="#">Home</a> &gt;
             <a class="#" href="Stundent_Management.aspx">Student Mangement</a>&gt;
            <a class="#" href="#">Student Information</a>&gt;
            <a href="General_Details.aspx">General Information</a> &gt;
            <a class="#" href="#">Edit Information</a>&gt;
                </div>
            </div>

            <div class="contain">
                <div class="a">
                    <b><a>Profile Details</a></b><pre> | </pre>
                    <a href="General_Details.aspx">Student list</a>
                    <div class="buttonspn">
                        <asp:Button ID="previousButton" OnClick="previousButton_Click" runat="server" Text="PREVIOUS" />
                        <asp:Button ID="nextButton" onclick="nextButton_Click" runat="server" Text="NEXT" />


<%--                        <button id="previousButton">Previous</button>
                        <button id="nextButton">Next</button>--%>
                    </div>
                </div>

                <div class="b">
                    <div class="pic">

                        <asp:Image ID="Image1" runat="server" CssClass="img-thumbnai rounded-pill" />

                    </div>
                    <div>
                        <h5>Student Name</h5>
                        <asp:Label ID="Label32" runat="server" Text=""></asp:Label>
                    </div>
                    <div>
                        <h5>Adm.NO</h5>
                        <asp:Label ID="Label33" runat="server" Text=""></asp:Label>

                    </div>
                    <div>
                        <h5>Status</h5>
                        <asp:Label ID="Label34" runat="server" Text=""></asp:Label>

                    </div>
                    <div>
                        <h5>Current Class</h5>
                        <asp:Label ID="Label35" runat="server" Text=""></asp:Label>
                    </div>
                </div>
            </div>
        </header>

        <div>

            <div class="nav table-responsive nav-justified" style="width: 100%; overflow: auto;">
                <a class="nav-link active" href="#" id="studentTabLink">Enrollment</a>
                <a class="nav-link " href="#" id="photoTabLink">Photo Upload</a>
                <a class="nav-link " href="#" id="contactTabLink">Contact Details</a>
                <a class="nav-link " href="#" id="parentTabLink">Parent's Details</a>
                <a class="nav-link " href="#" id="siblingTabLink">Sibling's Details </a>
                <a class="nav-link " href="#" id="signTabLink">Sign/Photo</a>
                <a class="nav-link " href="#" id="healthTabLink">Health</a>
                <a class="nav-link " href="#" id="LunchTabLink">Lunch</a>
                <a class="nav-link " href="#" id="documentsTabLink">Documents</a>
            </div>


            <!-- Tabs -->
            <div class="tab" id="studentTab">


                <div class="ad">
                    <div class="container mt-3">
                        <div class="row jumbotron box8">
                            <div class="col-sm-6 form-group mb-4">
                                <asp:Label CssClass="form-label" ID="Labeladmission" runat="server" Text="Admission Number"></asp:Label>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox CssClass="form-control read-only" ID="admissionno" ReadOnly="true" runat="server"></asp:TextBox>
                            </div>

                            <div class="col-sm-6 form-group mb-4">
                                <asp:Label CssClass="form-label" ID="Labelapplication" runat="server" Text="Application Number"></asp:Label>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox CssClass="form-control read-only" ID="applicationno" ReadOnly="true" runat="server"></asp:TextBox>
                            </div>

                            <div class="col-sm-6 form-group mb-4">

                                <asp:Label CssClass="form-label" ID="Label2" runat="server" Text="Registration Number"></asp:Label>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox CssClass="form-control" ID="regno" runat="server" ></asp:TextBox>
                            </div>


                            <div class="col-sm-6 form-group mb-4">

                                <asp:Label CssClass="form-label" ID="Label1" runat="server" Text="Name"></asp:Label>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox CssClass="form-control" ID="yourname" runat="server" ></asp:TextBox>
                            </div>

                            <div class="col-sm-6 form-group mb-4">
                                <asp:Label CssClass="form-label" ID="Label3" runat="server" Text="Joining Site"></asp:Label>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox CssClass="form-control" ID="jsite" runat="server" ></asp:TextBox>
                            </div>

                            <div class="col-sm-6 form-group mb-4">
                                <asp:Label CssClass="form-label" ID="Label31" runat="server" Text="Current Site"></asp:Label>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox CssClass="form-control" ID="csite" runat="server" ></asp:TextBox>
                            </div>



                            <div class="col-sm-6 form-group mb-4">
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





                            <div class="col-sm-6 form-group mb-4">
                                <asp:Label CssClass="form-label" ID="Label4" runat="server" Text="Date of birth"></asp:Label>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox CssClass="form-control" ID="dateofbirth" type="date" pattern="\d{4}-\d{2}-\d{2}" runat="server"></asp:TextBox>

                            </div>




                            <div class="col-sm-6 form-group mb-4">
                                <asp:Label CssClass="form-label" ID="Label5" runat="server" Text="Aadhaar Number"></asp:Label>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox CssClass="form-control" ID="Aadharnumber" runat="server"></asp:TextBox>
                            </div>



                            <div class="col-sm-4 form-group mb-4">
                                <asp:Label CssClass="form-label" ID="Label6" runat="server" Text="Place of birth"></asp:Label>

                                <asp:TextBox CssClass="form-control" ID="pob" runat="server"></asp:TextBox>
                            </div>



                            <div class="col-sm-2 form-group mb-4">
                                <asp:Label CssClass="form-label" ID="Label7" runat="server" Text="Country"></asp:Label>

                                <asp:TextBox CssClass="form-control" ID="Nationality" runat="server"></asp:TextBox>

                            </div>

                            <div class="col-sm-6 form-group mb-4">
                                <asp:Label CssClass="form-label" ID="Label8" runat="server" Text="Gender"></asp:Label>
                                <asp:DropDownList CssClass="form-control" ID="Gender" runat="server">
                                    <asp:ListItem Text="Select Gender" Value=""></asp:ListItem>
                                    <asp:ListItem Text="Male" Value="Male"></asp:ListItem>
                                    <asp:ListItem Text="Female" Value="Female"></asp:ListItem>
                                    <asp:ListItem Text="Prefer Not to Say" Value="Prefer Not to Say"></asp:ListItem>
                                </asp:DropDownList>
                            </div>












                            <div class="col-sm-6 form-group mb-4">
                                <asp:Label CssClass="form-label" ID="Label11" runat="server" Text="Blood group"></asp:Label>
                                <asp:TextBox CssClass="form-control" ID="Bloodgrp" runat="server"></asp:TextBox>
                            </div>



                            <div class="col-sm-6 form-group mb-4">
                                <asp:Label CssClass="form-label" ID="Label12" runat="server" Text="Mother Tongue"></asp:Label>
                                <asp:TextBox CssClass="form-control" ID="mothertongue" runat="server"></asp:TextBox>
                            </div>


                            <div class="col-sm-3 form-group mb-4">
                                <asp:Label CssClass="form-label" ID="Label9" runat="server" Text="Exam Roll No"></asp:Label>
                                <asp:TextBox CssClass="form-control" ID="exrollno" runat="server"></asp:TextBox>
                            </div>



                            <div class="col-sm-3 form-group mb-4">
                                <asp:Label CssClass="form-label" ID="Label10" runat="server" Text="Exam Reg No"></asp:Label>
                                <asp:TextBox CssClass="form-control" ID="exregno" runat="server"></asp:TextBox>
                            </div>



                            <div class="col-sm-6 form-group mb-4">
                                <asp:Label CssClass="form-label" ID="Labelreligion" runat="server" Text="Religion"></asp:Label>
                                <asp:DropDownList CssClass="form-control" ID="Religion" runat="server">
                                    <asp:ListItem Text="Select Religion" Value=""></asp:ListItem>
                                    <asp:ListItem Text="Hinduism" Value="H"></asp:ListItem>
                                    <asp:ListItem Text="Christianity" Value="C"></asp:ListItem>
                                    <asp:ListItem Text="Islam" Value="I"></asp:ListItem>
                                </asp:DropDownList>
                            </div>

                            <div class="col-sm-3 form-group mb-4">
                                <asp:Label CssClass="form-label" ID="Labelcaste" runat="server" Text="Caste"></asp:Label>
                                <asp:DropDownList CssClass="form-control" ID="Caste" runat="server">
                                    <asp:ListItem Text="Select Caste" Value=""></asp:ListItem>
                                    <asp:ListItem Text="OC" Value="O"></asp:ListItem>
                                    <asp:ListItem Text="SC" Value="S"></asp:ListItem>
                                    <asp:ListItem Text="BC" Value="B"></asp:ListItem>
                                    <asp:ListItem Text="MBC" Value="M"></asp:ListItem>
                                </asp:DropDownList>
                            </div>


                            <div class="col-sm-3 form-group mb-4">
                                <asp:Label CssClass="form-label" ID="Sub" runat="server" Text="Sub Caste"></asp:Label>
                                <asp:TextBox CssClass="form-control" ID="Subcaste" runat="server"></asp:TextBox>
                            </div>

                            <div class="col-sm-6 form-group mb-4">
                                <asp:Label CssClass="form-label" ID="Label21" runat="server" Text="Family-ID"></asp:Label>
                                <asp:TextBox CssClass="form-control" ID="familyid" runat="server"></asp:TextBox>
                            </div>

                            <div class="col-sm-6 form-group mb-4">
                                <asp:Label CssClass="form-label" ID="Label30" runat="server" Text="Residence-ID"></asp:Label>
                                <asp:TextBox CssClass="form-control" ID="resiid" runat="server"></asp:TextBox>
                            </div>






                            <div class="col-sm-6 form-group mb-4">
                                <asp:Label CssClass="form-label" ID="Label13" runat="server" Text=""></asp:Label>
                               
                            </div>
                            <!--A1--->
                            <div class="col-sm-3 form-group mb-4">
                                <asp:Label CssClass="form-label" ID="Label14" runat="server" Text=""></asp:Label>
                            </div>

                             <div class="col-sm-1 form-group mb-4">
                                <asp:Label CssClass="form-label" ID="Label15" runat="server" Text=""></asp:Label>
                            </div>

                             <div class="col-sm-2 form-group mb-4">
                            <asp:Button ID="Button1" CssClass="btn btn-outline-primary" runat="server" Text="Update" />
                             </div>


                        </div>
                        <br />
                    </div>
                </div>
            </div>
        </div>
        <!-- photo details form goes here -->

        <div class="tab" id="photoTab">
            <div class="container py-5">


                <div>
                    <asp:FileUpload ID="formFile" runat="server" />
                    <br />
                    <asp:Button ID="submit" runat="server" Text="Upload and Display Image" OnClick="Submit_Click1" />
                    <br />
                    <asp:Image ID="imgUploaded" runat="server" CssClass="uploaded-image" />


                    <div class="pic">

                        <asp:Image ID="Image2" runat="server" CssClass="img-thumbnai rounded-pill" />

                    </div>

                </div>



            </div>
        </div>
        <!-- Contact details form goes here -->
        <div class="tab" id="contactTab">
            <div class="ad">
                <div class="container mt-3">

                    <div class="row jumbotron box8">

                        <!--B1-->
                        
<div class="col-sm-6 form-group mb-4">
        <asp:Label CssClass="form-label" ID="Label17"  runat="server" Text="Primary Contact" Font-Bold="True"></asp:Label>
         <asp:DropDownList CssClass="form-control" ID="primarycontact" runat="server">
        <asp:ListItem Text="Select" Value=""></asp:ListItem>
        <asp:ListItem Text="Father" Value="O"></asp:ListItem>
        <asp:ListItem Text="Mother" Value="S"></asp:ListItem>
        <asp:ListItem Text="Sister" Value="B"></asp:ListItem>
           <asp:ListItem Text="Brother" Value="M"></asp:ListItem>    
         </asp:DropDownList>             
</div>

                            <div class="col-sm-6 form-group mb-4">        
        <asp:Label CssClass="form-label" ID="Label23" runat="server" Text="First Name"></asp:Label>
        <asp:TextBox CssClass="form-control" ID="pfname" runat="server"></asp:TextBox>
           </div>
                            <div class="col-sm-6 form-group mb-4">        
        <asp:Label CssClass="form-label" ID="Label24" runat="server" Text="Middle Name"></asp:Label>
        <asp:TextBox CssClass="form-control" ID="pmiddlename" runat="server"></asp:TextBox>
           </div>

                           <div class="col-sm-6 form-group mb-4">        
        <asp:Label CssClass="form-label" ID="Label25" runat="server" Text="Last Name"></asp:Label>
        <asp:TextBox CssClass="form-control" ID="plastname" runat="server"></asp:TextBox>
           </div>

                         <div class="col-sm-6 form-group mb-4">        
        <asp:Label CssClass="form-label" ID="Label18" runat="server" Text="Mobile Number"></asp:Label>
        <asp:TextBox CssClass="form-control" ID="mobilenumber" runat="server"></asp:TextBox>
           </div>


                         <div class="col-sm-6 form-group mb-4">        
        <asp:Label CssClass="form-label" ID="Label19" runat="server" Text="Email-id"></asp:Label>
        <asp:TextBox CssClass="form-control" ID="mailid" runat="server"></asp:TextBox>
           </div>
                    
                         
<div class="col-sm-6 form-group mb-4">
        <asp:Label CssClass="form-label" ID="Label20"  runat="server" Text="Secondary Contact" Font-Bold="True"></asp:Label>
         <asp:DropDownList CssClass="form-control" ID="secondarycontact" runat="server">
        <asp:ListItem Text="Select" Value=""></asp:ListItem>
        <asp:ListItem Text="Father" Value="O"></asp:ListItem>
        <asp:ListItem Text="Mother" Value="S"></asp:ListItem>
        <asp:ListItem Text="Sister" Value="B"></asp:ListItem>
           <asp:ListItem Text="Brother" Value="M"></asp:ListItem>    
         </asp:DropDownList>             
</div>

                            <div class="col-sm-6 form-group mb-4">        
        <asp:Label CssClass="form-label" ID="Label22" runat="server" Text="First Name"></asp:Label>
        <asp:TextBox CssClass="form-control" ID="sfname" runat="server"></asp:TextBox>
           </div>
                            <div class="col-sm-6 form-group mb-4">        
        <asp:Label CssClass="form-label" ID="Label26" runat="server" Text="Middle Name"></asp:Label>
        <asp:TextBox CssClass="form-control" ID="sname" runat="server"></asp:TextBox>
           </div>

                           <div class="col-sm-6 form-group mb-4">        
        <asp:Label CssClass="form-label" ID="Label27" runat="server" Text="Last Name"></asp:Label>
        <asp:TextBox CssClass="form-control" ID="slname" runat="server"></asp:TextBox>
           </div>

                         <div class="col-sm-6 form-group mb-4">        
        <asp:Label CssClass="form-label" ID="Label28" runat="server" Text="Mobile Number"></asp:Label>
        <asp:TextBox CssClass="form-control" ID="smob" runat="server"></asp:TextBox>
           </div>


                         <div class="col-sm-6 form-group mb-4">        
        <asp:Label CssClass="form-label" ID="Label29" runat="server" Text="Email-id"></asp:Label>
        <asp:TextBox CssClass="form-control" ID="mail" runat="server"></asp:TextBox>
           </div>
                        <asp:Button ID="Button3" runat="server" Text="Update" />

                    </div>
                </div>
            </div>
        </div>
        <!-- parents information form goes here -->
        <div class="tab" id="parentTab">
            <div class="ad">
                <div class="container mt-3">

                    <div class="row jumbotron box8">

                        under construction

                    </div>
                </div>
            </div>
        </div>

        <!-- Sibling information form goes here -->
        <div class="tab" id="siblingTab">
            <div class="ad">
                <div class="container mt-3">

                    <div class="row jumbotron box8">
                    </div>
                </div>
            </div>
        </div>

        <div class="tab" id="signTab">
            <div class="container py-5">
                <h2>Sign Upload</h2>
               Under Construction
                    <asp:FileUpload ID="FileUpload2" runat="server" />
                <!-- Photo upload form goes here -->
            </div>
        </div>

        <div class="tab" id="healthTab">
            <div class="container py-5">
                <h2>Health Information</h2>
                  Under Construction
                    <!-- Health information form goes here -->
            </div>
        </div>


        <div class="tab" id="LunchTab">
            <div class="container py-5">
                <h2>Health Information</h2>
                  Under Construction
                    <!-- Health information form goes here -->
            </div>
        </div>
        <div class="tab" id="documentsTab">
            <div class="ad">
                <div class="container mt-3">
                    <div class="row jumbotron box8">
                        <div class="col-sm-12">
                            <div class="text-end mb-3">
                                <asp:Button ID="adddoc" runat="server" Text="ADD NEW DOCUMENT"  CssClass="btn btn-warning" />
                            </div>
                            <asp:GridView ID="Docupload" runat="server" AutoGenerateColumns="False" >
                                <Columns>
                                    <asp:BoundField DataField="updated_on" HeaderText="updated_on" SortExpression="updated_on"></asp:BoundField>
                                    <asp:BoundField DataField="updated_by" HeaderText="updated_by" SortExpression="updated_by"></asp:BoundField>
                                    <asp:BoundField DataField="document_type" HeaderText="document_type" SortExpression="document_type"></asp:BoundField>
                                    <asp:BoundField DataField="file_description" HeaderText="file_description" SortExpression="file_description"></asp:BoundField>
                                    <asp:BoundField DataField="file_type" HeaderText="file_type" SortExpression="file_type"></asp:BoundField>
                                </Columns>
                            </asp:GridView>

                        </div>
                    </div>
                </div>
            </div>
        </div>
        
<div class="tab" id="addTab" style="display: none;">
    <div class="container mt-3">
        <div class="row custom-jumbotron custom-box">
            <div class="col-sm-12">
                <h2 class="text-center mb-4">ADD NEW DOCUMENT</h2>
                <div class="form-group">
                    <label for="newFileType">File Type</label>
                    <input class="form-control" type="text" id="newFileType" runat="server" />
                </div>
                <div class="form-group">
                    <label for="newFileDescription">File Description</label>
                    <input class="form-control" type="text" id="newFileDescription" runat="server" />
                </div>
                <div class="form-group">
                    <label for="newDocumentType">Document Type</label>

                    <asp:DropDownList ID="doctype" runat="server">
                        <asp:ListItem>jpg</asp:ListItem>
                        <asp:ListItem>png</asp:ListItem>
                        <asp:ListItem>jpeg</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="form-group">
                    <label for="newComments">Comments</label>
                    <textarea class="form-control" runat="server" id="newComments" rows="3"></textarea>
                </div>
               <div class="form-group">
        <label for="newFileUpload">Upload File</label>
                   <asp:FileUpload ID="uploaddoc" runat="server" />
     
    </div>
    <div class="text-center">
        <asp:Button ID="ins" runat="server" CssClass="btn btn-primary" Text="Insert" />
        <asp:Button ID="cancelBtn" runat="server" CssClass="btn btn-dark"  Text="Cancel"/>
       
    </div>
            </div>
        </div>
    </div>
</div>
        
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
    $(document).ready(function () {
        $('#adddoc').click(function () {
            $('#documentsTab').hide();
            $('#addTab').show();
            $('#studentTab').hide(); 
            return false;
        });

        $('#cancelBtn').click(function () {
            $('#addTab').hide();
            $('#documentsTab').show();
            $('#studentTabLink').show(); 
            return false
        });
    });
</script>
    </form>

    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <script>
        $(document).ready(function () {
            $(".tab").hide();
            $("#studentTab").show();

            $(".nav-link").click(function () {
                $(".nav-link").removeClass("active");
                $(this).addClass("active");

                $(".tab").hide();
                var targetTabId = $(this).attr("id").replace("TabLink", "Tab");
                $("#" + targetTabId).show();
            });
        });



    </script>


</body>
</html>
