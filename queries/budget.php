<?php
	include '../config.php';
	
	$yr = $_POST["yr"];
	$dept = $_POST['department'];

	$sql = "select sum(budget) from projects where pro_id in  (select distinct made_pro.pro_id from made_pro, user where made_pro.f_id = user.f_id and user.department = ?) and year(projects.date_)=?;";
	
	if($stmt = $conn->prepare($sql)){
		$stmt->bind_param('ss',$dept,$yr);
		$stmt->execute();
		$stmt->store_result();
		if($stmt->num_rows!=0){
			$stmt->bind_result($sum);
			while ($stmt->fetch()) {
				if($sum==NULL)
					$sum=0;
				?> <div style="border: solid 2px; padding: 20px;"> 
					<h1>Total Budget for year <?php echo $yr; ?> of department <?php echo $dept.": ".$sum ; ?></h1><?php
				?></div><?php
			}
		}
		else {
			echo "Toatl budget for given configuration is 0.";
		}
	}
	else {
			?> <div style="border: solid 2px; padding: 20px;"><center> <h1>  Query Failed!!!  </h1></center></div><?php
	}
	?> <div style="border: solid 2px; padding: 20px;"><center> <h1> <a href="index.php" >Go to Query Page.</a> </h1></center></div><?php
?>