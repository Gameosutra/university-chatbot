<?php

$server="localhost";
$user="root";
$pass="";
$con=mysqli_connect($server,$user,$pass);
if($con){
	
}

$check=mysqli_select_db($con,"chat");
if($check){
	
}
if($_SERVER["REQUEST_METHOD"]=="POST")
{
	$que=$_POST["ques"];
	$and=$_POST["and"];
	$pic1=$_POST["pic"];
	$mode1=$_POST["insert"];
	$picad1=$_POST["picadd"];
	$key=test_input($que);
	$ans=test_input($and);
	$pic=test_input($pic1);
	$mode=test_input($mode1);
	$picaddd=test_input($picad1);
}

function test_input($str){
	$str=trim($str);
	$str=stripslashes($str);
	$str=htmlspecialchars($str);
	return $str;
}

// $qry1=mysqli_query($con,"create procedure upfac(out ans VARCHAR(800)) UPDATE student SET ans='$ans',pic='$pic' WHERE ques='$key' ");
// mysqli_query($con,$qry1);

if($mode==="insert")
{


$sql="INSERT INTO student VALUES('$key','$ans','$pic','$picaddd')";
$check=mysqli_query($con,$sql);
if($check)
{
		echo "<script>";
		 echo "alert('INSERTION SUCCESSFULL');";
		 echo "window.location.href = 'admin.html'";
		 echo "</script>";
}

}



if($mode==="delete")
{
	$qry="DELETE FROM student WHERE ques='$key'";
	
	
$check=mysqli_query($con,$qry);
if($check)
{
		echo "<script>";
		 echo "alert('DELETION SUCCESSFULL');";
		 echo "window.location.href = 'admin.html'";
		 echo "</script>";
}
else{
	echo mysqli_error($con);
}
}
if($mode==="update")
{
$sql="UPDATE student SET ans='$ans',pic='$pic',picadd='$picaddd' WHERE ques='$key'";
$check=mysqli_query($con,$sql);
if($check)
{
		echo "<script>";
		 echo "alert('UPDATE SUCCESSFULL');";
		 echo "window.location.href = 'admin.html'";
		 echo "</script>";
}
else{
	echo mysqli_error($con);
}


}
if($mode==="database")
{
	$result = mysqli_query($con,"SELECT * FROM student");
	echo "<table border='1'>
<tr>
<th>Questions</th>
<th>Answer</th>
</tr>";

while($row = mysqli_fetch_array($result))
{
echo "<tr>";
echo "<td>" . $row['ques'] . "</td>";
echo "<td>" . $row['ans'] . "</td>";
echo "</tr>";
}
echo "</table>";

mysqli_close($con);
}
?>