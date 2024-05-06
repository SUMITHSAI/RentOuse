<?php
include('include/config.php');

if(!empty($_POST["category"])) {
    $sql = mysqli_query($con, "SELECT sellerName, id FROM sellers WHERE category='" . $_POST['category'] . "'");
    ?>
    <option selected="selected">Select Seller</option>
    <?php
    while($row = mysqli_fetch_array($sql)) {
        ?>
        <option value="<?php echo htmlentities($row['id']); ?>"><?php echo htmlentities($row['sellerName']); ?></option>
        <?php
    }
}

if(!empty($_POST["seller"])) {
    // $sql = mysqli_query($con, "SELECT rentalFees FROM sellers WHERE id='" . $_POST['seller'] . "'");
    $sql = mysqli_query($con, "SELECT rentalFees FROM sellers WHERE id='" . $_POST['seller'] . "'");
    while($row = mysqli_fetch_array($sql)) {
        ?>
        <option value="<?php echo htmlentities($row['rentalFees']); ?>"><?php echo htmlentities($row['rentalFees']); ?></option>
        <?php
    }
}
?>
