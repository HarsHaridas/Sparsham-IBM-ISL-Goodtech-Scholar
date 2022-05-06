<?php
session_start();

include("header.php");
include("dbconn.php");


?>
<div class="container">
<form  action="" method="post" class="signin-form">
	<h1 class="text-center">Login</h1>
	<div class="col-md-4">
     <label for="inputEmail4" class="form-label">Email</label>
    <input type="email" class="form-control" id="email" required="" name="email">
    <span class="error_form" id="email_error"></span>
    <div id="showresult"></div>
  </div>
  <div class="clearfix"></div>
  <div class="col-md-4">
    <label for="inputEmail4" class="form-label">Password</label>
    <input type="password" class="form-control" id="password" required=""  name="password">
   
    <a href="forgotpassword.php">forgot password</a>
  </div>
  <div class="clearfix"></div>
  <div class="col-md-4">
  <button type="submit" name="sbt1" class="btn btn-style">Login</button>
</form>

<a href="registration.php"><p color="red">Create an account</p> </a>

	
</div>
</div>
<?php

if(isset($_POST['sbt1']))
{  

$email=$_POST["email"];
$psd=$_POST["password"];

 $numlogsqle=mysqli_query($conn,"select * from login where email='$email' and password='$psd' " );
  $numlog=mysqli_num_rows($numlogsqle);
 if($numlog!=0)
     {
   $rowlog=mysqli_fetch_array($numlogsqle);  
  $email1=$rowlog['email'];
  $usertype=$rowlog['usertype'];
  $status=$rowlog['status'];

  $sql3=mysqli_query($conn,"select * from registration where email='$email1'");
  $row3=mysqli_fetch_array($sql3);
  $phone=$row3['phone'];
  $name=$row3['name'];
  $_SESSION["name"]=$name;
  $_SESSION["phone"]=$phone;

   $_SESSION["email"]=$email1;
   $_SESSION["usertype"]=$usertype;

   if(isset($_SESSION["email"]))
   {
  
  //echo "<script>alert('login Success');</script>";
 
    if($usertype=='admin')
    {	
    if($status==1)
    {
      echo "<script> location.href='admin/index.php'; </script>";
    }
    else{
      echo "<script>alert('Your Request is pending.');</script>";
    }


    }
    else if($usertype=='secratary')
    {	
   
      echo "<script> location.href='secratary/index.php'; </script>";
    }
  
    else if($usertype=='public')
    {	
    
      echo "<script> location.href='users/index.php'; </script>";
    }
    
    else if($usertype=='student')
    {	
    
      echo "<script> location.href='students/index.php'; </script>";
    }
   
    else{
      echo "<script>alert('Your Request is pending.');</script>";
    }

     }

   }

 else{
   echo "<script>alert('Invalid Username or Password');</script>";
   }


}

?>

<?php
include("footer.php");
?>