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
		<h1> Welcome to the Add agency page.</h1>
		<div style="border: solid 2px; padding: 20px; width: 600px;">
			<form name="user" method="POST" action="agency.php">
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
				Agency Name:
				<select name="agency">
				<?php
					$sql = "select * from agency;";
					if($stmt = $conn->prepare($sql)){
						$stmt->execute();
						$stmt->store_result();
				    	if($stmt->num_rows!=0) {
							$stmt->bind_result($a_id, $name);
							while ($stmt->fetch()) { ?>
								<option value="<?php echo $a_id; ?>"><?php echo $name;
							}
						}
						else {
							echo "No Data found!!";
						}
					} else {
						die("Query failed!! \n");
					}
				?></select><br><br>
				
				<input type="submit" name="register" value="Register">
			</form>
		</div>
	</center>
</body>
</html>