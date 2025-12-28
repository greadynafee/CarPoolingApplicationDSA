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


$get_email= ($data->email);
$get_feedback= ($data->feedback);


/*
$get_name= "test1";
$get_email = "test1";
$get_password = "test1";
$get_phone = "3434839044";
*/
// get customer email from admin_login
$result = mysqli_query($conn,"INSERT INTO feed_back( email,feed_back) VALUES
									     ('$get_email','$get_feedback')");

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