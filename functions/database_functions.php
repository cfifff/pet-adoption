<?php
function db_connect(){
		$conn = mysqli_connect("localhost", "root", "", "petadoption");
		if(!$conn){
			echo "Can't connect database " . mysqli_connect_error($conn);
			exit;
		}
		return $conn;
	}

	function selectYoung($conn){
		$row = array();
		$query = "SELECT ID, young_image, young_name, address FROM young ORDER BY ID DESC";
		$result = mysqli_query($conn, $query);
		if(!$result){
		    echo "Can't retrieve data " . mysqli_error($conn);
		    exit;
		}
		for($i = 0; $i < 4; $i++){
			array_push($row, mysqli_fetch_assoc($result));
		}
		return $row;
	}

	function selectBig($conn){
		$row1 = array();
		$query = "SELECT ID, big_image, big_name, address FROM big ORDER BY ID DESC";
		$result = mysqli_query($conn, $query);
		if(!$result){
		    echo "Can't retrieve data " . mysqli_error($conn);
		    exit;
		}
		for($i = 0; $i < 4; $i++){
			array_push($row1, mysqli_fetch_assoc($result));
		}
		return $row1;
	}

	function selectYoungFull($conn){
		$row = array();
		$query = "SELECT ID, young_image, young_name, address FROM young ORDER BY ID DESC";
		$result = mysqli_query($conn, $query);
		if(!$result){
		    echo "Can't retrieve data " . mysqli_error($conn);
		    exit;
		}
		for($i = 0; $i < mysqli_num_rows($result); $i++){
			array_push($row, mysqli_fetch_assoc($result));
		}
		return $row;
	}
	function selectBigFull($conn){
		$row1 = array();
		$query = "SELECT ID, big_image, big_name, address FROM big ORDER BY ID DESC";
		$result = mysqli_query($conn, $query);
		if(!$result){
		    echo "Can't retrieve data " . mysqli_error($conn);
		    exit;
		}
		for($i = 0; $i < mysqli_num_rows($result); $i++){
			array_push($row1, mysqli_fetch_assoc($result));
		}
		return $row1;
	}


function getAll($conn){
		$row2 = array();
		$query = "SELECT *  FROM all ORDER BY ID DESC";
		$result = mysqli_query($conn, $query);
		if(!$result){
			echo "Can't retrieve data " . mysqli_error($conn);
			exit;
		}
		return $row2;
	}



function getSenior($conn){
		$row = array();
		$query = "SELECT * FROM allpets WHERE DATEDIFF(CURRENT_DATE, DateOfBirth) >= (2 * 365.25)";
		$result = mysqli_query($conn, $query);
		if(!$result){
		    echo "Can't retrieve data " . mysqli_error($conn);
		    exit;
		}
		for($i = 0; $i < mysqli_num_rows($result); $i++){
			array_push($row, mysqli_fetch_assoc($result));
		}
		return $row;
	}





?>