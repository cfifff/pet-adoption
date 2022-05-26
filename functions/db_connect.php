<?php
function db_connect(){
		$conn = mysqli_connect("localhost", "root", "", "petadoption");
		if(!$conn){
			echo "Can't connect database " . mysqli_connect_error($conn);
			exit;
		}
		return $conn;
	}
?>

