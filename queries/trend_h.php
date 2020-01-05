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
		<h1>Welcome to Trend section: </h1>
		<div style="border: solid 2px; padding: 20px; width: 600px;">
		<h2> Search Trends of Publication on the basis of year: </h2>
			<form name="user" method="POST" action="trend.php">
				Enter Year(YYYY):
				<input type="text" name="yr" required><br><br>
				
				<input type="submit" name="register" value="Submit">
			</form>
		</div>
		<div style="border: solid 2px; padding: 20px; width: 600px;">
		<h2> Search Trends of Publication of past years: </h2>
			<form name="user" method="POST" action="trend3.php">
				Enter past year:
				<input type="text" name="yr" required><br><br>

				<input type="submit" name="register" value="Submit">
			</form>
		</div>
		<div style="border: solid 2px; padding: 20px; width: 600px;">
		<h2> Search Trends of Publication on the basis of year and Research year: </h2>
			<form name="user" method="POST" action="trend2.php">
				Enter Year(YYYY):
				<input type="text" name="yr" required><br><br>
				Select Research Area:
				<select name="ra">
				<?php
					$sql = "select * from research;";
					if($stmt = $conn->prepare($sql)){
						$stmt->execute();
						$stmt->store_result();
				    	if($stmt->num_rows!=0) {
							$stmt->bind_result($r_id,$name);
							while ($stmt->fetch()) { ?>
								<option value="<?php echo $r_id; ?>"><?php echo $name;
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
		<div style="border: solid 2px; padding: 20px; width: 600px;">
		<h2> Search Trends of Publication on the basis of only faculty id: </h2>
			<form name="user" method="POST" action="trend4.php">
				Select Faculty ID:
				<select name="fac">
				<?php
					$sql = "select f_id from user;";
					if($stmt = $conn->prepare($sql)){
						$stmt->execute();
						$stmt->store_result();
				    	if($stmt->num_rows!=0) {
							$stmt->bind_result($f_id);
							while ($stmt->fetch()) { ?>
								<option value="<?php echo $f_id; ?>"><?php echo $f_id;
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
		<div style="border: solid 2px; padding: 20px; width: 600px;">
		<h2> Search Trends of Publication on the basis of year and faculty id: </h2>
			<form name="user" method="POST" action="trend5.php">
				Enter Year(YYYY):
				<input type="text" name="yr" required><br><br>
				Select Faculty ID:
				<select name="fac">
				<?php
					$sql = "select f_id from user;";
					if($stmt = $conn->prepare($sql)){
						$stmt->execute();
						$stmt->store_result();
				    	if($stmt->num_rows!=0) {
							$stmt->bind_result($f_id);
							while ($stmt->fetch()) { ?>
								<option value="<?php echo $f_id; ?>"><?php echo $f_id;
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