<?php include('process6.php');?>
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
	<br><br><br>
	<div class="row justify-content-center">
	<form action="process6.php" method="POST">
	<input type="hidden" name="id" value="<?php echo $id; ?>"/>
		<div class="form-group">
		<br><br>
		<label>Flocks_Id</label>
				<?php
						$sql = "SELECT * FROM `flocks`";
						$result = mysqli_query($mysqli, $sql);

				?>
				<select name="flocks_id"class="form-control">
                      <?php
                          
						  
                          $resultCheck = mysqli_num_rows($records);

                            while ($row = mysqli_fetch_array($result)) {
                      ?>
                           <option value="<?php echo $row['id'];?>"><?php echo $row['breed'];?></option>   
                           <?php   
                          }
                          ?>
            </select>
		<div class="form-group">
			<label>Small</label>
			<input type="number" name="small" class="form-control" value="<?php echo $small;?>"placeholder="Enter Small Eggs"required>
		</div>
		<div class="form-group">
			<label>Medium</label>
			<input type="number" name="medium" class="form-control" value="<?php echo $medium;?>"placeholder="Enter Medium Eggs"required>
		</div>
		<div class="form-group">
			<label>Large</label>
			<input type="number" name="large" class="form-control" value="<?php echo $large;?>"placeholder="Enter Large Eggs"required>
		</div>
		<div class="form-group">
			<label>spoiled</label>
			<input type="number" name="spoiled" class="form-control" value="<?php echo $spoiled;?>"placeholder="Enter Large Eggs"required>
		</div>
		<div class="form-group">
			<label>broken</label>
			<input type="number" name="broken" class="form-control" value="<?php echo $broken;?>"placeholder="Enter Large Eggs"required>
		</div>
		<div>
		
		<div class="form-group">
		<?php 
			if($update==true):
		?>
		<button type="submit" class="btn btn-info" name="update">Update</button>
		<a href="eggscrud.php"class="btn btn-warning">back</a>
		<?php else: ?>
			<button type="submit" class="btn btn-success" name="save">save</button>
			<a href="eggscrud.php"class="btn btn-warning">back</a>
		<?php endif;?>
		</div>
	</form>
	</div>

</body>
</html>