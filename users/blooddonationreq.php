<?php
session_start();
include("dbconn.php");
$email=$_SESSION["email"];
$blood_group=$_POST["blood_group"];
$no_of_bottles=round($_POST["no_of_bottles"]*.1)+$_POST["no_of_bottles"];
$description=$_POST["description"];
$sql="insert into blood_donation(email,no_of_bottle,no_of_donation,blood_group,description)values('$email',$no_of_bottles,0,'$blood_group','$description')";
if(mysqli_query($conn,$sql)){
	?>
     <script type="text/javascript">
     	alert("Request send to secretary,please wait for confirmation");
     	window.location.replace('index.php')
     </script>
	<?php
}
else
echo mysqli_error($conn);


?>