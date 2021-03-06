<?php
session_start();
$Msg="";
require_once('Database.php');
$id=$_GET['Edit'];
if(isset($_SESSION['role'])){
	include('head.php');
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
if(isset($_POST['sub'])){
	$names=strip_tags($_POST['names']);
	$email=strip_tags($_POST['email']);
	$gender=$_POST['gender'];
	$dob=$_POST['dob'];
	$empNumber=$_POST['empNumber'];
	$designation=$_POST['designation'];
	$department=$_POST['department'];
	$teachingSubject1=$_POST['teachingSubject1'];
	$teachingSubject2=$_POST['teachingSubject2'];
	$academicLevel=$_POST['academicLevel'];
	$salary=$_POST['pay'];
	$health=$_POST['health'];
	$tId=$_POST['id'];
	$password=$_POST['password'];
	$empTerm=$_POST['empTerm'];
	$nationality=$_POST['nationality'];
	$previousEmployer=$_POST['previousEmployer'];
	$kra=$_POST['kra'];
	$idNumber=$_POST['idNumber'];
	//passport image upload
	$file=$_FILES['logo']['name'];
	if($file==""){
		$f="default.png";
	}else{
		$f=$file;
		$tmpName=$_FILES['logo']['tmp_name'];
		move_uploaded_file($tmpName, "teachers/$f");
	}
	$db=new Database();
	$db->query("UPDATE teacher SET names=:names,email=:email,gender=:gender,academicLevel=:academicLevel,health=:health,nationality=:nationality,passportName=:passportName WHERE id=:id");
	$db->bind(':names',$names);
	$db->bind(':email',$email);
	$db->bind(':gender',$gender);
	$db->bind(':academicLevel',$academicLevel);
	$db->bind(':health',$health);
	$db->bind(':nationality',$nationality);
	$db->bind(':passportName',$f);
  $db->bind(':id',$tId);
	if($db->execute()){
		echo "<script>window.open('viewParent.php','_self');</script>";
	}else{
		$Msg="<div class='alert alert-danger'id='alert'>
			<strong>Parent Details Not Updated</strong>
		</div>";
	}
}

?>
			<div class="app-content">

						<?php include('include/header.php');?>

				<!-- end: TOP NAVBAR -->
				<div class="main-content" >
					<span style="font-size:20px"><span class="text-primary">Edit Parent Details</span></span>
					<div class="container">
            <?php
            $db=new Database();
            $db->query("select * from teacher where id=:id");
            $db->bind(':id',$id);
            if($results=$db->single()){
            ?>
            <div style="float:right">
							<?php if($key->passportName==""){
								$img="default.png";
							}else{
								$img=$key->passportName;
							}?>
              <img src="<?php echo "teachers/".$img;?>" width="150px" height="150px" style="border-radius:100px">
            </div>
					<form method="POST" action="editParent.php" enctype="multipart/form-data">
						<?php echo $Msg;?>
						<div class="row">
							<div class="col-sm-3">
                	<input type="hidden" class="form-control" name="id" value="<?php echo $results->id;?>"/>
								<label for="names" class="control-label">Enter the names</label>&nbsp;<i class="fa fa-tags"style="color:red"></i>
								<input type="text" class="form-control" name="names" value="<?php echo $results->names;?>" required maxlength="30"/>
							</div>
							<div class="col-sm-3">
								<label for="email" class="label-control">Email</label>&nbsp;<i class="fa fa-envelope"style="color:red"></i>
								<input type="email" class="form-control" name="email" value="<?php echo $results->email;?>" required/>
							</div>
							<div class="col-sm-3">
								<label for="gender" class="label-control">Gender</label>&nbsp;<i class="fa fa-users"style="color:red"></i>
								<select name="gender" class="form-control">
									<option>--<?php echo $results->gender;?>--</option>
									<option>Male</option>
									<option>Female</option>
								</select>
							</div>
							<div class="col-sm-3">
								<label for="level" class="label-control">Academic Level</label>&nbsp;<i class="fa fa-graduation-cap" style="color:red"></i>
								<input type="text" class="form-control" name="academicLevel" value="<?php echo $results->academicLevel;?>" required/>
							</div>
							<div class="col-sm-3">
								<label for="" class="label-control">Disabled</label>&nbsp;<i class="fas fa-ribbon" style="color:red"></i>
								<select name="health" class="form-control">
									<option><?php echo $results->health;?></option>
									<option>Yes</option>
									<option>No</option>
								</select>
							</div>
							<div class="col-sm-3">
								<label for="" class="label-control">Nationality</label>&nbsp;<i class="fas fa-star" style="color:red"></i>
									<input type="text" class="form-control" name="nationality" value="<?php echo $results->nationality;?>" required/>
							</div>
							<div class="col-sm-3">
								<label for="" class="label-control">Passport Photo</label>&nbsp;<i class="fas fa-image" style="color:red"></i>
								<input type="file" name="logo"/>
							</div>
						</div>
          <?php
         }
          ?>
						<button class="btn btn-success btn-raised" name="sub" type="submit" style="margin-top:20px">Update Details</button>
					</form>
				</div>
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
			});
		</script>
		<!-- end: JavaScript Event Handlers for this page -->
		<!-- end: CLIP-TWO JAVASCRIPTS -->
	</body>
</html>
<?php }else{
	header("location: index.php");
}
