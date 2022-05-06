<?php
//session_start();
// include("header.php");
include("dbconn.php");
$event_id=$_GET['event_id'];
?>
 <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.21/css/jquery.dataTables.css">
<script src="js/jquery-1.11.1.min.js"></script>
<script src="js/modernizr.custom.js"></script>
<script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.21/js/jquery.dataTables.js"></script>
<script type="text/javascript">
    $(document)
  .ready(function () {
    $('#table_id')
      .DataTable();
  });
</script>
<script type="text/javascript">
 $(document).ready(function() {
    $('#example').DataTable( {
        "order": [[ 3, "desc" ]]
    } );
} );
</script>
<div class="container">
	<table id="table_id" class="display">
		<h1 class="text-center">Event Participants</h1>
    <thead>
        <tr>
       <th>Name</th>
       <th>Contacts</th>
     
        </tr>
    </thead>
    <tbody>
         <?php
           // $email=$_SESSION["email"];
            $sql="select * from events a,registration b,event_list c where a.event_id=$event_id and c.event_id=$event_id and b.email=c.email";
            $res=mysqli_query($conn,$sql);
            if(mysqli_num_rows($res)>0){
                while($r=mysqli_fetch_assoc($res)){
                  ?>
                 <tr>
                    <td><?php echo $r['name']?></td>
                    <td>
                        Phone:<?php echo $r['phone']?><br>
                       Email: <?php echo $r['email']?>
                            
                        </td>
                 </tr>
              <?php
    }}
    else{
      ?>
      <tr>
        <td>No Active Events</td>
    </tr><?php
    }?>
</tbody>
</table>
</div>
<script type="text/javascript">
      function updatestatus(id){
    console.log(id)
    $.ajax({
        url:"moneydonationstatus.php",
        method:"POST",
        data:{
            money_donation_id:id
        },
        success:function(data){
            location.reload();
            console.log(data)
            $('#'+id).html(data);
        }
    })
    location.reload();
  }
</script>
