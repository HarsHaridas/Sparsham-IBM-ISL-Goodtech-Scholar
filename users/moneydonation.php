<?php
session_start();
include("header.php")
?>
<div class="container">
	<h1 class="">Money Donation Request</h1>
	<form method="POST" action="moneydonationreq.php">
		<div class="col-md-4">
			<label>Name of purpose</label>
			<input type="text" name="donation_name" class="form-control" required="">
		</div>
		<div class="clearfix"></div>
		<div class="col-md-4">
			<label>Request Amount</label>
			<input type="number" name="requested_amount" class="form-control" required="">
		</div>
		<div class="clearfix"></div>
		<div class="col-md-4">
			<label>Small Description</label>
			<input type="text" name="description" class="form-control" required="" style="height: 50px;">
		</div>
		<div class="clearfix"></div>
		<div class="col-md-4 text-center">
			
			<button type="submit" class="btn btn-primary">Send Request</button>
		</div>
	</form>
</div>
<div class="clearfix"></div>
<?php
include("footer.php");
?>