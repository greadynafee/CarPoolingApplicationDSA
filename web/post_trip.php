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
$get_from= ($data->from1);
$get_to= ($data->to1);
$get_date = ($data->day);
$get_vechicle = ($data->vechicle);
$get_seat = ($data->seat);
$get_mobile = ($data->mobile);
$get_rules = ($data->rules);
$get_price = ($data->price);
$get_offer = ($data->offer);
$get_accno = ($data->account);
$get_feed = ($data->feedback);


// get customer email from admin_login
$result = mysqli_query($conn,"INSERT INTO post_trip( email, name, from1, to1, date, vechicle, free_seat, mobile, rules, price ,offer_price ,accno ,feed_back)
			VALUES('$get_email','$get_name','$get_from', '$get_to', '$get_date', '$get_vechicle', '$get_seat', '$get_mobile','$get_rules',  '$get_price',  '$get_offer', '$get_accno', '$get_feed')");

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