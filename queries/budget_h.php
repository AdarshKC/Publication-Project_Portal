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
		<h1> Search budget of a particular year and department: </h1>
		<div style="border: solid 2px; padding: 20px; width: 600px;">
			<form name="user" method="POST" action="budget.php">
				Enter Year(YYYY):
				<input type="text" name="yr" required><br><br>
				Department:
				<select name="department">
					<option value="CS">Computer Science</option>
					<option value="EE">Electrical</option>
					<option value="ME">Mechanical</option>
					<option value="CB">Chemical</option>
					<option value="CV">Civil</option>
				</select><br><br>
				
				<input type="submit" name="register" value="Submit">
			</form>
		</div>
	</center>
</body>
</html>