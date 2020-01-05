<?php
	include '../config.php';

	$id = $_POST["id"];
	$agency = $_POST['agency'];
	
	$sql = "insert into funded_by values(?,?)";

	// echo $id;
	// echo $agency;

	if($stmt = $conn->prepare($sql)) {
		$stmt->bind_param('ss',$id,$agency);
		$stmt->execute();
		if ($stmt->affected_rows!=0 && $stmt->error=="") {
			?> <div style="border: solid 2px; padding: 20px;"><center> <h1>  Project agency name Inserted Successfully!!  </h1></center></div>
			<div style="border: solid 2px; padding: 20px;"><center> <h1> <a href="add_contributor_h.php" >Click here to add other contributors.</a> </h1></center></div><?php
		} else {
				?> <div style="border: solid 2px; padding: 20px;"><center> <h1>  Could not insert Project agency name!!!<br>Try again carefully!!! </h1></center></div><?php
		}
	}
	else {
			?> <div style="border: solid 2px; padding: 20px;"><center> <h1>  Check your credentials please!!!  </h1></center></div><?php
	}
	?> <div style="border: solid 2px; padding: 20px;"><center> <h1> <a href="../index.php" >Go to homepage.</a> </h1></center></div><?php
?>