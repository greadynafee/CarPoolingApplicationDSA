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
$get_recive_email= ($data->recive_email);
$get_name= ($data->name);
$get_address= ($data->address);
$get_date = ($data->day);
$get_seat = ($data->seat);
$get_mobile = ($data->mobile);
$get_catagory = ($data->catagory);
$get_accno = ($data->accno);
$get_amount = ($data->amount);




/*
$get_email= "test";
$get_recive_email= "test";
$get_name= "test";
$get_address= "test";
$get_date ="test";
$get_seat = "5";
$get_mobile = "433434";
$get_catagory ="test" ;
$get_accno ="test" ;
$get_amount ="test" ;
*/

// get customer email from admin_login
$result = mysqli_query($conn,"INSERT INTO user_post_trip( email,receive_email, name, address, date,  free_seat, mobile,
						catagory,accno,amount)
			VALUES('$get_email','$get_recive_email','$get_name', '$get_address', '$get_date', '$get_seat', '$get_mobile', '$get_catagory','$get_accno','$get_amount')");

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