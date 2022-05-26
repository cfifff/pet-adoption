<?php	
	// if save change happen
	if(!isset($_POST['save_change'])){
		echo "Something wrong!";
		exit;
	}

	$ID = trim($_POST['ID']);
	$name = trim($_POST['name']);
	$descr = trim($_POST['descr']);
	$city = trim($_POST['city']);
	$zip_code = trim($_POST['zip_code']);
	$address = trim($_POST['address']);
	$DateOfBirth = date(trim($_POST['DateOfBirth']));
	$available = trim($_POST['available']);
	

	if(isset($_FILES['image']) && $_FILES['image']['name'] != ""){
		$image = $_FILES['image']['name'];
		$directory_self = str_replace(basename($_SERVER['PHP_SELF']), '', $_SERVER['PHP_SELF']);
		$uploadDirectory = $_SERVER['DOCUMENT_ROOT'] . $directory_self . "./img/";
		$uploadDirectory .= $image;
		move_uploaded_file($_FILES['image']['tmp_name'], $uploadDirectory);
	}

	require_once("includes/database_functions.php");
	$conn = db_connect();



	$query = "UPDATE allpets SET  
	name = '$name', 
	descr = '$descr', 
	city = '$city', 
	zip_code = '$zip_code',
	address = '$address', 
	DateOfBirth = '$DateOfBirth',
	available = '$available'";
	if(isset($image)){
		$query .= ", image='$image' WHERE ID = '$ID'";
	} else {
		$query .= " WHERE ID = '$ID'";
	}
	// two cases for fie , if file submit is on => change a lot
	$result = mysqli_query($conn, $query);
	if(!$result){
		echo "Can't update data " . mysqli_error($conn);
		exit;
	} else {
		header("Location: admin_edit.php?ID=$ID");
	}
?>