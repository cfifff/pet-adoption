<?php include ('includes/db_connect.php'); ?>
<?php include('includes/adminheader.php');  ?>


 <div id="wrapper">
       
       <?php include 'includes/adminnav.php';?>
        <div id="page-wrapper">

            <div class="container-fluid">

                
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">
                            Welcome 
                            <small><?php echo $_SESSION['name']; ?></small>
                        </h1>
<?php if($_SESSION['role'] == 'admin') {
?>
<h3 class="page-header">
                            <center> <marquee width = 70% ><font color="green" > Pets uploaded by various users</font></marquee></center>
                        </h3>
<div class="row">
<div class="col-lg-12">
        <div class="table-responsive">

<form action="" method="post">
            <table class="table table-bordered table-striped table-hover">


            <thead>
                    <tr>
                        <th>Name</th>
                        <th>Description</th>
                        <th>Type </th>
                        <th>Uploaded on</th>
                        <th>Uploaded by </th>
                        <th>Status</th>
                        <th>View</th>
                        <th>Approve</th>
                        <th>Delete</th>
                        
                    </tr>
                </thead>
                <tbody>

                 <?php

$query = "SELECT * FROM uploads ORDER BY file_uploaded_on DESC";
$run_query = mysqli_query($conn, $query) or die(mysqli_error($conn));
if (mysqli_num_rows($run_query) > 0) {
while ($row = mysqli_fetch_array($run_query)) {
    $ID = $row['ID'];
    $file_name = $row['file_name'];
    $file_description = $row['file_description'];
    $file_date = $row['file_uploaded_on'];
    $file_uploader = $row['file_uploader'];
    $file_status = $row['status'];
    $file = $row['file'];

    echo "<tr>";
    echo "<td>$file_name</td>";
    echo "<td>$file_description</td>";
    echo "<td>$file_date</td>";
    echo "<td><a href='viewprofile.php?name=$file_uploader' target='_blank'> $file_uploader </a></td>";
    echo "<td>$file_status</td>";
    echo "<td><a href='allfiles/$file' target='_blank' style='color:green'>View </a></td>";
    echo "<td><a onClick=\"javascript: return confirm('Are you sure you want to approve this pet?')\"href='?approve=$ID'><i class='fa fa-times' style='color: red;'></i>Approve</a></td>";

    echo "<td><a onClick=\"javascript: return confirm('Are you sure you want to delete this post?')\" href='?del=$ID'><i class='fa fa-times' style='color: red;'></i>delete</a></td>";

    echo "</tr>";

}
}
?>


                </tbody>
            </table>
</form>
</div>
</div>
</div>
 <?php
 
    if (isset($_GET['del'])) {
        $pet_del = mysqli_real_escape_string($conn, $_GET['del']);
        $file_uploader = $_SESSION['username'];
        $del_query = "DELETE FROM uploads WHERE ID='$pet_del'";
        $run_del_query = mysqli_query($conn, $del_query) or die (mysqli_error($conn));
        if (mysqli_affected_rows($conn) > 0) {
            echo "<script>alert('pet deleted successfully');
            window.location.href='index.php';</script>";
        }
        else {
         echo "<script>alert('error occured.try again!');</script>";   
        }
        }

         if (isset($_GET['approve'])) {
        $pet_approve = mysqli_real_escape_string($conn,$_GET['approve']);
        $approve_query = "UPDATE uploads SET status='approved' WHERE ID='$pet_approve'";
        $run_approve_query = mysqli_query($conn, $approve_query) or die (mysqli_error($conn));
        if (mysqli_affected_rows($conn) > 0) {
            echo "<script>alert('pet approved successfully');
            window.location.href='index.php';</script>";
        }
        else {
         echo "<script>alert('error occured.try again!');</script>";   
        }
        }
       

?>
<?php 
}
else {
    ?>




 <h3 class="page-header">
                            <center> <marquee width = 70% ><font color="green" ><?php echo $_SESSION['name']; ?> You saved a Pet </font><font color="brown"> Pets uploaded by various users</font></marquee></center>
                        </h3>

                    </div>
                </div>
<div class="row">
<div class="col-lg-12">
        <div class="table-responsive">

<form action="" method="post">
            <table class="table table-bordered table-striped table-hover">


            <thead>
                    <tr>
                        <th>Name</th>
                        <th>Description</th>
                        <th>Uploaded by</th>
                        <th>Uploaded on</th>
                        <th>Download</th>
                        
                    </tr>
                </thead>
                <tbody>

                 <?php
                 
                 $currentuserfavorite = $_SESSION['username'];

$query = "SELECT * FROM uploads WHERE file_uploaded_to = '$currentuserfavorite' AND status = 'approved' ORDER BY file_uploaded_on DESC";
$run_query = mysqli_query($conn, $query) or die(mysqli_error($conn));
if (mysqli_num_rows($run_query) > 0) {
while ($row = mysqli_fetch_array($run_query)) {
    $ID = $row['ID'];
    $file_name = $row['file_name'];
    $file_description = $row['file_description'];
    $file_date = $row['file_uploaded_on'];
    $file = $row['file'];
    $file_uploader = $row['file_uploader'];

    echo "<tr>";
    echo "<td>$file_name</td>";
    echo "<td>$file_description</td>";
    echo "<td><a href='viewprofile.php?name=$file_uploader' target='_blank'> $file_uploader </a></td>";
    echo "<td>$file_date</td>";
    echo "<td><a href='allfiles/$file' target='_blank' style='color:green'>Download </a></td>";
 echo "</tr>";


}
}
?>
  </tbody>
            </table>
</form>
</div>
</div>
</div>
<?php }
 
 ?>




<script src="js/jquery.js"></script>

  
    <script src="js/bootstrap.min.js"></script>
</body>
</html>