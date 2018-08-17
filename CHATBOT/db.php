<?PHP
	$nameError ="";
$passerror ="";
$doberror ="";

echo "string";


if (empty($_POST["username"])) {
$nameError = "Username is required";
echo $nameError;
} else {
$username = test_input($_POST["name"]);
// check name only contains letters and whitespace
if (!preg_match("/^[0-9]*$/",$username)) {
$nameError = "Only Numbers Allowed";
echo $nameError;
}

}
if (empty($_POST["password"])) {
$passerror = "Password is required";
echo $passerror;
} 

if (empty($_POST["DOB"])) {
$doberror = "DOB is required";
echo $doberror;
}
 else {
$DOB = test_input($_POST["DOB"]);
}

function test_input($data) {
$data = trim($data);
$data = stripslashes($data);
$data = htmlspecialchars($data);
return $data;
}

?>