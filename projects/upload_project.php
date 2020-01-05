<?php
	include '../config.php'; 

	$id1 = $_POST["uid"];
	$pass = $_POST['pass'];
	
	$pname = $_POST['name'];
	$detail = $_POST['detail'];
	$budget = $_POST["budget"];
	$date = $_POST["date"];

	$sql2 = "select * from user where f_id=? and password=?;";
	$sql1 = "select * from projects";
	$sql = "insert into projects values(?,?,?,?,?,?);";
	$sql3 = "insert into made_pro values(?,?)";

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
			$id ="PRO".$stmt1->num_rows;
			//echo $id."<br>".$name."<br>".$email."<br>".$phone."<br>".$gender."<br>".$date."<br>";
			$stmt->bind_param('ssssss',$id,$pname,$detail,$budget,$date,$id1);
			$stmt->execute();

			$stmt3 = $conn->prepare($sql3);
			$stmt3->bind_param('ss',$id,$id1);
			$stmt3->execute();


			if ($stmt->affected_rows!=0 && $stmt->error=="") {
				?> <div style="border: solid 2px; padding: 20px;"><center> <h1>  Project Inserted Successfully!!  </h1></center></div>
				<div style="border: solid 2px; padding: 20px;"><center> <h1>  Your Project id is: <?php echo $id ?>  </h1></center></div>
				<div style="border: solid 2px; padding: 20px;"><center> <h1> <a href="agency_h.php" >Click here to enter budget agency.</a> </h1></center></div><?php
			} else {
					?> <div style="border: solid 2px; padding: 20px;"><center> <h1>  Could not insert Project!!!<br>Try again carefully!!! </h1></center></div><?php
			}
		}
		else {
			?> <div style="border: solid 2px; padding: 20px;"><center> <h1> Query failed!!! </h1></center></div><?php
		}
	
	} else {
			?> <div style="border: solid 2px; padding: 20px;"><center> <h1>  Check your credentials please!!!  </h1></center></div><?php
	}
	?> <div style="border: solid 2px; padding: 20px;"><center> <h1> <a href="../index.php" >Go to homepage.</a> </h1></center></div><?php
?>