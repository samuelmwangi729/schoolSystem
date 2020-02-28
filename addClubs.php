<?php
session_start();
require_once('Database.php');
if(isset($_SESSION['role'])){
	$Msg="";
	include('head.php');
	if(isset($_POST['sub'])){
		//handle the button event
		$clubName=$_POST['clubName'];
		$db=new Database();
		$db->query("INSERT INTO club(clubName) VALUES(:clubName)");
		$db->bind(':clubName',$clubName);
	if(	$db->execute()){
		//if true
		$Msg="<div class='alert alert-success'id='alert'>
			<strong>Success!!!Club Added</strong>
		</div>";
	}else{
		$Msg="<div class='alert alert-danger'id='alert'>
			<strong>Error!!!Club Not Added</strong>
		</div>";
	}
	}
?>
	<body>
		<div id="app">
<?php
//perform access management
if($_SESSION['role']=="Administrator"){
	include('include/sidebar.php');
}else if($_SESSION['role']=="teacher"){
	include('include/tsidebar.php');
}else if($_SESSION['role']=="Accountant"){
	include('include/asidebar.php');
}else{
	echo "";
}
?>
			<div class="app-content">

						<?php include('include/header.php');?>

				<!-- end: TOP NAVBAR -->
				<div class="main-content" >
						<form method="POST" action="addClubs.php">
							<?php echo $Msg;?>
							<fieldset>
								<legend style="border:0px;font-size:30px;"><strong>Add A new Club</strong></legend>
								<div class="row">
									<div class="col-sm-6">
										<label for="clubName" class="label-control">Club</label>
										<input type="text" name="clubName" class="form-control" placeholder="Enter the Club Name" required/>
									</div>
									<div class="col-sm-6">
										<br>
										<button class="btn btn-success btn-block" name="sub">Add Club</button>
									</div>
								</div>
							</fieldset>
						</form>
				</div>
			</div>
			<!-- start: FOOTER -->
	<?php include('include/footer.php');?>
		</div>
		<!-- start: MAIN JAVASCRIPTS -->
		<script src="vendor/jquery/jquery.min.js"></script>
		<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
		<script src="vendor/modernizr/modernizr.js"></script>
		<script src="vendor/jquery-cookie/jquery.cookie.js"></script>
		<script src="vendor/perfect-scrollbar/perfect-scrollbar.min.js"></script>
		<script src="vendor/switchery/switchery.min.js"></script>
		<script src="assets/js/main.js"></script>

		<script>
			jQuery(document).ready(function() {
				Main.init();
				FormElements.init();
				$(document).on('click','#alert',function(){
					alert('i have been clicked');
				});
			});
		</script>
		<!-- end: JavaScript Event Handlers for this page -->
		<!-- end: CLIP-TWO JAVASCRIPTS -->
	</body>
</html>
<?php }else{
	header("location: index.php");
}
