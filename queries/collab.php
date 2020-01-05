<?php
	include '../config.php';
	
	$id = $_POST["id"];
	
	$sql1 = "select * from made_pub where f_id=?;";
	
	if($stmt1 = $conn->prepare($sql1)){
		$stmt1->bind_param('s',$id);
		$stmt1->execute();
		$stmt1->store_result();
		if($stmt1->num_rows!=0){
			?><h1>Collaboration of <?php echo $id; ?>.</h1><?php
			$stmt1->bind_result($pub_id,$a);
			while ($stmt1->fetch()) {		
				$sql = "select * from publication where pub_id=?;";
				if($stmt = $conn->prepare($sql)){
					$stmt->bind_param('s',$pub_id);
					$stmt->execute();
					$stmt->store_result();
					$stmt->bind_result($id, $name,$detail,$type,$date,$a);
					while ($stmt->fetch()) {
						?> 
						<div style="border: solid 2px; padding: 20px;"> 
						<h2>Publication: <?php echo $name; ?></h2>
						<?php echo "Publication Id: ".$id."<br>Publication Type: ".$type."<br>Publication Detail: ".$detail."<br>Publication Date: ".$date."<br><b>Publication Collaboration between</b>: ";
						$sql3 = "select name from user where f_id in (select f_id from made_pub where pub_id=?);";
						$sql2 = "select name from research where r_id in (select r_id from publication_ra where pub_id=?);";

						$stmt3=$conn->prepare($sql3);
						$stmt3->bind_param('s',$id);
						$stmt3->execute();
						$stmt3->store_result();
						$stmt3->bind_result($x);
						
						$stmt2=$conn->prepare($sql2);
						$stmt2->bind_param('s',$id);
						$stmt2->execute();
						$stmt2->store_result();
						$stmt2->bind_result($y);
						
						while ($stmt3->fetch()) {
							echo $x.", ";
						}
						echo "<br>Research Areas of publication: ";
						
						while ($stmt2->fetch()) {
							echo $y.", ";
						}
						?></div><?php
					}
				}
				else {
					?> <div style="border: solid 2px; padding: 20px;"><center> <h1>  User has not done any project yet!!!  </h1></center></div><?php
				}
			}
		}
		else {
			echo "Query Failed!!!";
		}
	}
	else {
			?> <div style="border: solid 2px; padding: 20px;"><center> <h1>  Query Failed!!!  </h1></center></div><?php
	}
	?> <div style="border: solid 2px; padding: 20px;"><center> <h1> <a href="index.php" >Go to Query Page.</a> </h1></center></div><?php
?>