<?php
	require_once "includes/db_connect.php";
	$title = "Edit Pets";
	require_once "includes/adminheader.php";
	require_once "includes/database_functions.php";
	$conn = db_connect();

	if(isset($_GET['ID'])){
		$ID = $_GET['ID'];
	} else {
		echo "Empty query!";
		exit;
	}

	if(!isset($ID)){
		echo "Empty ID! check again!";
		exit;
	}

	// get book data
	$query = "SELECT * FROM allpets WHERE ID = '$ID'";
	$result = mysqli_query($conn, $query);
	if(!$result){
		echo "Can't retrieve data " . mysqli_error($conn);
		exit;
	}
	$row = mysqli_fetch_assoc($result);
?>
	<form method="post" action="edit_pet.php" enctype="multipart/form-data">
		<table class="table">
			<tr>
				<th>ID</th>
				<td><input type="text" name="ID" value="<?php echo $row['ID'];?>" readOnly="true"></td>
			</tr>
			<tr>
				<th>Name</th>
				<td><input type="text" name="name" value="<?php echo $row['name'];?>" required></td>
			</tr>
			<tr>
				<th>Image</th>
				<td><input type="file" name="image" value="<?php echo $row['image'];?>" required></td>
			</tr>
			
			<tr>
				<th>Description</th>
				<td><textarea name="descr" cols="40" rows="5"><?php echo $row['descr'];?></textarea>
			</tr>
			<tr>
				<th>City</th>
				<td><input type="text" name="city" value="<?php echo $row['city'];?>" required></td>
			</tr>
			<tr>
				<th>Zip</th>
				<td><input type="text" name="zip_code" value="<?php echo $row['zip_code'];?>" required></td>
			</tr>
			<tr>
				<th>Address</th>
				<td><input type="text" name="address" value="<?php echo $row['address'];?>" required></td>
			</tr>
			<tr>
				<th>Date Of Birth</th>
				<td><input type="date" name="DateOfBirth" value="<?php echo $row['DateOfBirth'];?>" required></td>
			</tr>
			<tr>
				<th>Available</th>
				<td><input type="text" name="available" value="<?php echo $row['available'];?>" required></td>
			</tr>
		</table>
		<input type="submit" name="save_change" value="Change" class="btn btn-primary">
		<input type="reset" value="cancel" class="btn btn-default">
	</form>
	<br/>
	<a href="newpet.php" class="btn btn-success">Confirm</a>
<?php
	if(isset($conn)) {mysqli_close($conn);}
	require "./template/footer.php"
?>