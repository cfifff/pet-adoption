<?php
	
	require_once "includes/db_connect.php";
	
	require_once "includes/adminheader.php";
	require_once "includes/database_functions.php";
	$conn = db_connect();

	if(isset($_POST['add'])){
		$ID = trim($_POST['ID']);
		$ID = mysqli_real_escape_string($conn, $ID);
		
		$name = trim($_POST['name']);
		$name = mysqli_real_escape_string($conn, $name);

		/*$image = trim($_POST['image']);
		$image = mysqli_real_escape_string($conn, $image);*/
		
		$descr = trim($_POST['descr']);
		$descr = mysqli_real_escape_string($conn, $descr);
		
		$city = trim($_POST['city']);
		$city = mysqli_real_escape_string($conn, $city);
		
		$zip_code = trim($_POST['zip_code']);
		$zip_code = mysqli_real_escape_string($conn, $zip_code);

		$address = trim($_POST['address']);
		$address = mysqli_real_escape_string($conn, $address);

		$DateOfBirth = date(trim($_POST['DateOfBirth']));
		$DateOfBirth = mysqli_real_escape_string($conn, $DateOfBirth);

		$age = trim($_POST['age']);
		$age = mysqli_real_escape_string($conn, $age);


		$available = trim($_POST['available']);
		$available = mysqli_real_escape_string($conn, $available);




		// add image
		if(isset($_FILES['image']) && $_FILES['image']['name'] != ""){
			$image = $_FILES['image']['name'];
			$directory_self = str_replace(basename($_SERVER['PHP_SELF']), '', $_SERVER['PHP_SELF']);
			$uploadDirectory = $_SERVER['DOCUMENT_ROOT'] . $directory_self . "./img/";
			$uploadDirectory .= $image;
			move_uploaded_file($_FILES['image']['tmp_name'], $uploadDirectory);
		}

		$query = "INSERT INTO `allpets`(`ID`, `name`, `image`, `descr`, `city`, `zip_code`, `address`, `DateOfBirth`, `age`, `available`) VALUES (NULL,'$name','$image','$descr','$city','$zip_code','$address ',$DateOfBirth, '$age','$available')";


		/*$query = "INSERT INTO allpets VALUES ('" . $ID . "', '" . $name . "', '" . $image . "', '" . $descr . "', '" . $city . "', '" . $zip_code . "', '" . $address . "', '" . $DateOfBirth . "', '" . $available . "')";*/
		
		$result = mysqli_query($conn, $query);
		if(!$result){
			echo "Can't add new data " . mysqli_error($conn);
			exit;
		} else {
			header("Location: newpet.php");
		}
	}




?>
	<form method="post" action="admin_add.php" enctype="multipart/form-data">
		<table class="table">
			<tr>
				<th>AGE</th>
				<td><input type="text" name="age"></td>
			</tr>
			<tr>
				<th>name</th>
				<td><input type="text" name="name" required></td>
			</tr>
			<tr>
				<th>image</th>
				<td><input type="file" name="image" required></td>
				
			</tr>
			<tr>
				<th>Description</th>
				<td><textarea name="descr" cols="40" rows="5"></textarea></td>
			</tr>
			<tr>
				<th>City</th>
				<td><input type="text" name="city" required></td>
			</tr>
			<tr>
				<th>zip_code</th>
				<td><input type="text" name="zip_code" required></td>
			</tr>
			<tr>
				<th>address</th>
				<td><input type="text" name="address" required></td>
			</tr>
			<tr>
				<th>DateOfBirth</th>
				<td><input type="date" name="DateOfBirth" required></td>
			</tr>
			<tr>
				<th>Available</th>
				<td><input type="text" name="available" required></td>
			</tr>
		</table>
		<input type="submit" name="add" value="Add new pet" class="btn btn-primary">
		<input type="reset" value="cancel" class="btn btn-default">
	</form>
	<br/>
<?php
	if(isset($conn)) {mysqli_close($conn);}
	require_once "./template/footer.php";
?>