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



$get_name= ($data->name);
$get_email = ($data->email);
$get_password = ($data->password);
$get_phone = ($data->mobile);


// get customer email from admin_login
$result = mysqli_query($conn,"INSERT INTO user_reg( name, email, password,  mobile) VALUES
( '$get_name', '$get_email', '$get_password', '$get_phone')");

// check for empty result
if($result)
{
	// success
	$response["success"] = 1;
	
	// echoing JSON response
	echo json_encode($response);
}
else 
{
	// unsuccess
	$response["reg filed"] = 0;
	
	// echoing JSON response
	echo json_encode($response);
}	
?>