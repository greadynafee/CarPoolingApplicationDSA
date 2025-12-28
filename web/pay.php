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
$get_receive_email	= ($data->receive_email	);
$get_name= ($data->name);
$get_address= ($data->address);
$get_seat= ($data->seat);
$get_mobile=($data->mobile);
$get_category=($data->category);
$get_account_no= ($data->account);
$get_amount =($data->amount);

// get customer email from admin_login
$result = mysqli_query($conn,"INSERT INTO user_post_trip
			(email, receive_email,name, address, free_seat, mobile, category, accno, amount) VALUES
				('$get_email','$get_receive_email','$get_name','$get_address','$get_seat','$get_mobile','$get_category', '$get_account_no', '$get_amount')");

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