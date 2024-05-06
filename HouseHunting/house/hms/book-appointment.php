<?php
session_start();
include('include/config.php');
include('include/checklogin.php');
check_login();

if(isset($_POST['submit'])) {
    $category = $_POST['sellerCategory'];
    $seller_id = $_POST['seller'];
    $buyer_id = $_SESSION['id'];
    $booking_fees = $_POST['bookingFees'];
    $appointment_date = $_POST['appointmentDate'];
    $appointment_time = $_POST['appointmentTime'];
    $buyer_status = 1;
    $seller_status = 1;
    
    $query = mysqli_query($con, "INSERT INTO house_appointment (sellerCategory, sellerId, buyerId, bookingFees, appointmentDate, appointmentTime, buyerStatus, sellerStatus) VALUES ('$category', '$seller_id', '$buyer_id', '$booking_fees', '$appointment_date', '$appointment_time', '$buyer_status', '$seller_status')");
    
    if($query) {
        echo "<script>alert('Your appointment has been successfully booked');</script>";
    }
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>House Renting | Book Appointment</title>
    <!-- Include your CSS files here -->
	<link href="http://fonts.googleapis.com/css?family=Lato:300,400,400italic,600,700|Raleway:300,400,500,600,700|Crete+Round:400italic" rel="stylesheet" type="text/css" />
		<link rel="stylesheet" href="vendor/bootstrap/css/bootstrap.min.css">
		<link rel="stylesheet" href="vendor/fontawesome/css/font-awesome.min.css">
		<link rel="stylesheet" href="vendor/themify-icons/themify-icons.min.css">
		<link href="vendor/animate.css/animate.min.css" rel="stylesheet" media="screen">
		<link href="vendor/perfect-scrollbar/perfect-scrollbar.min.css" rel="stylesheet" media="screen">
		<link href="vendor/switchery/switchery.min.css" rel="stylesheet" media="screen">
		<link href="vendor/bootstrap-touchspin/jquery.bootstrap-touchspin.min.css" rel="stylesheet" media="screen">
		<link href="vendor/select2/select2.min.css" rel="stylesheet" media="screen">
		<link href="vendor/bootstrap-datepicker/bootstrap-datepicker3.standalone.min.css" rel="stylesheet" media="screen">
		<link href="vendor/bootstrap-timepicker/bootstrap-timepicker.min.css" rel="stylesheet" media="screen">
		<link rel="stylesheet" href="assets/css/styles.css">
		<link rel="stylesheet" href="assets/css/plugins.css">
		<link rel="stylesheet" href="assets/css/themes/theme-1.css" id="skin_color" />
    <!-- Include jQuery -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script>
        function getSellers(category) {
            $.ajax({
                type: "POST",
                url: "get_doctor.php",
                data: {category: category},
                success: function(data) {
                    $("#seller").html(data);
                }
            });
        }

        function getFee(sellerId) {
            $.ajax({
                type: "POST",
                url: "get_doctor.php",
                data: {sellerId: sellerId},
                success: function(data) {
                    $("#fees").val(data);
                }
            });
        }
    </script>
</head>
<body>
    <div id="app">
        <?php include('include/sidebar.php');?>
        <div class="app-content">
            <?php include('include/header.php');?>
            <!-- end: TOP NAVBAR -->
            <div class="main-content">
                <div class="wrap-content container" id="container">
                    <!-- start: PAGE TITLE -->
                    <section id="page-title">
                        <div class="row">
                            <div class="col-sm-8">
                                <h1 class="mainTitle">Buyer&Tenant | Book Appointment</h1>
                            </div>
                            <ol class="breadcrumb">
                                <li>
                                    <span>Buyer&Tenant</span>
                                </li>
                                <li class="active">
                                    <span>Book Appointment</span>
                                </li>
                            </ol>
                        </div>
                    </section>
                    <!-- end: PAGE TITLE -->
                    <!-- start: BASIC EXAMPLE -->
                    <div class="container-fluid container-fullw bg-white">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="row margin-top-30">
                                    <div class="col-lg-8 col-md-12">
                                        <div class="panel panel-white">
                                            <div class="panel-heading">
                                                <h5 class="panel-title">Book Appointment</h5>
                                            </div>
                                            <div class="panel-body">
                                                <p style="color:red;"><?php echo htmlentities($_SESSION['msg1']);?>
                                                <?php echo htmlentities($_SESSION['msg1']="");?></p>
                                                <form role="form" name="book" method="post" >

                                                    <div class="form-group">
                                                        <label for="sellerCategory">
                                                            Seller Category
                                                        </label>
                                                        <select name="sellerCategory" class="form-control" onChange="getSellers(this.value);" required="required">
                                                            <option value="">Select Category</option>
                                                            <?php $ret=mysqli_query($con,"select * from propertycategory");
                                                            while($row=mysqli_fetch_array($ret))
                                                            {
                                                            ?>
                                                                <option value="<?php echo htmlentities($row['category']);?>">
                                                                    <?php echo htmlentities($row['category']);?>
                                                                </option>
                                                            <?php } ?>
                                                        </select>
                                                    </div>

                                                    <div class="form-group">
                                                        <label for="seller">
                                                            Sellers
                                                        </label>
                                                        <select name="seller" class="form-control" id="seller" onChange="getFees(this.value);" required="required">
                                                            <option value="">Select Seller</option>
                                                        </select>
                                                    </div>

                                                    <!-- <div class="form-group">
                                                        <label for="bookingFees">
                                                            Rental Fees
                                                        </label>
                                                        <select name="bookingFees" class="form-control" id="bookingFees">
                                                        </select>
                                                    </div> -->

                                                    <div class="form-group">
                                                        <label for="bookingFees">
                                                            Rental Fees
                                                        </label>
                                                        <select name="bookingFees" class="form-control" id="bookingFees">
                                                            <option value="">Select Rental Fees</option>
                                                            <?php
                                                            // Fetch rental fees from the sellers table
                                                            $query = "SELECT id, bookingFees FROM sellers";
                                                            $result = mysqli_query($con, $query);

                                                            // Check if query was successful
                                                            if ($result) {
                                                                // Loop through the results and generate <option> elements
                                                                while ($row = mysqli_fetch_assoc($result)) {
                                                                    echo '<option value="' . $row['bookingFees'] . '">' . $row['bookingFees'] . '</option>';
                                                                }
                                                            } else {
                                                                // If there was an error with the query
                                                                echo '<option value="">Error fetching rental fees</option>';
                                                            }
                                                            ?>
                                                        </select>
                                                    </div>


                                                    <div class="form-group">
                                                        <label for="appointmentDate">
                                                            Date
                                                        </label>
                                                        <input class="form-control datepicker" name="appointmentDate" required="required" data-date-format="yyyy-mm-dd">
                                                    </div>

                                                    <div class="form-group">
                                                        <label for="appointmentTime">
                                                            Time
                                                        </label>
                                                        <input class="form-control" name="appointmentTime" id="timepicker1" required="required">eg : 10:00 PM
                                                    </div>

                                                    <button type="submit" name="submit" class="btn btn-o btn-primary">
                                                        Submit
                                                    </button>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- end: BASIC EXAMPLE -->
                </div>
            </div>
        </div>
        <!-- start: FOOTER -->
        <?php include('include/footer.php');?>
        <!-- end: FOOTER -->
        <!-- start: SETTINGS -->
        <?php include('include/setting.php');?>
        <!-- end: SETTINGS -->
    </div>
    <!-- start: MAIN JAVASCRIPTS -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
    <script src="vendor/modernizr/modernizr.js"></script>
    <script src="vendor/jquery-cookie/jquery.cookie.js"></script>
    <script src="vendor/perfect-scrollbar/perfect-scrollbar.min.js"></script>
    <script src="vendor/switchery/switchery.min.js"></script>
    <!-- end: MAIN JAVASCRIPTS -->
    <!-- start: JAVASCRIPTS REQUIRED FOR THIS PAGE ONLY -->
    <script src="vendor/maskedinput/jquery.maskedinput.min.js"></script>
    <script src="vendor/bootstrap-touchspin/jquery.bootstrap-touchspin.min.js"></script>
    <script src="vendor/autosize/autosize.min.js"></script>
    <script src="vendor/selectFx/classie.js"></script>
    <script src="vendor/selectFx/selectFx.js"></script>
    <script src="vendor/select2/select2.min.js"></script>
    <script src="vendor/bootstrap-datepicker/bootstrap-datepicker.min.js"></script>
    <script src="vendor/bootstrap-timepicker/bootstrap-timepicker.min.js"></script>
    <!-- end: JAVASCRIPTS REQUIRED FOR THIS PAGE ONLY -->
    <!-- start: CLIP-TWO JAVASCRIPTS -->
    <script src="assets/js/main.js"></script>
    <!-- start: JavaScript Event Handlers for this page -->
    <script src="assets/js/form-elements.js"></script>
    <script>
        jQuery(document).ready(function() {
            Main.init();
            FormElements.init();
        });

        $('.datepicker').datepicker({
            format: 'yyyy-mm-dd',
            startDate: '-3d'
        });
    </script>
    <script type="text/javascript">
        $('#timepicker1').timepicker();
    </script>
    <!-- end: JavaScript Event Handlers for this page -->
    <!-- end: CLIP-TWO JAVASCRIPTS -->
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.0/jquery.min.js"></script>
</body>
</html>