<!DOCTYPE html>
<html>
<head>
	<title>Projects</title>
</head>
<body>
	<center>
		<h1> Welcome to the Upload Projects page.</h1>
		<div style="border: solid 2px; padding: 20px; width: 600px;">
			<form name="user" method="POST" action="upload_project.php">
				Your Id:
				<input type="text" name="uid" required><br><br>
				Your Password:
				<input type="password" name="pass" required><br><br>
				Project Name:
				<input type="text" name="name" required><br><br>
				Details:
				<input type="text" name="detail" required><br><br>
				Budget:
				<input type="text" name="budget" required><br><br>
				DOB (YYYY-MM-DD):
				<input type="text" name="date"><br><br>

				<input type="submit" name="register" value="Register">
			</form>
		</div>
	</center>
</body>
</html>
