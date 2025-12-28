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
$get_name= ($data->name);
$get_address= ($data->address);
$get_date = ($data->day);
$get_seat = ($data->seat);
$get_mobile = ($data->mobile);
$get_category = ($data->category);
/*
$get_email= 'tes';
$get_name= 'tes';
$get_address= 'tes';
$get_date = 'tes';
$get_seat = '1';
$get_mobile = '1';
$get_category ='tes';
*/

// get customer email from admin_login
$result = mysqli_query($conn,"INSERT INTO user_post_trip( email, name, address, date, free_seat, mobile, category)
			VALUES('$get_email','$get_name', '$get_address', '$get_date', '$get_seat',
			'$get_mobile',  '$get_category')");

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
	$response["success"] = 0;
	
	// echoing JSON response
	echo json_encode($response);
}	
?>