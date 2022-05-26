<?php
	$ID = $_GET['ID'];

	require_once "includes/database_functions.php";
	$conn = db_connect();

	$query = "DELETE FROM allpets WHERE ID = '$ID'";
	$result = mysqli_query($conn, $query);
	if(!$result){
		echo "delete data unsuccessfully " . mysqli_error($conn);
		exit;
	}
	header("Location: newpet.php");
?>