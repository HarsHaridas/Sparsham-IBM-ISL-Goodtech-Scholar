<script>
    history.pushState(null, null, null);
    window.addEventListener('popstate', function () {
        history.pushState(null, null, null);
    });
    history.replaceState(null, null, null);
    window.addEventListener('popstate', function () {
        history.replaceState(null, null, null);
    });
</script>

<script type = "text/javascript" >  
    function preventBack() { window.history.forward(); }  
    setTimeout("preventBack()", 0);  
    window.onunload = function () { null };  
</script>

<?php   
session_start(); //to ensure you are using same session
session_destroy(); //destroy the session
header("location:login.php"); //to redirect back to "index.php" after logging out
exit();
?>