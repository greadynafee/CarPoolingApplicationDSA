<?php 
/*********************

**********************/

/* Following code will match user login credentials */

// array for JSON response
$response = array();

// include db connect class
require_once __DIR__ . '/db_connect.php';

// connecting to db


$data = json_decode(file_get_contents("php://input"));
/*
$get_rollno ="6";
$get_password = "gugh";
*/

//$get_id = ($data->Id);
$get_email = ($data->Email);
$get_password = ($data->Password);

// get customer email from admin_login
$result = mysqli_query($conn,"SELECT * FROM user_reg WHERE email = '$get_email' AND password = '$get_password'");

// check for empty result
if(mysqli_num_rows($result))
{
	// success
	$response["success"] = 1;
	
	// echoing JSON response
	echo json_encode($response);
}
else 
{
	// unsuccess
	$response["success"] = 0;
	
	// echoing JSON response
	echo json_encode($response);
}	
?>