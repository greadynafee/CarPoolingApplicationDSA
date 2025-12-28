var app = angular.module("mylms", ['ngCookies']);
app.controller("myLMSCtrl", function($scope, $cookies, $cookieStore, $http) 
{
	$scope.login_index = function() 
	{
		window.location="index.html";
		return;
	}
	
	$scope.register_index = function() 
	{
		window.location="reg.html";
		return;
	}
	
	/*************************user login *****************************/
	$scope.login = function() 
	{
		$http.post('user_login.php',{'Email':$scope.log_email, 'Password':$scope.log_pass})	
		.success(function(data, status, headers, config)
		{
			if(data.success == 1)
			{
				alert("Login Successful");
				$cookieStore.put("cookie_user_email",$scope.log_email);
				window.location = "post_trip.html";
				return;
			}
			else
			{
				alert("login unsuccessful");
			}
		});
	}
		$scope.cookie_user_email = $cookieStore.get("cookie_user_email");


	/************************* user register *****************************/
	$scope.register = function() 
	{
		$http.post('user_reg.php',{ 'name':$scope.reg_name, 'email':$scope.reg_email, 
		'password':$scope.reg_pass,  'mobile':$scope.reg_mobile})	
		.success(function(data, status, headers, config)
		{
			if(data.success == 1) 
			{
				alert("Registration Successful");
				window.location = "user_login.html";
				return;
			}
			else
			{
				alert("registration unsuccessful");
			}
		});
	}
	
	
	
	
	
	/************************* post trip *****************************/
	$scope.postreg = function() 
	{
		$http.post('post_trip.php',{'name':$scope.reg_name,'from1':$scope.reg_from, 'to1':$scope.reg_to, 'day':$scope.reg_date, 'vechicle':$scope.reg_vechicle,  'seat':$scope.reg_seat, 'mobile':$scope.reg_mobile, 'rules':$scope.reg_rules,'price':$scope.reg_price,  'offer':$scope.reg_offer, 'account':$scope.reg_account, 'feedback':$scope.reg_feed, 'email': $scope.cookie_user_email})	
		.success(function(data, status, headers, config)
		{
			if(data.success == 1)
			{
				alert("Created Successful");
				window.location = "view_trip.html";
				return;
			}
			else
			{
				alert("post unsuccessful");
			}
		});
	}
	 //**********************************************************************// 
		/*************************customer login *****************************/
	$scope.cust_login = function() 
	{
		$http.post('cust_login.php',{'Email':$scope.log_email, 'Password':$scope.log_pass})	
		.success(function(data, status, headers, config)
		{
			if(data.success == 1)
			{
				alert("Welcome");
				$cookieStore.put("cook_sender_email",$scope.log_email);
				window.location = "view_trip.html";
				return;
			}
			else
			{
				alert("login unsuccessful");
			}
		});
	}
		$scope.cook_sender_email = $cookieStore.get("cook_sender_email");

	/************************* customer register *****************************/
	$scope.cust_register = function() 
	{
		$http.post('cust_reg.php',{ 'name':$scope.reg_name, 'email':$scope.reg_email, 
		'password':$scope.reg_pass,  'mobile':$scope.reg_mobile})	
		.success(function(data, status, headers, config)
		{
			if(data.success == 1) 
			{
				alert("registration successful");
				window.location = "cust_login.html";
				return;
			}
			else
			{
				alert("registration unsuccessful");
			}
		});
	}
	
	
		
	/************************* customer post trip ****************************
	$scope.cust_postreg = function() 
	{
		$http.post('booked_trip.php',{'name':$scope.reg_name, 'address':$scope.reg_address, 'day':$scope.reg_date,
		 'seat':$scope.reg_seat, 'mobile':$scope.reg_mobile,'category':$scope.reg_category,  'email': $scope.cookie_cust_email})	
		.success(function(data, status, headers, config)
		{
			if(data.success == 1)
			{
				alert("post successful");
				window.location = "view_trip.html";
				return;
			}
			else
			{
				alert("post unsuccessful");
			}
		});
	}
	*/
		/************************* view customer details *****************************/
	
	$scope.booking_dtls = function(email) 
			{
				$cookieStore.put("cookie_user_email",email);
				window.location = "payment_dtl.html";
				return;
			}
		$scope.cookie_user_email = $cookieStore.get("cookie_user_email");

		
	
		
	/************************* customer post view ****************************/
	
		

		$http.post('cust_trip_get.php',{'email':$scope.cookie_user_email})
		.success(function(data, status, headers, config) 
		{
			if(data.success == 1)
			{
				$scope.my_post_trip_details = data.details;
			}
			else
			{
				$scope.my_post_trip_details = "No Address Found !!!";
			}
		});

		
	
		/**************************************** pay *****************************************/
	$scope.payment = function() 
	{
		$http.post('pay.php',{'name':$scope.reg_name,'address':$scope.reg_address,'seat':$scope.reg_seat,'mobile':$scope.reg_mobile,'category':$scope.reg_category,'account':$scope.reg_account, 'amount':$scope.reg_amount,'account':$scope.cook_accno, 'receive_email': $scope.cook_sender_email,'email': $scope.cookie_user_email})	
		.success(function(data, status, headers, config)
		{
			if(data.success == 1)
			{
				alert("Booked Successful");
				window.location = "payment_dtl.html";
				return;
			}
			else
			{
				alert("post unsuccessful");
			}
		});
	}
	
	//************************** payment Details ***********************************/
	
	$scope.cookie_user_email = $cookieStore.get("cookie_user_email");

	$http.post('pay_get.php', {'email': $scope.cookie_user_email,})
	.success(function(data, status, headers, config) 
	{
		if(data.success == 1)
		{
			$scope.pay_details = data.details;
		}
		else
		{
			$scope.pay_details = "No Address Found !!!";
		}
    });
	//**************************credit payment ***********************************/

	$http.post('credit_pay_get.php', {'email': $scope.cookie_user_email,})
	.success(function(data, status, headers, config) 
	{
		if(data.success == 1)
		{
			$scope.credit_details = data.details;
		}
		else
		{
			$scope.credit_details = "No Address Found !!!";
		}
    });
	
	
	//************************** feed Details ***********************************/
	$http.post('feed_get.php', {'email': $scope.cookie_user_email})
	.success(function(data, status, headers, config)  												
	{
		if(data.success == 1)
		{
			$scope.feed_details = data.details;
		}
		else
		{
			$scope.feed_details = "No Address Found !!!";
		}
    });
	
	
	
	/************************* Book Now ****************************/
		$scope.user_book_now = function(email,accno) 
			{
				window.location = "pay.html";
				$cookieStore.put("cook_sender_email",email);
				$cookieStore.put("cook_accno",accno);
				return;
			}
		$scope.cook_accno = $cookieStore.get("cook_accno");
		$scope.cook_sender_email = $cookieStore.get("cook_sender_email");
	
		/************************* trip *****************************/
		$scope.viewtp = function(id) 
			{
				$cookieStore.put("cook_trip_id",id);
				window.location = "more_info.html";
				return;
			}
		$scope.cook_trip_id = $cookieStore.get("cook_trip_id");
		
		
	//************************** trip info ***********************************/

	$http.post('trip_info.php', {'id': $scope.cook_trip_id})
	.success(function(data, status, headers, config) 
	{
		if(data.success == 1)
		{
			$scope.trip_info = data.details;
		}
		else
		{
			$scope.trip_info = "No Address Found !!!";
		}
    });

	
	/************************* feedback *****************************/

	$scope.feedback = function(id) 
	{
		$scope.id = id;
  	    window.location = "feedback.html";
		return;
	}
	
	/************************* post feedback *****************************/
	$scope.feed_register = function() 
	{
		$http.post('feedback.php',{'feedback':$scope.reg_feedback, 'email': $scope.cookie_user_email})	
		.success(function(data, status, headers, config)
		{
			if(data.success == 1)
			{
				alert("post successful");
				window.location = "feed_get.html";
				return;
			}
			else
			{
				alert("post unsuccessful");
			}
		});
	}
	

	//************************** My post trip  ***********************************/

	$http.post('my_post_trip.php', {'email': $scope.cookie_user_email})
	.success(function(data, status, headers, config) 
	{
		if(data.success == 1)
		{
			$scope.my_post_details = data.details;
		}
		else
		{
			$scope.my_post_details = "No Address Found !!!";
		}
    });

	$http.post('trip_get.php')
		.success(function(data, status, headers, config) 
		{
			if(data.success == 1)
			{
				$scope.trip_details = data.details;
			}
			else
			{
				$scope.trip_details = "No Address Found !!!";
			}
		});
	
	
	

	/*****************************************************************************/
	/************************** Update info    **********************************/
	/****************************************************************************/
	$scope.edit_info = function(id, free_seat) 
	{
		$cookieStore.put("cook_id",id);
		$cookieStore.put("cook_free_seat",free_seat);
		window.location = "edit_post.html";
		return;
	}
	
	$scope.cook_id = $cookieStore.get("cook_id");
	$scope.cook_free_seat = $cookieStore.get("cook_free_seat");
	
		 
	/*****************************************************************************/
	/************************** 	Update     *********************************/
	/****************************************************************************/
	$scope.cook_trip_id = $cookieStore.get("cook_trip_id");
	$scope.save_seats = function(cook_id,cook_free_seat) 
	{
	$http.post('update.php', {
			'id': $scope.cook_id, 'free_seat': $scope.cook_free_seat})
	.success(function(data, status, headers, config) 
	{
		if(data.success == 1)
		{
			alert("Updated Successfully");					
			window.location = "mytrip.html"; //create_associate	
			
					
			return;
		}
				else if(data.success == 2)
				{
					alert("Adding Unsuccessful");
				}
				else
				{
					alert("Fill All Fields");						
				}
								
    });
	}

	 /************************** Delete  *********************************/
	/****************************************************************************/
	// info_delete
	$scope.delete_post = function(id) 
	{		
        $http.post('delete.php', 
		{
		'id':id
		})
		.success(function(data, status, headers, config) 
		{
			if(data.success == 1)
			{
				alert("Deleted Successful");
				window.location = "mytrip.html";
				return;
			}
			else if(data.success == 0)
			{
				alert("Error While Deleting !!");
			}
			else
			{
				alert("No id found");
			}
        });
    }

	
	/************************* logout *****************************/
	$scope.logout = function() 
	{
		if(confirm("Are You Sure?"))
		{
			$cookies.cookie_user_email = "";
			window.location = "index.html";
			return;
		}
		else
		{
			return false;
		}
	}

	
});