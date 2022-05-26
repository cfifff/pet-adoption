
<?php include('includes/adminheader.php');  ?>
<?php
	require_once "includes/db_connect.php";
	require_once "includes/database_functions.php";
	$conn = db_connect();
	$result = getAll($conn);
?>

	<p class="lead"><a href="admin_add.php">Add new pet</a></p>
	<span><a href="../logout.php" class="btn btn-primary">Sign out!</a><a href="index.php" class="btn btn-primary">Return to the main board</a></span>
	<table class="table" style="margin-top: 20px">
		<tr>
			
			<th>ID</th>
			<th>Pet Name</th>
			<th>Image</th>
			<th>Description</th>
			<th>City</th>
			<th>Zip Code</th>
			<th>Address</th>
			<th>Date of Birth</th>
			<th>Available</th>
			<th>&nbsp;</th>
			<th>&nbsp;</th>
		</tr>
		<?php while($row = mysqli_fetch_assoc($result)){ ?>
		<tr>
			<td><?php echo $row['ID']; ?></td>
			<td><?php echo $row['name']; ?></td>
			<td><?php echo $row['image']; ?></td>
			<td><?php echo $row['descr']; ?></td>
			<td><?php echo $row['city']; ?></td>
			<td><?php echo $row['zip_code']; ?></td>
			<td><?php echo $row['address']; ?></td>
			<td><?php echo $row['DateOfBirth']; ?></td>
			<td><?php echo $row['available']; ?></td>
			<td><a href="admin_edit.php?ID=<?php echo $row['ID']; ?>">Edit</a></td>
			<td><a href="admin_delete.php?ID=<?php echo $row['ID']; ?>">Delete</a></td>
		</tr>
		<?php } ?>
	</table>

<?php
	if(isset($conn)) {mysqli_close($conn);}
	require_once "./template/footer.php";
?>