<?php
	include '../config.php';
	
	$id2 = $_POST["fac"];
	
	$sql = " select * from publication where pub_id in(select distinct made_pub.pub_id from made_pub where made_pub.f_id=? and publication.pub_id=made_pub.pub_id);";
	
	if($stmt = $conn->prepare($sql)){
		$stmt->bind_param('s',$id2);
		$stmt->execute();
		$stmt->store_result();
		if($stmt->num_rows!=0){
			?><h1>Publications of Faculty ID: <?php echo $id2; ?>.</h1><?php
			$stmt->bind_result($id, $name,$detail,$type,$date,$a);
			while ($stmt->fetch()) {
					?> <div style="border: solid 2px; padding: 20px;"> 
					<?php echo "Publication Id: ".$id."<br>Publication Name: ".$name."<br>Publication Type: ".$type."<br>Publication Detail: ".$detail."<br>Publication Date: ".$date."<br>";
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