<?php
	include '../config.php';
	
	$yr = $_POST["yr"];

	$sql = "select * from publication where year(date_)>year(curdate())-?;";
	
	if($stmt = $conn->prepare($sql)){
		$stmt->bind_param('s',$yr);
		$stmt->execute();
		$stmt->store_result();
		if($stmt->num_rows!=0){
			?><h1>Publications of last <?php echo $yr; ?> years.</h1><?php
			$stmt->bind_result($id, $name,$detail,$type,$date,$a);
			while ($stmt->fetch()) {
				?> <div style="border: solid 2px; padding: 20px;"> 
					<?php echo "Publication Id: ".$id."<br>Publication Name: ".$name."<br>Publication Type: ".$type."<br>Publication Detail: ".$detail."<br>Publication Date: ".$date."<br>Contributors:<br>";
					$sql1 = "select name from user where f_id in (select f_id from made_pub where pub_id=?);";
					$sql2 = "select name from research where r_id in (select r_id from publication_ra where pub_id=?);";

					$stmt1=$conn->prepare($sql1);
					$stmt1->bind_param('s',$id);
					$stmt1->execute();
					$stmt1->store_result();
					$stmt1->bind_result($x);
					
					$stmt2=$conn->prepare($sql2);
					$stmt2->bind_param('s',$id);
					$stmt2->execute();
					$stmt2->store_result();
					$stmt2->bind_result($y);
					
					while ($stmt1->fetch()) {
						echo $x.", ";
					}
					echo "<br>Research Areas:<br>";
					
					while ($stmt2->fetch()) {
						echo $y.", ";
					}
				?></div><?php
			}
		}
		else {
			echo "Empty";
		}
	}
	else {
			?> <div style="border: solid 2px; padding: 20px;"><center> <h1>  Query Failed!!!  </h1></center></div><?php
	}
	?> <div style="border: solid 2px; padding: 20px;"><center> <h1> <a href="index.php" >Go to Query Page.</a> </h1></center></div><?php
?>