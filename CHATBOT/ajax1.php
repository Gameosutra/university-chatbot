<?php
$server="localhost";
$user="root";
$pass="";
$con=mysqli_connect($server,$user,$pass);
if($con){
	
}

$check=mysqli_select_db($con,"chat");
if(isset($_GET['id']))
    {
    $id=$_GET['id'];
	$q="SELECT * from teacher where ques='$id'";
	$ret=mysqli_query($con,$q);
        $out = mysqli_fetch_array($ret);
        //echo "<script>alert('$out');</script>"
       echo json_encode($out);
    }

?>




