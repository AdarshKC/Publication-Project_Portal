<?php
	include '../config.php';
?>
<!DOCTYPE html>
<html>
<head>
	<title>Projects</title>
</head>
<body>
	<center>
		<h1> Welcome to the add contributor page.</h1>
		<div style="border: solid 2px; padding: 20px; width: 600px;">
			<form name="user" method="POST" action="add_contributor.php">
				Project Id:
				<select name="id">
				<?php
					$sql = "select * from projects;";
					if($stmt = $conn->prepare($sql)){
						$stmt->execute();
						$stmt->store_result();
				    	if($stmt->num_rows!=0) {
							$stmt->bind_result($pro_id,$name,$b,$c,$d,$e);
							while ($stmt->fetch()) { ?>
								<option value="<?php echo $pro_id; ?>"><?php echo $pro_id;
							}
						}
						else {
							echo "No Data found!!";
						}
					} else {
						die("Query failed!! \n");
					}
				?></select><br><br>
				Mark the contributors of this project except you:- <br>
				<?php
					$sql1 = "select * from user;";
					if($stmt1 = $conn->prepare($sql1)){
						$stmt1->execute();
						$stmt1->store_result();
				    	if($stmt1->num_rows!=0) {
							$stmt1->bind_result($f_id, $name,$a,$b,$c,$d,$e,$f,$g);
							while ($stmt1->fetch()) { ?>
								<input type="checkbox" name="chk[]" value="<?php echo $f_id; ?>"><?php echo $name;
							}
						}
						else {
							echo "No Data found!!";
						}
					} else {
						die("Query failed!! \n");
					}
				?><br><br>
				<input type="submit" name="register" value="Submit">
			</form>
		</div>
	</center>
</body>
</html>