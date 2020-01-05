<?php
	include '../config.php';
?>
<!DOCTYPE html>
<html>
<head>
	<title>Trends</title>
</head>
<body>
	<center>
		<h1> See the collaboration of a faculty for Publications:</h1>
		<div style="border: solid 2px; padding: 20px; width: 600px;">
			<form name="user" method="POST" action="collab.php">
				Select Faculty :
				<select name="id">
				<?php
					$sql = "select f_id,name from user;";
					if($stmt = $conn->prepare($sql)){
						$stmt->execute();
						$stmt->store_result();
				    	if($stmt->num_rows!=0) {
							$stmt->bind_result($f_id,$name);
							while ($stmt->fetch()) { ?>
								<option value="<?php echo $f_id; ?>"><?php echo $name;
							}
						}
						else {
							echo "No Data found!!";
						}
					} else {
						die("Query failed!! \n");
					}
				?></select><br><br>
				<input type="submit" name="register" value="Submit">
			</form>
		</div>
		<h1> See the collaboration of a faculty for Projects:</h1>
		<div style="border: solid 2px; padding: 20px; width: 600px;">
			<form name="user" method="POST" action="collab2.php">
				Select Faculty :
				<select name="id">
				<?php
					$sql = "select f_id,name from user;";
					if($stmt = $conn->prepare($sql)){
						$stmt->execute();
						$stmt->store_result();
				    	if($stmt->num_rows!=0) {
							$stmt->bind_result($f_id,$name);
							while ($stmt->fetch()) { ?>
								<option value="<?php echo $f_id; ?>"><?php echo $name;
							}
						}
						else {
							echo "No Data found!!";
						}
					} else {
						die("Query failed!! \n");
					}
				?></select><br><br>
				<input type="submit" name="register" value="Submit">
			</form>
		</div>
	</center>
</body>
</html>