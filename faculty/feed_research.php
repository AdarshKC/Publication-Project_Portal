<?php
	

	// $sql2 = "select * from admin where admin_id=? and password=?;";
	// $sql1 = "select * from admin";
	// $sql = "insert into admin values(?,?,?,?,?,?,?);";

	//echo $id1;
	//echo $pass;

	foreach($res as $selected)
		echo "<p>".$selected ."</p>";
?>

<?php
	include '../config.php';

	$id1 = $_POST["id"];
	$pass = $_POST['pass'];
	$res = $_POST['chk'];

	$sql2 = "select * from user where f_id=? and password=?;";
	$sql = "insert into interest values(?,?);";
			
	$stmt2 = $conn->prepare($sql2);
	$stmt2->bind_param('ss',$id1,$pass);
	$stmt2->execute();
	$stmt2->store_result();

	if ($stmt2->num_rows!=0 && $stmt2->error=="") {
			//echo $id."<br>".$name."<br>".$email."<br>".$phone."<br>".$gender."<br>".$date."<br>";
			foreach($res as $i)
			{
				$stmt = $conn->prepare($sql);
				$stmt->bind_param('ss',$id1,$i);
				$stmt->execute();
			}
			if ($stmt->affected_rows!=0 && $stmt->error=="") {
				?> <div style="border: solid 2px; padding: 20px;"><center> <h1> Operation Successful!!  </h1></center></div><?php
			} else {
					?> <div style="border: solid 2px; padding: 20px;"><center> <h1>  Could not make new Admin!!!<br>Enter new details carefully!!! </h1></center></div><?php
			}
		}
	
	else {
			?> <div style="border: solid 2px; padding: 20px;"><center> <h1>  Check your credentials please!!!  </h1></center></div><?php
	}
	?> <div style="border: solid 2px; padding: 20px;"><center> <h1> <a href="../index.php" >Go to homepage.</a> </h1></center></div><?php
?>