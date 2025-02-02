<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="User_Portal.aspx.vb" Inherits="WebApplication2.User_Portal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <script src="script.js"></script>
     <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous"/>
    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-icons/1.8.3/font/bootstrap-icons.min.css"/>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>

    <link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap"
          rel="stylesheet"/>
        <title>Deepak</title>
        <link rel="stylesheet" href="User_Portal.css"/>

        <link rel="preconnect" href="https://fonts.googleapis.com"/>
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin/>
        <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300&display=swap" rel="stylesheet"/>
</head>
<body>
      <header class="fixed-top">
           
            <!--Navbar Start-->
            <nav class="navbar navbar-expand-lg navbar-light" style="background-color: #ffe6ff;">

                <div class="container-fluid">
                    <img src="l1.png" alt="Logo" width="50" height="50">&nbsp;&nbsp;&nbsp;
                    <a class="navbar-brand" href="index.html">
                        <h2 class="fw-bold  mb-2 mb-lg-0 mb-sm-0">TN Mat.Hr.Sec.School</h2>
                    </a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                            data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                            aria-expanded="false" aria-label="Toggle navigation">
                        <span class="bi bi-list"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav m-auto mb-2 mb-lg-0">
                            <li class="nav-item">
                                <a class="nav-link active" aria-current="page" href="#">Home</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#about">About</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#courses">Courses</a>
                            </li>

                            <li class="nav-item">
                                <a class="nav-link" href="#Events">Events</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#contact">Contact Us</a>
                            </li>
                           <li class="nav-item">
                                <a class="nav-link" href="LoginPage_Admin.aspx">Admin Portal</a>
                            </li>
                             <li class="nav-item">
                                <a class="nav-link" href="admissionform1.aspx">Admission form</a>
                            </li>
                        </ul>
                        <!--radiobuttons-->
                        <style>
                            #radioButtonsContainer {
                                display: none;
                                background-color: lightgray;
                                border-radius: 5px;
                                padding: 10px;
                                position: fixed;
                                top: 107px;
                                right: -100%; /* Start from outside the viewport */
                                animation: fadeInFromRight 0.5s forwards;
                            }

                            @keyframes fadeInFromRight {
                                0% {
                                    right: -100%;
                                }

                                100% {
                                    right: 0;
                                }
                            }

                            #redirectButton {
                                background-color: #007bff; /* Blue color */
                                color: white;
                                border: none;
                                padding: 8px 16px;
                                border-radius: 5px;
                                cursor: pointer;
                                transition: background-color 0.3s ease;
                            }

                                #redirectButton:hover {
                                    background-color: #0056b3; /* Darker blue on hover */
                                }
                        </style>

                        <!--radio buttons style-->




                      

                        <ul class="navbar-nav mb-2 mb-lg-0 action-menu">
                            <li class="nav-item">
                                <a class="nav-link" href="#" id="dropdownTrigger">
                                   
                                </a>
                            </li>
                        </ul>

                      


                     
                    </div>
                </div>
            </nav>
            <!--Navbar End-->

        </header>
        <!--Header End-->


        <div class="popup" id="popup">




            <button type="button" id="close">
                <i class="fa fa-times" aria-hidden="true">X</i>
            </button>
            <div class="row">
                <div class="col-md-12">
                    <div class="fr-box">
                        <h4>TN  MATRICULATION  HR  SEC  SCHOOL</h4>
                        <center><img src="https://e0.pxfuel.com/wallpapers/20/900/desktop-wallpaper-oxford-oxford.jpg" alt="" class="img-responsive"></center>
                        <h2>Admission Open<br><span>2024-25</span></h2>
                        <div class="register">
                            <h6>Registration Open from 1<sup>st</sup> January - 31<sup>st</sup> December 2024</h6>
                            <h5>
                                <b>OFFLINE ADMISSION IS CLOSED</b>
                            </h5>
                            <h3>REGISTER ONLINE NOW!</h3>


                        </div>
                        <p>
                            <b>SELECT HERE:&nbsp;&nbsp;</b>
                            <a target="_blank" href="This is my link1">Primary</a> &nbsp;|&nbsp;
                            <a target="_blank" href="This is my link2">Higher</a> &nbsp;|&nbsp;
                            <a target="_blank" href="This is my link3">Lateral</a>
                        </p>
                    </div>
                </div>
            </div>

        </div>
        <script>
            document.getElementById("close").addEventListener("click", function () {
                var popup = document.getElementById("popup");
                popup.style.display = "none";
            });
        </script>

        <!--slide show-->


        <div id="carouselExampleCaptions" class="carousel slide mb-3" data-bs-ride="carousel">
            <div class="carousel-indicators">
                <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active"
                        aria-current="true" aria-label="Slide 1"></button>
                <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1"
                        aria-label="Slide 2"></button>
                <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2"
                        aria-label="Slide 3"></button>
            </div>
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img class="img-fluid w-100 h-100 overflow-hidden"
                         src="https://wallpapercave.com/wp/wp4385848.jpg"
                         class="d-block w-100" alt="...">
                    <div class="carousel-caption d-block">
                        <h5>Value Education</h5>
                        <p>Deeply rooted with global values for your children and imbibing good human education.</p>
                    </div>
                </div>
                <div class="carousel-item">
                    <img class="img-fluid w-100 h-100 overflow-hidden"
                         src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRj6vNj2RzWMf1ZBYU_lWS6v57DtK1_Fn0VbHJ3I5xgAPiR_LK1rVLymvk8V4pi5rtfeWE&usqp=CAU"
                         class="d-block w-100" alt="...">
                    <div class="carousel-caption d-block">
                        <h5>Embracing Nature</h5>
                        <p>Tesching how to protect nature and other good values.</p>
                    </div>
                </div>
                <div class="carousel-item">
                    <img class="img-fluid w-100 h-100 overflow-hidden"
                         src="https://images.unsplash.com/photo-1509062522246-3755977927d7?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTB8fGVkdWNhdGlvbnxlbnwwfHwwfHx8MA%3D%3D&w=1000&q=80"
                         class="d-block w-100" alt="...">
                    <div class="carousel-caption d-block">
                        <h5>Encouraging health</h5>
                        <p>Clean green and intically cleaned 0% sugar and 100% health</p>
                    </div>
                </div>
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions"
                    data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions"
                    data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </button>
        </div>

        <!--slide show end-->
        <main id="main">

            <!-- ======= About Section ======= -->
            <section id="about" class="about mt-5">
                <div class="container-fluid">
                    <h2 class="h1-responsive font-weight-bold text-center my-2">About</h2>
                    <!--Section description-->
                    <p class="text-center w-responsive mx-auto mb-1">
                        Do you have any questions? Please do not hesitate to
                        contact us directly. Our team will come back to you within
                        a matter of hours to help you.
                    </p>
                    <div class="row  pt-5 pb-5">

                        <div class="col-lg-5 align-items-stretch video-box"
                             style='background-image: url("https://wallpapercrafter.com/sizes/3840x2160/255551-smile-childhood-school-and-laughter-hd.jpg");'>
                            <a href="https://youtu.be/Y5BeWdODPqo" class="venobox play-btn mb-4"
                               data-vbtype="video" data-autoplay="true"></a>
                        </div>

                        <div class="col-lg-7 d-flex flex-column justify-content-center align-items-stretch">

                            <div class="content">
                                <h3>in 2008 and quickly became a k<strong>in 2008 and quickly became a k</strong></h3>
                                <p>
                                    tarted his youth career with the Delhi Under-15 team. He made his international debut
                                    in 2008 and quickly became a key player in the ODI team and later made his Test debut in 2011.
                                    In 2013, Kohli reached the number one spot
                                </p>
                                <p class="font-italic">
                                    tarted his youth career with the Delhi Under-15 team. He made his international debut
                                    in 2008 and quickly became a key player in the ODI team and later made his Test debut in 2011.
                                    In 2013, Kohli reached the number one spot
                                </p>
                                <ul>
                                    <li><i class="bx bx-check-double"></i> and started his youth career with the Delhi.</li>
                                    <li><i class="bx bx-check-double"></i> and started his youth career with the Delhi.</li>
                                    <li>
                                        <i class="bx bx-check-double"></i> and started his youth career with the Delhi Under-15 team. He made his international debut
                                        in 2008 and quickly became a key player in the ODI team and later made his Test debut in 2011.
                                        In 2013, Kohli reached the number one spot in the ICC rankings for ODI batsmen for the first time..
                                    </li>
                                </ul>
                                <p>
                                    Born and raised in New Delhi, Kohli trained at the West Delhi Cricket Academy
                                    and started his youth career with the Delhi Under-15 team. He made his international debut
                                    in 2008 and quickly became a key player in the ODI team and later made his Test debut in 2011.
                                    In 2013, Kohli reached the number one spot in the ICC rankings for ODI batsmen for the first time.
                                    During 2014 T20 World Cup, he set a record for the most runs scored in the tournament.

                                </p>
                            </div>

                        </div>

                    </div>

                </div>
              

            </section><!-- End About Section -->
            <section id="courses">
                <div class="container course pb-5 pt-5">
                    <h2 class="h1-responsive font-weight-bold text-center my-4">Courses</h2>
                    <!--Section description-->
                    <p class="text-center w-responsive mx-auto mb-5">
                        Do you have any questions? Please do not hesitate to
                        contact us directly. Our team will come back to you within
                        a matter of hours to help you.
                    </p>
                    <div class="row">
                        <div class="col-md-4">
                            <div class="card box">
                                <div class="bg-image hover-overlay ripple" data-mdb-ripple-color="light">
                                    <img src="https://hopelands.org.uk/wp-content/uploads/2021/09/French-scaled.jpg"
                                         class="img-fluid" />
                                    <a href="#!">
                                        <div class="mask" style="background-color: rgba(251, 251, 251, 0.15);"></div>
                                    </a>
                                </div>
                                <div class="card-body">
                                    <h5 class="card-title">Primary</h5>
                                    <p class="card-text">
                                        Some quick example text to build on the card title and make up the
                                        bulk of the card's content.
                                    </p>
                                    <a href="#!" class="btn btn-primary">Read More</a>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-4">
                            <div class="card box">
                                <div class="bg-image hover-overlay ripple" data-mdb-ripple-color="light">
                                    <img src="https://m.economictimes.com/thumb/msid-77405020,width-1200,height-900,resizemode-4,imgsize-851223/virus-students-pti.jpg"
                                         class="img-fluid" />
                                    <a href="#!">
                                        <div class="mask" style="background-color: rgba(251, 251, 251, 0.15);"></div>
                                    </a>
                                </div>
                                <div class="card-body">
                                    <h5 class="card-title">Higher sec school</h5>
                                    <p class="card-text">
                                        Some quick example text to build on the card title and make up the
                                        bulk of the card's content.
                                    </p>
                                    <a href="#!" class="btn btn-primary">Read More</a>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-4">
                            <div class="card box">
                                <div class="bg-image hover-overlay ripple" data-mdb-ripple-color="light">
                                    <img src="https://m.economictimes.com/thumb/msid-86803840,width-1200,height-900,resizemode-4,imgsize-139272/17000-indian-students-likely-to-return-to-australia-soon-pradhan-raises-issue-with-australian-counterpart.jpg"
                                         class="img-fluid" />
                                    <a href="#!">
                                        <div class="mask" style="background-color: rgba(251, 251, 251, 0.15);"></div>
                                    </a>
                                </div>
                                <div class="card-body">
                                    <h5 class="card-title">Groups availabe in 12 std</h5>
                                    <p class="card-text">
                                        Some quick example text to build on the card title and make up the
                                        bulk of the card's content.
                                    </p>
                                    <a href="#!" class="btn btn-primary">Read More</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>

            <section id="Events">
                <div class="container">
                    <h2 class="h1-responsive font-weight-bold text-center my-4">Gallery</h2>
                    <!--Section description-->
                    <p class="text-center w-responsive mx-auto mb-5">
                        kjsdnlbvsjdvlkbsjbvlksjvbsdkjbvsdkvbsdkjlbvd
                        hcbiufsdvucidsvcdhiusdvhcjdhcuisdhvcsueicuecwuegc.
                    </p>
                    <!-- Gallery -->
                    <div class="row">
                        <div class="col-lg-4 col-md-12 mb-4 mb-lg-0">
                            <img src="https://tse4.mm.bing.net/th?id=OIP.p4zOVKC8V3YKWwAbsp8YZgHaFj&pid=Api&P=0&h=220"
                                 class="w-100 shadow-1-strong rounded mb-4" alt="1" />

                            <img src="https://mdbcdn.b-cdn.net/img/Photos/Vertical/mountain1.webp"
                                 class="w-100 shadow-1-strong rounded mb-4" alt="2" />
                        </div>

                        <div class="col-lg-4 mb-4 mb-lg-0">
                            <img src="https://mdbcdn.b-cdn.net/img/Photos/Vertical/mountain2.webp"
                                 class="w-100 shadow-1-strong rounded mb-4" alt="3" />

                            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSxdG02ZSy0UBVUdweaYvltc64VEqGvrlQ8vQngqVZPA9sFeQF_HtlQJZedZvlhgeQtxtE&usqp=CAU"
                                 class="w-100 shadow-1-strong rounded mb-4" alt="4" />
                        </div>

                        <div class="col-lg-4 mb-4 mb-lg-0">
                            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSIxX3o0o0DkS2fAkPCggs7P5w2CQmjoFUkUmmIropQ3YIfWVdTIJmI41nyJ7sMUKt0XBY&usqp=CAU"
                                 class="w-100 shadow-1-strong rounded mb-4" alt="5" />

                            <img src="https://mdbcdn.b-cdn.net/img/Photos/Vertical/mountain3.webp"
                                 class="w-100 shadow-1-strong rounded mb-4" alt="6" />
                        </div>
                    </div>
                    <!-- Gallery -->
                </div>
            </section>


            <section id="contact">
                <div class="container mb-5">
                    <!--Section: Contact v.2-->
                    <section class="mb-4">

                        <!--Section heading-->
                        <h2 class="h1-responsive font-weight-bold text-center my-4">Contact us</h2>
                        <!--Section description-->
                        <p class="text-center w-responsive mx-auto mb-5">
                            Do you have any questions? Please do not hesitate
                            to contact us directly. Our team will come back to you within
                            a matter of hours to help you.
                        </p>

                        <div class="row">

                            <!--Grid column-->
                            <div class="col-md-6 mb-md-0 mb-5">
                                <form id="contact-form" name="contact-form" action="mail.php" method="POST">

                                    <!--Grid row-->
                                    <div class="row">

                                        <!--Grid column-->
                                        <div class="col-md-6">
                                            <div class="md-form mb-0">
                                                <input type="text" id="name" name="name" class="form-control">
                                                <label for="name" class="">Your name</label>
                                            </div>
                                        </div>
                                        <!--Grid column-->
                                        <!--Grid column-->
                                        <div class="col-md-6">
                                            <div class="md-form mb-0">
                                                <input type="text" id="email" name="email" class="form-control">
                                                <label for="email" class="">Your email</label>
                                            </div>
                                        </div>
                                        <!--Grid column-->

                                    </div>
                                    <!--Grid row-->
                                    <!--Grid row-->
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="md-form mb-0">
                                                <input type="text" id="subject" name="subject" class="form-control">
                                                <label for="subject" class="">Subject</label>
                                            </div>
                                        </div>
                                    </div>
                                    <!--Grid row-->
                                    <!--Grid row-->
                                    <div class="row">

                                        <!--Grid column-->
                                        <div class="col-md-12">

                                            <div class="md-form">
                                                <textarea type="text" id="message" name="message" rows="2"
                                                          class="form-control md-textarea"></textarea>
                                                <label for="message">Your message</label>
                                            </div>

                                        </div>
                                    </div>
                                    <!--Grid row-->

                                </form>

                                <div class="text-center text-md-left">
                                    <a class="btn btn-primary"
                                       onclick="document.getElementById('contact-form').submit();">Send</a>
                                </div>
                                <div class="status"></div>
                            </div>
                            <!--Grid column-->
                            <!--Grid column-->
                            <div class="col-md-6 text-center">
                                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d31127.565738643454!2d80.00688115562843!3d12.782035501016315!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3a52f9e913d56419%3A0x724474b4711d2a2e!2sMaraimalai%20Nagar%2C%20Tamil%20Nadu!5e0!3m2!1sen!2sin!4v1691402761774!5m2!1sen!2sin"
                                        width="600" height="300px" style="border:0;" allowfullscreen="" loading="lazy"
                                        referrerpolicy="no-referrer-when-downgrade"></iframe>
                            </div>
                            <!--Grid column-->

                        </div>

                    </section>
                    <!--Section: Contact v.2-->
                </div>
            </section>



            <!-- Footer -->
            <footer class="text-center text-lg-start py-3" style="background-color: rgb(9, 9, 88); color: white;">

                <!-- Section: Social media -->
                <!-- Section: Links  -->
                <section class="">
                    <div class="container text-center text-md-start mt-5">
                        <!-- Grid row -->
                        <div class="row mt-3">
                            <!-- Grid column -->
                            <div class="col-md-3 col-lg-4 col-xl-3 mx-auto mb-4">
                                <!-- Content -->
                                <h6 class="text-uppercase fw-bold mb-4">
                                    <i class="bi bi-gem me-3"></i>Company name
                                </h6>
                                <p>
                                    Here you can use rows and columns to organize your footer content. Lorem ipsum
                                    dolor sit amet, consectetur adipisicing elit.
                                </p>
                            </div>
                            <!-- Grid column -->
                            <!-- Grid column -->
                            <div class="col-md-2 col-lg-2 col-xl-2 mx-auto mb-4">
                                <!-- Links -->
                                <h6 class="text-uppercase fw-bold mb-4">
                                    AIM
                                </h6>
                                <p>
                                    <a href="#!" class="text-reset">Imparting an integral Formation to its students.</a>
                                </p>
                                <p>
                                    <a href="#!" class="text-reset">Equipping students with knowledge and skills.</a>
                                </p>
                                <p>
                                    <a href="#!" class="text-reset">Value Education</a>
                                </p>
                                <p>
                                    <a href="#!" class="text-reset">Imparting an integral Formation to students.</a>
                                </p>
                            </div>
                            <!-- Grid column -->
                            <!-- Grid column -->
                            <div class="col-md-3 col-lg-2 col-xl-2 mx-auto mb-4">
                                <!-- Links -->
                                <h6 class="text-uppercase fw-bold mb-4">
                                    Ouick links
                                </h6>
                                <p>
                                    <a href="#!" class="text-reset">Home</a>
                                </p>
                                <p>
                                    <a href="#!" class="text-reset">About us</a>
                                </p>
                                <p>
                                    <a href="#!" class="text-reset">Contact us</a>
                                </p>
                                <p>
                                    <a href="#!" class="text-reset">News and Events</a>
                                </p>
                            </div>
                            <!-- Grid column -->
                            <!-- Grid column -->
                            <div class="col-md-4 col-lg-3 col-xl-3 mx-auto mb-md-0 mb-4">
                                <!-- Links -->
                                <h6 class="text-uppercase fw-bold mb-4">
                                    Contact
                                </h6>
                                <p><i class="bi bi-geo-alt"></i>&nbsp;&nbsp;&nbsp;&nbsp; India </p>
                                <p>
                                    <i class="bi bi-envelope me-3"></i>
                                    Deepak@gmail.com
                                </p>
                                <p><i class="bi bi-phone me-3"></i> + 1234567890</p>

                            </div>
                            <!-- Grid column -->
                        </div>
                        <!-- Grid row -->
                    </div>
                </section>

                <div class="text-center py-4" style="background-color: rgba(0, 0, 0, 0.05);">
                    © 2023 Copyrights
                    <a>DEEPAK</a>
                </div>




                

            </footer>
        
    

  
            </main>
   
</body>
</html>