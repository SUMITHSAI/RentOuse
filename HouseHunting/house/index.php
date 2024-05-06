
<?php
include_once('hms/include/config.php');
if(isset($_POST['submit']))
{
$name=$_POST['fullname'];
$email=$_POST['emailid'];
$mobileno=$_POST['mobileno'];
$dscrption=$_POST['description'];
$query=mysqli_query($con,"insert into tblcontactus(fullname,email,contactno,message) value('$name','$email','$mobileno','$dscrption')");
echo "<script>alert('Your information succesfully submitted');</script>";
echo "<script>window.location.href ='index.php'</script>";

} ?>
<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title> House Hunting Portal </title>

    <link rel="shortcut icon" href="assets/images/fav.jpg">
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/fontawsom-all.min.css">
     <link rel="stylesheet" href="assets/css/animate.css">
    <link rel="stylesheet" type="text/css" href="assets/css/style.css" />
    <link
    href="https://cdn.jsdelivr.net/npm/remixicon@4.2.0/fonts/remixicon.css"
    rel="stylesheet"
/>
</head>

    <body>

    <!-- ################# Header Starts Here#######################--->
    
      <header id="menu-jk">
    
        <div id="nav-head" class="header-nav">
            <div class="container">
                <div class="row">
                    <div class="col-lg-2 col-md-3  col-sm-12" style="color:#000;font-weight:bold; font-size:42px; margin-top: 1% !important;">RentOuse
                       <a data-toggle="collapse" data-target="#menu" href="#menu" ><i class="fas d-block d-md-none small-menu fa-bars"></i></a>
                    </div>
                    <div id="menu" class="col-lg-8 col-md-9 d-none d-md-block nav-item">
                        <ul>
                            <li><a href="#">Home</a></li>
                            <li><a href="#services">Services</a></li>
                            <li><a href="#about_us">About Us</a></li>
                            <li><a href="#gallery">Gallery</a></li>
                            <li><a href="#contact_us">Contact Us</a></li>
                            <li><a href="#logins">Logins</a></li>  
                        </ul>
                    </div>
                    <div class="col-sm-2 d-none d-lg-block appoint">
                        <a class="btn btn-success" href="hms/user-login.php">Book / Rent</a>
                    </div>
                </div>

            </div>
        </div>
    </header>
    
     <!-- ################# Slider Starts Here#######################--->

    <div class="slider-detail">

        <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
            <ol class="carousel-indicators">
                <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
            </ol>


   


            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img class="d-block w-100" src="assets/images/slider/s1.png" alt="Second slide">
                    <div class="carousel-cover"></div>
                    <div class="carousel-caption vdg-cur d-none d-md-block">
                        <h5 class="animated bounceInDown">RentOuse</h5>
            
                         
                    
                    </div>
                </div>
                
                <div class="carousel-item">
                    <img class="d-block w-100" src="assets/images/slider/s2.png" alt="Third slide">
                      <div class="carousel-cover"></div>
                    <div class="carousel-caption vdg-cur d-none d-md-block">
                        <h5 class="animated bounceInDown">RentOuse</h5>
            
                         
                    
                    </div>
                </div>

                <div class="carousel-item">
                    <img class="d-block w-100" src="assets/images/slider/s3.png" alt="Third slide">
                      <div class="carousel-cover"></div>
                    <div class="carousel-caption vdg-cur d-none d-md-block">
                        <h5 class="animated bounceInDown">RentOuse</h5>
                    </div>
                </div>

                <div class="carousel-item">
                    <img class="d-block w-100" src="assets/images/slider/2.png" alt="Third slide">
                      <div class="carousel-cover"></div>
                    <div class="carousel-caption vdg-cur d-none d-md-block">
                        <h5 class="animated bounceInDown">RentOuse</h5>
                    </div>
                </div>
                
            </div>
            <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>


    </div>
    
  <!--  ************************* Logins ************************** -->
    
    
     <section id="logins" class="our-blog container-fluid">
        <div class="container">
        <div class="inner-title" style="margin-bottom: 20px;">
    <h2>Logins</h2>
</div>
<div class="col-sm-12 blog-cont">
    <div class="row no-margin">
        <div class="col-sm-4 blog-smk" style="margin-bottom: 20px; margin-left:180px;">
            <div class="blog-single" style="padding: 10px; border: 1px solid #ccc; border-radius: 5px;">

                <img src="assets/images/buyer.jpg" alt="" style="max-width: 100%;">

                <div class="blog-single-det">
                    <h6>Buyer/Tenant Login</h6>
                    <a href="hms/user-login.php" target="_blank">
                        <button class="btn btn-success btn-sm">Click Here</button>
                    </a>
                </div>
            </div>
        </div>

        <div class="col-sm-4 blog-smk" style="margin-bottom: 20px;">
            <div class="blog-single" style="padding: 10px; border: 1px solid #ccc; border-radius: 5px;">

                <img src="assets/images/broker.jpg" alt="" style="max-width: 100%;">

                <div class="blog-single-det">
                    <h6>Seller/Manager login</h6>
                    <a href="hms/sellers" target="_blank">
                        <button class="btn btn-success btn-sm">Click Here</button>
                    </a>
                </div>
            </div>
        </div>
    </div>
</div>

    </section>  







    <!-- ################# Our Departments Starts Here#######################--->


    <section id="services" class="key-features department">
        <div class="container">
            <div class="inner-title">

                <h2>Our Key Features</h2>
                <p>Take a look at some of our key features</p>
            </div>

            <div class="row">
                <div class="col-lg-4 col-md-6">
                    <div class="single-key">
                        <!-- <i class="fas fa-heartbeat"></i> -->
                        <i class="ri-search-eye-line"></i>
                        <h5>Search Listing</h5>
                    </div>
                </div>

                <div class="col-lg-4 col-md-6">
                    <div class="single-key">
                        <!-- <i class="fas fa-ribbon"></i> -->
                        <i class="ri-map-pin-line"></i>
                        <h5>Interactive Maps</h5>
                    </div>
                </div>

                <div class="col-lg-4 col-md-6">
                    <div class="single-key">
                       <!-- <i class="fab fa-monero"></i> -->
                       <i class="ri-money-rupee-circle-line"></i>
                        <h5>Booking System</h5>
                    </div>
                </div>

                <div class="col-lg-4 col-md-6">
                    <div class="single-key">
                        <!-- <i class="fas fa-capsules"></i> -->
                        <i class="ri-chat-1-line"></i>
                        <h5>Guest Reviews</h5>
                    </div>
                </div>

                <div class="col-lg-4 col-md-6">
                    <div class="single-key">
                        <!-- <i class="fas fa-prescription-bottle-alt"></i> -->
                        <i class="ri-file-list-3-line"></i>
                        <h5>Verified Listing</h5>
                    </div>
                </div>



                <div class="col-lg-4 col-md-6">
                    <div class="single-key">
                        <!-- <i class="far fa-thumbs-up"></i> -->
                        <i class="ri-user-follow-line"></i>
                        <h5>Host Profiles</h5>
                    </div>
                </div>
            </div>






        </div>

    </section>
    
    
  
    
    <!--  ************************* About Us Starts Here ************************** -->
        
    <section id="about_us" class="about-us">
        <div class="row no-margin">
            <div class="col-sm-6 image-bg no-padding">
                
            </div>
            <div class="col-sm-6 abut-yoiu">
                <h3>About Our RentOuse</h3>
<?php
$ret=mysqli_query($con,"select * from tblpage where PageType='aboutus' ");
while ($row=mysqli_fetch_array($ret)) {
?>

    <p><?php  echo $row['PageDescription'];?>.</p><?php } ?>
            </div>
        </div>
    </section>    
    
    
            <!--  ************************* Gallery Starts Here ************************** -->
            <div id="gallery" class="gallery">    
    <div class="container">
        <div class="inner-title">
            <h2>Our Gallery</h2>
            <p>View Our Gallery</p>
        </div>
        <div class="row">
            <div class="gallery-filter d-none d-sm-block">
                <button class="btn btn-default filter-button" data-filter="all">All</button>
                <button class="btn btn-default filter-button" data-filter="hdpe">Bungalow</button>
                <button class="btn btn-default filter-button" data-filter="sprinkle">Villa</button>
                <button class="btn btn-default filter-button" data-filter="spray">Apartment</button>
                <button class="btn btn-default filter-button" data-filter="irrigation">Beach/Tree House</button>
            </div>
            <br/>

            <div class="gallery_product col-lg-3 col-md-4 col-sm-6 col-xs-12 filter hdpe">
                <img src="assets/images/gallery/bung1.jpg" class="img-responsive">
            </div>

            <div class="gallery_product col-lg-3 col-md-4 col-sm-6 col-xs-12 filter hdpe">
                <img src="assets/images/gallery/bung3.jpg" class="img-responsive">
            </div>

            <div class="gallery_product col-lg-3 col-md-4 col-sm-6 col-xs-12 filter sprinkle">
                <img src="assets/images/gallery/villa1.jpg" class="img-responsive">
            </div>

            <div class="gallery_product col-lg-3 col-md-4 col-sm-6 col-xs-12 filter sprinkle">
                <img src="assets/images/gallery/villa2.jpg" class="img-responsive">
            </div>

            <div class="gallery_product col-lg-3 col-md-4 col-sm-6 col-xs-12 filter sprinkle">
                <img src="assets/images/gallery/villa3.jpg" class="img-responsive">
            </div>

            <div class="gallery_product col-lg-3 col-md-4 col-sm-6 col-xs-12 filter hdpe">
                <img src="assets/images/gallery/bung2.jpg" class="img-responsive">
            </div>

            <div class="gallery_product col-lg-3 col-md-4 col-sm-6 col-xs-12 filter sprinkle">
                <img src="assets/images/gallery/villa1.jpg" class="img-responsive">
            </div>

            <div class="gallery_product col-lg-3 col-md-4 col-sm-6 col-xs-12 filter irrigation">
                <img src="assets/images/gallery/beach1.jpg" class="img-responsive">
            </div>

            <div class="gallery_product col-lg-3 col-md-4 col-sm-6 col-xs-12 filter irrigation">
                <img src="assets/images/gallery/beach2.jpg" class="img-responsive">
            </div>

            <div class="gallery_product col-lg-3 col-md-4 col-sm-6 col-xs-12 filter spray">
                <img src="assets/images/gallery/ap3.jpg" class="img-responsive">
            </div>

            <div class="gallery_product col-lg-3 col-md-4 col-sm-6 col-xs-12 filter irrigation">
                <img src="assets/images/gallery/beach3.jpg" class="img-responsive">
            </div>

            <div class="gallery_product col-lg-3 col-md-4 col-sm-6 col-xs-12 filter spray">
                <img src="assets/images/gallery/ap1.jpg" class="img-responsive">
            </div>

            <div class="gallery_product col-lg-3 col-md-4 col-sm-6 col-xs-12 filter hdpe">
                <img src="assets/images/gallery/bung1.jpg" class="img-responsive">
            </div>

            <div class="gallery_product col-lg-3 col-md-4 col-sm-6 col-xs-12 filter irrigation">
                <img src="assets/images/gallery/beach1.jpg" class="img-responsive">
            </div>

            <div class="gallery_product col-lg-3 col-md-4 col-sm-6 col-xs-12 filter spray">
                <img src="assets/images/gallery/ap2.jpg" class="img-responsive">
            </div>

            <div class="gallery_product col-lg-3 col-md-4 col-sm-6 col-xs-12 filter spray">
                <img src="assets/images/gallery/ap3.jpg" class="img-responsive">
            </div>
        </div>
    </div>
</div>

        <!-- ######## Gallery End ####### -->
    
    
     <!--  ************************* Contact Us Starts Here ************************** -->
    
    <section id="contact_us" class="contact-us-single">
        <div class="row no-margin">

            <div  class="col-sm-12 cop-ck">
                <form method="post">
                <h2 >Contact Form</h2>
                    <div class="row cf-ro">
                        <div  class="col-sm-3"><label>Enter Name :</label></div>
                        <div class="col-sm-8"><input type="text" placeholder="Enter Name" name="fullname" class="form-control input-sm" required ></div>
                    </div>
                    <div  class="row cf-ro">
                        <div  class="col-sm-3"><label>Email Address :</label></div>
                        <div class="col-sm-8"><input type="text" name="emailid" placeholder="Enter Email Address" class="form-control input-sm"  required></div>
                    </div>
                     <div  class="row cf-ro">
                        <div  class="col-sm-3"><label>Mobile Number:</label></div>
                        <div class="col-sm-8"><input type="text" name="mobileno" placeholder="Enter Mobile Number" class="form-control input-sm" required ></div>
                    </div>
                     <div  class="row cf-ro">
                        <div  class="col-sm-3"><label>Enter  Details:</label></div>
                        <div class="col-sm-8">
                          <textarea rows="5" placeholder="Enter Property Details" class="form-control input-sm" name="description" required></textarea>
                        </div>
                    </div>
                     <div  class="row cf-ro">
                        <div  class="col-sm-3"><label></label></div>
                        <div class="col-sm-8">
                         <button class="btn btn-success btn-sm" type="submit" name="submit">Submit</button>
                        </div>
                </div>
            </form>
            </div>
     
        </div>
    </section>
    
    
    
    
    
    <!-- ################# Footer Starts Here#######################--->


    <footer class="footer">
        <div class="container">
            <div class="row">
       
                <div class="col-md-6 col-sm-12">
                    <h2>Useful Links</h2>
                    <ul class="list-unstyled link-list">
                        <li><a ui-sref="about" href="#about">About us</a><i class="fa fa-angle-right"></i></li>
                        <li><a ui-sref="portfolio" href="#services">Services</a><i class="fa fa-angle-right"></i></li>
                        <li><a ui-sref="products" href="#logins">Logins</a><i class="fa fa-angle-right"></i></li>
                        <li><a ui-sref="gallery" href="#gallery">Gallery</a><i class="fa fa-angle-right"></i></li>
                        <li><a ui-sref="contact" href="#contact">Contact us</a><i class="fa fa-angle-right"></i></li>
                    </ul>
                </div>
                <div class="col-md-6 col-sm-12 map-img">
                    <h2>Contact Us</h2>
                    <address class="md-margin-bottom-40">

<?php
$ret=mysqli_query($con,"select * from tblpage where PageType='contactus' ");
while ($row=mysqli_fetch_array($ret)) {
?>


                        <?php  echo $row['PageDescription'];?> <br>
                        Phone: <?php  echo $row['MobileNumber'];?> <br>
                        Email: <a href="mailto:<?php  echo $row['Email'];?>" class=""><?php  echo $row['Email'];?></a><br>
                        Timing: <?php  echo $row['OpenningTime'];?>
                    </address>

        <?php } ?>





                </div>
            </div>
        </div>
        

    </footer>
    <div class="copy">
            <div class="container">
         RentOuse
                
     
            </div>

        </div>
    
    </body>

<script src="assets/js/jquery-3.2.1.min.js"></script>
<script src="assets/js/popper.min.js"></script>
<script src="assets/js/bootstrap.min.js"></script>
<script src="assets/plugins/scroll-nav/js/jquery.easing.min.js"></script>
<script src="assets/plugins/scroll-nav/js/scrolling-nav.js"></script>
<script src="assets/plugins/scroll-fixed/jquery-scrolltofixed-min.js"></script>

<script src="assets/js/script.js"></script>



</html>