<?php include('process2.php');?>
<!DOCTYPE html>
<html>
<head>
	<title>User Registration system using PHP and MySQL</title>
	<link rel="stylesheet" type="text/css"	href="Css1/side.css">
	<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
	<script type = "text/javascript" src = "bootstrap/js/jquery-slim.min.js"></script>
	<script type = "text/javascript" src = "bootstrap/js/popper.min.js"></script>
	<script type = "text/javascript" src = "bootstrap/js/bootstrap.js"></script>
</head>
<body>
<div id="main">
			<nav>
			
				<ul>

					
					
					<li><a href="index.php">Home</a></li>
					<li><a href="#">About</a></li>
					<li><a href="#">Contact</a></li>
				</ul>
		
		
	</div>
	<?php require_once 'process2.php';?>
	
	<?php
	
	if(isset($_SESSION['message'])):?>
	
	<div class="alert alert-<?=$_SESSION['msg_type']?>">
	
	<?php 
		echo $_SESSION['message'];
		unset($_SESSION['message']);
	?>
	</div>
	<?php endif ?>
	<div class="container">
	<?php
		$mysqli = new mysqli('localhost','root','','registration') or die(mysqli_error($mysqli));
		$username= $_SESSION["username"];
		$result=$mysqli->query("select id from users where username='$username'") or die($mysqli->error);
		if(@count($result)==1)
		{
			$row=$result->fetch_array();
			$userid=$row['id'];

		}
		
		$result = $mysqli->query("SELECT * FROM medication where userid='$userid'") or die($mysqli->error);
		//pre_r($result);
		
		?>
		<?php
	
		$result = $mysqli->query("SELECT * FROM flocks,medication where flocks.id = medication.flocks_id ") or die($mysqli->error);
		//pre_r($result);
		
		?>
		
		<div class="row justify-content-center">
		<br><br><br>
			<table class="table">
			
				<thead>
					<tr class="text-white">
						<th>Flocks_Breed</th>
						<th>Types_of_vaccine</th>
						<th>Timestamp</th>
						<th>Amount</th>
						<th colspan="2">Action</th>
					</tr>
				</thead>
				
				<?php
					while($row=$result->fetch_assoc()):?>
					
						<tr class="text-white">
							<td><?php echo $row['breed']?></td>
							<td><?php echo $row['type_of_vaccine']?></td>
							<td><?php echo $row['time']?></td>
							<td>₱<?php echo $row['amount']?></td>
							<td>
								<a href="medicationadd.php?edit=<?php echo $row['id'];?>"
									class="btn btn-warning">Edit</a>
								<a href="process2.php?delete=<?php echo $row['id'];?>"
									class="btn btn-danger">Delete</a>
									
							</td>
						</tr>
						<?php endwhile;?>
			</table>
		</div>
		<br><br>
		<center>
		<a href="medicationadd.php"class="btn btn-success">Create info</a>
		<a href="index1.php"class="btn btn-dark">Back</a>
		</center>
		<?php
		function pre_r($array){
			echo'<pre>';
			print_r($array);
			echo'</pre>';
		}
	
	?>
	
</div>
</body>
</html>