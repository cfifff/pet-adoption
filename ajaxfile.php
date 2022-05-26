<?php

include 'config.php';


if(isset($_POST['available'])){
	$available = $_POST['available'];

	// Check username
	$stmt = $conn->prepare("SELECT count(*) as cntPets FROM young WHERE available=:available");
	$stmt->bindValue(':available', $available, PDO::PARAM_STR);
	$stmt->execute(); 
	$count = $stmt->fetchColumn();

	$response = "<span style='color: green;'>Available.</span>";
	if($count > 0){
		$response = "<span style='color: red;'>Not Available.</span>";
	}
	
	echo $response;
	exit;
}

if(isset($_POST['available'])){
	$available = $_POST['available'];

	// Check username
	$stmt = $conn->prepare("SELECT count(*) as cntPets FROM big WHERE available=:available");
	$stmt->bindValue(':available', $available, PDO::PARAM_STR);
	$stmt->execute(); 
	$count = $stmt->fetchColumn();

	$response = "<span style='color: green;'>Available.</span>";
	if($count > 0){
		$response = "<span style='color: red;'>Not Available.</span>";
	}
	
	echo $response;
	exit;
}