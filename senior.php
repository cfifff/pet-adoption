<?php
session_start();

$count = 0;

$title = "Index";
  require_once "./template/header.php";
  require_once "./functions/database_functions.php";
  $conn = db_connect();
  $row = getSenior($conn);
  
?>


<style>.container {display: flex; flex-wrap: wrap; justify-content: center; width: 80%; float: left;}</style>
<h2>Senior Pets</h2>

<div class="container">

  <div class="row">
    <?php foreach($row as $allpets) { ?>
                   <div class="col-md-3 col-sm-6">
                       <div  class="thumbnail">
                           
                    <img class="img-responsive img-thumbnail" src="./img/<?php echo $allpets['image']; ?>">
                    
                    
            
                           <center>
                                <div class="caption">
                                        <p id="autoResize"><?php echo $allpets['name']; ?></p>
                                        <p><?php echo $allpets['address']; ?></p>
                                        <p><?php echo $allpets['age']; ?></p>
                                </div>
                           </center>
                       </div>
                   </div>
               <?php } ?>
  
  </div>

</div>