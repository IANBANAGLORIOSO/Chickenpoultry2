<!DOCTYPE html>
<html>
<head>
	<title>Front page</title>
	
	<link rel="stylesheet" type="text/css" href="Css1/style.css">
	<link rel="stylesheet" type="text/css" href="Css1/side2.css">
	<link rel="stylesheet" type="text/js" href="javascript/java.js">
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
					<li>Contact Me: 0946-816-2149</li>
					
				</ul>
		
			</nav>
	</div>

<div id="wrapper">
		<!-- Sidebar -->
		<div id="sidebar-wrapper">
			<ul class="sidebar-nav">
				<div class="logo_container">
				<br><br>
					
					
				</div>
				<br><br>
				<div class="title">WELCOME</div>
				<li>
					<a href="flockscrud.php">Flocks Management</a>
				</li>
				<li>
					<a href="customercrud.php">Customer</a>
				</li>
				<li>
					<a href="medicationcrud.php">Medication</a>
				</li>
				<li>
					<a href="feedscrud.php">Feeds</a>
				</li>
				<li>
					<a href="salescrud.php">Sales</a>
				</li>
				<li>
					<a href="itemcrud.php">Items</a>
				</li>
				<li>
					<a href="eggscrud.php">Records Eggs</a>
				</li>
				<li>
					<a href="salesitemcrud.php">Sales-item</a>
				</li>
				<li>
				<a href="login.php">Logout</a>
				</li>
			</ul>
		</div>
		<!-- /#sidebar-wrapper -->

		<!-- Page Content -->
		<div id="page-content-wrapper">
			<div class="container" id="dot"> 
				
				<a href="#menu-toggle" class="btn btn-success" id="menu-toggle">Menu</a>
			</div>
		</div>

	</div>
		
		<script src="Menu/jquery/jquery.min.js"></script>
		<script src="Menu/bootstrap/js/bootstrap.bundle.min.js"></script>


<!-- Menu Toggle Script -->
<script>
$("#menu-toggle").click(function(e) {
    e.preventDefault();
    $("#wrapper").toggleClass("toggled");
});

</script>
<div class="header">
	<a href="flocksreport.php" class="button">FLOCKS REPORT</a>
	<a href="customerreport.php" class="button">CUSTOMER REPORT</a>
	<a href="medicationreport.php" class="button">MEDICATION REPORT</a>
	<a href="feedsreport.php" class="button">FEEDS REPORT</a>
	<a href="salesreport.php" class="button">SALES REPORT</a>
	<a href="itemreport.php" class="button">ITEMS REPORT</a>
	<a href="eggsreport.php" class="button">EGGS REPORT</a>
	<a href="salesitemreport.php" class="button">SALES-ITEM REPORT</a>
	
</div>	
<br><br><br><br>
</body>
</html>