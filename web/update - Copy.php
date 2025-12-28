<?php
/***************************
****  ***
****************************/

/* Following register will admin login credentials */

// array for JSON response
$response = array();

// include db connect class
require_once __DIR__ . '/db_connect.php';

// connecting to db


$data = json_decode(file_get_contents("php://input"));
$get_id = ($data->id);
$get_name = ($data->name);
$get_from1 = ($data->from1);
$get_to1 = ($data->to1);
$get_price = ($data->price);
$get_offer_price = ($data->offer_price);
$get_date = ($data->day);
$get_vechicle = ($data->vechicle);
$get_free_seat= ($data->free_seat);
$get_mobile= ($data->mobile);
$get_email= ($data->email);
$get_accno= ($data->accno);
$get_rules= ($data->rules);




// Not working
/*	,slipnum'=$get_slipno'		*/	
	// get customer 
	$result1 = mysqli_query($conn,"UPDATE post_trip SET
		name='$get_name', from1='$get_from1', to1='$get_to1',
		price='$get_price',offer_price='$get_offer_price',date='$get_date',vechicle='$get_vechicle',
		free_seat='$get_free_seat',mobile='$get_mobile',email='$get_email',accno='$get_accno',rules='$get_rules' WHERE id = '$get_id'");

	// check for empty result
	if($result1)
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