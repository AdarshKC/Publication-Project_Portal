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
		<h1> Feed Research of Projects.</h1>
		<div style="border: solid 2px; padding: 20px; width: 600px;">
			<form name="user" method="POST" action="feed_research_pro.php">
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
				Mark your Research areas:- <br>
				<?php
					$sql = "select * from research;";
					if($stmt = $conn->prepare($sql)){
						$stmt->execute();
						$stmt->store_result();
				    	if($stmt->num_rows!=0) {
							$stmt->bind_result($r_id, $name);
							while ($stmt->fetch()) { ?>
								<input type="checkbox" name="chk[]" value="<?php echo $r_id; ?>"><?php echo $name; ?> <?php
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