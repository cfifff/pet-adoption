<?php
session_start();

$count = 0;

$title = "Index";
  require_once "./template/header.php";
  require_once "./functions/database_functions.php";
  $conn = db_connect();
  $row = selectYoung($conn);
  $row1 = selectBig($conn);


?>


<meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css" type="text/css">
        <script type="text/javascript" src="bootstrap/js/jquery-3.2.1.min.js"></script>
        <script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="css/style.css" type="text/css">
        <style>
          .container {display: flex; flex-wrap: wrap; justify-content: center; width: 80%; float: left;}         
          .thumbnail img {height: 100px;}
        </style>

<div class="container">

	<div class="tier">
                <a href="general.php?ID=<?php echo $young['ID']; ?>">
                    <h2 class="txt txt_h1 m-txt_tight m-txt_colorPrimary m-txt_alignCenter">
                        Pets Available for Adoption
                    </h2>
                </a>
                <p class="txt m-txt_bold m-txt_colorPrimaryS1 m-txt_alignCenter u-vr4x"></p>
      </div>

	<div class="row">
		<?php foreach($row as $young) { ?>
                   <div class="col-xs-3">
                       <div  class="thumbnail">
                           <a href="young.php?ID=<?php echo $young['ID']; ?>">
           					<img class="img-responsive img-thumbnail" src="./img/<?php echo $young['young_image'] ; ?>">
          					</a>
          					
            
                           <center>
                                <div class="caption">
                                        <p id="autoResize"><?php echo $young['young_name']; ?></p>
                                        <p><?php echo $young['address']; ?></p>
                                </div>
                           </center>
                       </div>
                   </div>
               <?php } ?>
	
	</div>


<div class="row">
		<?php foreach($row1 as $big) { ?>
                   <div class="col-xs-3">
                       <div  class="thumbnail">
                           <a href="big.php?ID=<?php echo $big['ID']; ?>">
           				<img class="img-responsive img-thumbnail" src="./img/<?php echo $big['big_image']; ?>">
          				</a>
                           <center>
                                <div class="caption">
                                        <p id="autoResize"><?php echo $big['big_name']; ?></p>
                                        <p><?php echo $big['address']; ?></p>
                                </div>
                           </center>
                       </div>
                   </div>
               <?php } ?>
	
	</div>




</div>







