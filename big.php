<?php
  session_start();
  $ID = $_GET['ID'];
  // connecto database
  require_once "./functions/database_functions.php";
  $conn = db_connect();

  $query = "SELECT * FROM big WHERE ID = '$ID'";
  $result = mysqli_query($conn, $query);
  if(!$result){
    echo "Can't retrieve data " . mysqli_error($conn);
    exit;
  }

  $row = mysqli_fetch_assoc($result);
  if(!$row){
    echo "Empty list";
    exit;
  }

  $title = $row['big_name'];
  require "./template/header.php";
?>

      <!-- Example row of columns -->
      <p class="lead" style="margin: 25px 0"><a href="general.php">Pet</a> > <?php echo $row['big_name']; ?></p>
      <div class="row">
        <div class="col-md-3 text-center">
          <img class="img-responsive img-thumbnail" src="./img/<?php echo $row['big_image']; ?>">
        </div>
        <div class="col-md-6">
          
          <h4> </h4>
          <p><?php echo $row['big_descr']; ?></p>
          <h4>Details</h4>
          <table class="table">
          	<?php foreach($row as $key => $value){
              if($key == "big_descr" || $key == "big_image" || $key == "big_name" ){
                continue;
              }
              switch($key){
                
                
                case "city":
                  $key = "City";
                  break;
                case "zip_code":
                  $key = "Zip";
                  break;
                  case "address":
                  $key = "Street";
                  break;
              }
            ?>
            <tr>
              <td><?php echo $key; ?></td>
              <td><?php echo $value; ?></td>
            </tr>
            <?php 
              } 
              if(isset($conn)) {mysqli_close($conn); }
            ?>
          </table>
          
       	</div>
      </div>
<?php
  require "./template/footer.php";
?>