<?php include './functions/database_functions.php';?>
<?php include 'template/header.php';?>


<?php
session_start();
if (isset($_POST['login'])) {
  $conn = db_connect();
  $username  = $_POST['user'];
  $password = $_POST['pass'];
  mysqli_real_escape_string($conn, $username);
  mysqli_real_escape_string($conn, $password);
$query = "SELECT * FROM users WHERE username = '$username'";
$result = mysqli_query($conn , $query) or die (mysqli_error($conn));
if (mysqli_num_rows($result) > 0) {
  while ($row = mysqli_fetch_array($result)) {
    $ID = $row['ID'];
    $user = $row['username'];
    $pass = $row['password'];
    $name = $row['name'];
    $email = $row['email'];
    $role= $row['role'];
    
    if (password_verify($password, $pass )) {
      $_SESSION['ID'] = $ID;
      $_SESSION['username'] = $username;
      $_SESSION['name'] = $name;
      $_SESSION['email']  = $email;
      $_SESSION['role'] = $role;
      
      header('location: dashboard/');
    }
    else {
      echo "<script>alert('invalid username/password');
      window.location.href= 'login.php';</script>";

    }
  }
}
else {
      echo "<script>alert('invalid username/password');
      window.location.href= 'login.php';</script>";

    }
}
?>


  <div class="login-card">
    <h1>Log-in</h1><br>
  <form method="POST">
    <input type="text" name="user" placeholder="Username" required="">
    <input type="password" name="pass" placeholder="Password" required="">
    <input type="submit" name="login" class="login login-submit" value="login">
  </form>
    
  <div class="login-help">
    <a href="signup.php">Register</a> • <a href="recoverpassword.php">Forgot Password</a>
  </div>
</div>

  
<script src='css/jquery-ui.min.js'></script>

  
</body>
</html>
