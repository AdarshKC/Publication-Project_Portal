<?php
	include '../config.php';

	$id1 = $_POST["id"];
	$pass = $_POST['pass'];
	
	$name = $_POST["name"];
	
	$sql2 = "select * from admin where admin_id=? and password=?;";
	$sql1 = "select * from research";
	$sql = "insert into research values(?,?);";

	// echo $id1;
	// echo $pass;

	$stmt2 = $conn->prepare($sql2);
	$stmt2->bind_param('ss',$id1,$pass);
	$stmt2->execute();
	$stmt2->store_result();

	if ($stmt2->num_rows!=0 && $stmt2->error=="") {

		if($stmt = $conn->prepare($sql)) {
			$stmt1 = $conn->prepare($sql1);
			$stmt1->execute();
			$stmt1->store_result();
			$id ="res10".$stmt1->num_rows;
			//echo $id."<br>".$name."<br>".$email."<br>".$phone."<br>".$gender."<br>".$date."<br>";
			$stmt->bind_param('ss',$id,$name);
			$stmt->execute();
			if ($stmt->affected_rows!=0 && $stmt->error=="") {
				?> <div style="border: solid 2px; padding: 20px;"><center> <h1>  New Research Inserted Successfully!!  </h1></center></div>
				<div style="border: solid 2px; padding: 20px;"><center> <h1>  Research id of <?php echo $name ?> is: <?php echo $id ?>  </h1></center></div><?php
			} else {
					?> <div style="border: solid 2px; padding: 20px;"><center> <h1>  Could not make new Admin!!!<br>Enter new details carefully!!! </h1></center></div><?php
			}
		}
		else {
			?> <div style="border: solid 2px; padding: 20px;"><center> <h1> Query failed!!! </h1></center></div><?php
		}
	
	} else {
			?> <div style="border: solid 2px; padding: 20px;"><center> <h1>  Check your credentials please!!!  </h1></center></div><?php
	}
	?> <div style="border: solid 2px; padding: 20px;"><center> <h1> <a href="index.php" >Go to homepage.</a> </h1></center></div><?php
?>