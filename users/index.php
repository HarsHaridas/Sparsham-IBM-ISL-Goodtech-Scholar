<?php
session_start();
$email=$_SESSION["email"];
include("header.php");
include("dbconn.php");

?>
<?php
$sql="select status from login where email='$email'";
$r=mysqli_fetch_assoc(mysqli_query($conn,$sql));
if($r['status']==1){


?>
<div class="container">
	<h1 class="text-center">Send Donation Request</h1>
	<div class="col-md-4">
		<a href="blooddonation.php">
		<div class="card">
            <img src="../images/blood donation.jpg" width="360" height="240">
			<div class="card-title text-center"><h3>Blood Donation</h3></div>
        </div>
      </a>
    </div>
	<div class="col-md-4">
		<a href="fooddonation.php">
			<div class="card">
				<img src="../images/Food donation.jpg" width="360" height="240">
				<div class="card-title text-center"><h3>Food Donation</h3></div>
			</div>
		</a>
    </div>
	<div class="col-md-4">
	<a href="moneydonation.php">
		<div class="card">
			<img src="../images/money donation.jpg" width="360" height="240">
			<div class="card-title text-center"><h3>Money Donation</h3></div>
		</div>
	</a>
    </div>
	<div class="col-md-4">
	<a href="inventorydonation.php">
		<div class="card">
			<img src="../images/wheel.png" width="360" height="240">
			<div class="card-title text-center"><h3>Inventory Donation</h3></div>
		</div>
	</a>
    </div>
	<div class="clearfix">    </div>
	<div class="col-md-4">
	<a href="activeinventorydonation.php">
		<div class="card">
			<div class="card-title text-center"><h3>Active Inventory Donation</h3></div>
		</div>
	</a>
    </div>
</div>


<?php
}
else{
?>
<h3 class="text-center">You are not verified.Please complete your verification

<a href="verification.php">Click Here for Verification</a></h3>


<?php
}
?>
<div class="container">
<h3 class="text-center">We are accepting Donations</h3>
<p>
	<!-- Description -->
</p>
<h3>Account number: 7020938427384 </h3>
<h3>IFSC Code: SBIN0008597</h3>
<h3>Bank Name: State Bank of India </h3>

</div>
<?php
include("footer.php");
?>