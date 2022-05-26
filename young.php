<?php
  session_start();
  $ID = $_GET['ID'];
  // connecto database
  require_once "./functions/database_functions.php";
  $conn = db_connect();

  $query = "SELECT * FROM young WHERE ID = '$ID'";
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

  $title = $row['young_name'];
  require "./template/header.php";
?>

<!DOCTYPE html>
<meta name="viewport" content="initial-scale=1.0">
        <meta charset="utf-8">
        <style>
         #map {
           height: 30%;}
        </style>



      <!-- Example row of columns -->
      <p class="lead" style="margin: 25px 0"><a href="general.php">Pet</a> > <?php echo $row['young_name']; ?></p>
      <div class="row">
        <div class="col-md-3 text-center">
          <img class="img-responsive img-thumbnail" src="./img/<?php echo $row['young_image']; ?>">
        </div>
        <div class="col-md-6">
          
          <h4> </h4>
          <p><?php echo $row['young_descr']; ?></p>
          <h4>Details</h4>
          <table class="table">
          	<?php foreach($row as $key => $value){
              if($key == "young_descr" || $key == "young_image" || $key == "young_name" ){
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

<!DOCTYPE html>
<html>
  <head>
    <title>Simple Map</title>
    <meta name="viewport" content="initial-scale=1.0">
    <meta charset="utf-8">
    <style>
      /* Always set the map height explicitly to define the size of the div
       * element that contains the map. */
      #map {
        height: 60%;
      }
      /* Optional: Makes the sample page fill the window. */
      html, body {
           height: 100%;
           margin: 0;
           padding: 0;}
    </style>
  </head>
  <body>
    <div id="map"></div>
    <!--<script>
      var map;
      function initMap() {
        map = new google.maps.Map(document.getElementById('map'), {
             center: {lat: 48.20849, lng: 16.37208},
             zoom: 8
           });
      }
    </script>-->
<script>
       var map;
       var lat;
       var lng;
       function initMap() {
           var vienna = {
               lat: 48.20849,
               lng: 16.37208
           };
           map = new google.maps.Map(document.getElementById('map'), {
               center: vienna,
               zoom: 8
           });
           var pinpoint = new google.maps.Marker({
               position: vienna,
               map: map
           });
       }
   </script>

    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBtjaD-saUZQ47PbxigOg25cvuO6_SuX3M&callback=initMap"
    async defer></script>
  </body>
</html>

<?php
  require "./template/footer.php";
?>