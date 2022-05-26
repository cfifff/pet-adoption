<?php
session_start();

$count = 0;

$title = "Index";
  require_once "./template/header.php";
  require_once "./functions/database_functions.php";
  require_once "ajaxfile.php";
  $conn = db_connect();
  $row = selectYoungFull($conn);
  $row1 = selectBigFull($conn);

?>
<script src="jquery-3.4.1.min.js" type="text/javascript"></script>
<style>.container {display: flex; flex-wrap: wrap; justify-content: center; width: 80%; float: left;}</style>
<div class="container">

  <div class="row">
    <?php foreach($row as $young) { ?>
                   <div class="col-md-3 col-sm-6">
                       <div  class="thumbnail">
                           <a href="young.php?ID=<?php echo $young['ID']; ?>">
                            <img class="img-responsive img-thumbnail" src="./img/<?php echo $young['young_image']; ?>">
                          </a>
                    
            
                           <center>
                                <div class="caption">
                                        <p id="autoResize"><?php echo $young['young_name']; ?></p>
                                        <p><?php echo $young['address']; ?></p>
                                </div>
                                <div>
                                    <input type="text" class="textbox" class="txt_username" name="txt_username" placeholder="Enter Yes or No"  />
                                    <!-- Response -->
                                    <div class="uname_response" ></div>
                                </div>
                           </center>
                       </div>
                   </div>
               <?php } ?>
  
  </div>


  <div class="row">
    <?php foreach($row1 as $big) { ?>
                   <div class="col-md-3 col-sm-6">
                       <div  class="thumbnail">
                           <a href="big.php?ID=<?php echo $big['ID']; ?>">
                  <img class="img-responsive img-thumbnail" src="./img/<?php echo $big['big_image']; ?>">
                  </a>
                           <center>
                                <div class="caption">
                                        <p id="autoResize"><?php echo $big['big_name']; ?></p>
                                        <p><?php echo $big['address']; ?></p>
                                </div>
                                <div>
                                    <input type="text" class="textbox" class="txt_username" name="txt_username" placeholder="Enter Yes or No"  />
                                  <!-- Response -->
                                   <div class="uname_response" ></div>
                                </div>
                           </center>
                       </div>
                   </div>
               <?php } ?>

  
  </div>


  
</div>
  
  <script type='text/javascript'>
            $(document).ready(function(){

                $(".txt_username").keyup(function(){

                    var available = $(this).val().trim();

                    if(available != ''){

                        $(".uname_response").show();

                        $.ajax({
                            url: 'ajaxfile.php',
                            type: 'post',
                            data: {available:available},
                            success: function(response){
                                
                                // Show response
                                $(".uname_response").html(response);

                            }
                        });
                    }else{
                        $(".uname_response").hide();
                    }

                });

            });
        </script>