<?php
	include '../config.php';
	$id1 = $_POST["id"];
	$pass = $_POST['pass'];
	
	$password = $_POST['password'];
	$name = $_POST["name"];
	$email = $_POST["email"];
	$phone = $_POST["phone"];
	$designation = $_POST["designation"];
	$date = $_POST["date"];
	$gender = "F";
	if($_POST["gender"]=="Male")
	 	$gender = "M";
	$department = $_POST["department"];
	
	$sql2 = "select * from admin where admin_id=? and password=?;";
	$sql1 = "select * from user";
	$sql = "insert into user values(?,?,?,?,?,?,?,?,?);";

	// echo $id1;
	// echo $pass;

	$stmt2 = $conn->prepare($sql2);
	$stmt2->bind_param('ss',$id1,$pass);
	$stmt2->execute();
	$stmt2->store_result();

	if ($stmt2->num_rows!=0 && $stmt2->error=="") {
		$stmt1 = $conn->prepare($sql1);
		$stmt1->execute();
		$stmt1->store_result();
		$id ="FAC0".$stmt1->num_rows;
		
//echo $id."<br>".$name."<br>".$email."<br>".$phone."<br>".$gender."<br>".$date."<br>".$password."<br>".$designation."<br>".$department;

		if($stmt = $conn->prepare($sql)) {
			$stmt->bind_param('sssssssss',$id,$name,$password,$email,$phone,$designation,$gender,$department,$date);
			$stmt->execute();
			if ($stmt->affected_rows!=0 && $stmt->error=="") {
				?> <div style="border: solid 2px; padding: 20px;"><center> <h1>  New Faculty Inserted Successfully!!  </h1></center></div>
				<div style="border: solid 2px; padding: 20px;"><center> <h1> <?php echo "Your Faculty_id is ".$id." and password is ".$password ?></h1></center></div>
				<div style="border: solid 2px; padding: 20px;"><center> <h1> <a href="feed_research_h.php" >Click here to enter your research areas.</a> </h1></center></div>
				<?php
			} else {
					?> <div style="border: solid 2px; padding: 20px;"><center> <h1>  Could not make new Faculty!!!<br>Enter new details carefully!!! </h1></center></div><?php
			}
		}
		else {
			?> <div style="border: solid 2px; padding: 20px;"><center> <h1> Query failed!!! </h1></center></div><?php
		}
	
	} else {
			?> <div style="border: solid 2px; padding: 20px;"><center> <h1>  Check your credentials of Admin please!!!  </h1></center></div><?php
	}
	?> <div style="border: solid 2px; padding: 20px;"><center> <h1> <a href="../index.php" >Go to homepage.</a> </h1></center></div><?php
?>