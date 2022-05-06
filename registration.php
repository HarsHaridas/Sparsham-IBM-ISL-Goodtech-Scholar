<?php
include("header.php");
include("dbconn.php");

?>
<div class="container">
	<h1 class="text-center">Registration</h1>
  <form  action="" method="post" id="form2" class="signin-form" enctype="multipart/form-data">

	<div class="col-md-4">
     <label for="inputEmail4" class="form-label">Full Name</label>
    <input type="text" class="form-control" id="username" required=""  name="username">
     <span style="color:red;" id="username_error"></span>
    
  </div>
  
<div class="clearfix"></div>
	<div class="col-md-4">
     <label for="inputEmail4" class="form-label">Email</label>
    <input type="email" class="form-control" id="email" required=""  name="email" onblur="getEmail(this.value)">
    <span class="error_form" id="email_error"></span>
    <div id="showresult"></div>
  </div>
<div class="clearfix"></div>
  <div class="col-md-4">
     <label for="inputEmail4" class="form-label">Phone</label>
    <input type="text" class="form-control" id="phone" required="" name="phone">
    <span style="color:red;" id="phone_error"></span>
  </div>
  <div class="clearfix"></div>
  <div class="col-md-4">
    <label for="inputEmail4" class="form-label">Password</label>
    <input type="password" class="form-control" id="password" required=""  name="password">
   
    
  </div>
  <div class="clearfix"></div>
  <div class="col-md-4">
    <label for="inputEmail4" class="form-label">Confirm Password</label>
    <input type="password" class="form-control" id="conpassword" required=""  name="conpassword">
    <span style="color:red;" id
    ="password_error"></span>
  </div>
  <div class="clearfix"></div>
  <div class="col-md-4">
  	<div class="clearfix"></div>
  	
<label for="inputState" class="form-label" >Register as</label>

  <select class="form-control" aria-label="Default select example" id="usertype" name="state" required="">

<option value="student" >Student</option>

<option value="public">Public</option>



</select>
</div>
<div class="clearfix"></div>
<br>
<div class="col-md-4">
<div class="submit-button text-lg-center">
					   <button type="submit" name="btn1" class="btn btn-style">Create Account</button>
					   <div class="mt-2 text-center">
					   </div>
				    </div>


</div>
</form>
	
</div>
	<script type="text/javascript" language="javascript" src="js/validation.js"></script>

	<script type="text/javascript">
		function getEmail(val){
			console.log("in getEmail")
			console.log(val)
			$.ajax({
				type:"POST",
				url:"getemail.php",
				data:'email='+val,
				success: function(data){
		console.log(data)
	
		$("#showresult").html(data);


	}
			})
		}
	</script>
	<script type="text/javascript">
		function getEmail(val){
			console.log("in getEmail")
			console.log(val)
			$.ajax({
				type:"POST",
				url:"getemail.php",
				data:'email='+val,
				success: function(data){
		console.log(data)
	
		$("#showresult").html(data);


	}
			})
		}
	</script>
<?php
	if(isset($_POST["btn1"]))
	{
		
		$name=$_POST["username"];
		$email=$_POST["email"];
	$phone=$_POST['phone'];

	$usertype=$_POST['state'];
	
	$psd=$_POST['password'];
	
	$cpsd=$_POST['conpassword'];
  $error=false;
	
	
	if($error==false)
	{
		$sql_sign=$conn->query("select * from login where email='$email'");
		if($sql_sign->num_rows>0)
					{
						
						echo "<script>alert('Try another EmailId +$email+ already exist');</script>";
						exit();
					}
		if($cpsd!=$psd)
		{
			echo "<script>alert('Password Not Match');</script>";
			exit();
		}
		else
		{
			$ins1="insert into login(email,password,usertype,status)values('$email','$psd','$usertype','0')";
			if(mysqli_query($conn,$ins1)){
        $ins1="insert into registration(name,email,phone)values('$name','$email','$phone')";
        if(mysqli_query($conn,$ins1)){
          echo "inserted";
            
          }
        }
		
		}
		if($ins1==true)
		{
			echo "<script>alert('Registration Successfully Submitted');
		location.href='login.php';
		</script>";
		}
		else
		{
			echo "Entered Wrong input".$conn->error;
		}  
	}
	}
	
	
	?>
<?php
include("footer.php");
?>