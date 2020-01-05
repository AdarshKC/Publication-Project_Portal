<!DOCTYPE html>
<html>
<head>
	<title>Registration</title>
</head>
<body>
	<center>
		<h1> Welcome to the Faculty registration page.</h1>
		<div style="border: solid 2px; padding: 20px; width: 600px;">
			<form name="user" method="POST" action="register_faculty.php">
				Your Admin_id:
				<input type="text" name="id" required><br><br>
				Your password:
				<input type="password" name="pass" required><br><br>
				Name of new Faculty:
				<input type="text" name="name" required><br><br>
				Email of new Faculty:
				<input type="email" name="email" required><br><br>
				Password of new Faculty:
				<input type="password" name="password" required><br><br>
				Designation:
				<input type="text" name="designation" required><br><br>
				Phone of new Faculty:
				<input type="text" name="phone" required><br><br>
				DOB of new Faculty(YYYY-MM-DD):
				<input type="text" name="date"><br><br>
				Gender :
				<select name="gender">
					<option value="Male">Male</option>
					<option value="Female">Female</option>
				</select><br><br>
				Department:
				<select name="department">
					<option value="CS">Computer Science</option>
					<option value="EE">Electrical</option>
					<option value="ME">Mechanical</option>
					<option value="CB">Chemical</option>
					<option value="CV">Civil</option>
				</select><br><br>
				<input type="submit" name="register" value="Register">
			</form>
		</div>
	</center>
</body>
</html>