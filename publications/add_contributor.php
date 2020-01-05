<?php
	include '../config.php';

	$id1 = $_POST["id"];
	$res = $_POST['chk'];

	$sql = "insert into made_pub values(?,?);";
			
	foreach($res as $i)
	{
		$stmt = $conn->prepare($sql);
		$stmt->bind_param('ss',$id1,$i);
		$stmt->execute();
	}
	if ($stmt->affected_rows!=0 && $stmt->error=="") {
		?> <div style="border: solid 2px; padding: 20px;"><center> <h1> Operation Successful!!  </h1></center></div>
			<div style="border: solid 2px; padding: 20px;"><center> <h1> <a href="feed_research_pub_h.php" >Click here to add research areas.</a> </h1></center></div>
		<?php
	} else {
			?> <div style="border: solid 2px; padding: 20px;"><center> <h1>  Could not add Contributor!!!<br>Try again carefully!!! </h1></center></div><?php
	}

	?> <div style="border: solid 2px; padding: 20px;"><center> <h1> <a href="../index.php" >Go to homepage.</a> </h1></center></div><?php
?>