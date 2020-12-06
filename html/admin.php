<!DOCTYPE html>
    <html>
    <head>
    <style>
    table {
        width: 100%;
		height:50%;
        border-collapse: collapse;
    }

    table, td, th {
        border: 1px solid black;
        padding: 5px;
    }

    th {text-align: left;}
    </style>
    </head>
    <body>

    <?php
// don't use intval if your select value is not numberic
    $q = $_GET['q'];

    $con = mysqli_connect('localhost','root','','sample_db');
    if (!$con) {
        die('Could not connect: ' . mysqli_error($con));
    }

    mysqli_select_db($con,"ajax_demo");
   
	switch($q){
		case 2:$sql = "SELECT * FROM airplane"; break;
		case 3:$sql = "SELECT * FROM airport"; break;
		case 4:$sql = "SELECT * FROM baggage"; break;
		case 5:$sql = "SELECT * FROM booking_agency"; break;
		case 6:$sql = "SELECT * FROM client"; break;
		case 7:$sql = "SELECT * FROM client_feedback"; break;
		case 8:$sql = "SELECT * FROM department"; break;
		case 9:$sql = "SELECT * FROM employee"; break;
		case 10:$sql = "SELECT * FROM flight"; break;
		case 11:$sql = "SELECT * FROM food"; break;
		case 12:$sql = "SELECT * FROM location"; break;
		case 13:$sql = "SELECT * FROM partner_offer"; break;
		case 14:$sql = "SELECT * FROM reservation"; break;
		case 15:$sql = "SELECT * FROM ticket"; break;
	}
	
    $result = mysqli_query($con,$sql);
	if($q==2){
		echo"<table>
		<tr>
		<th>airplane id</th>
		<th>airport_code</th>
		<th>model</th>
		<th>capacity</th>
		<th>weight</th>
		<th>baggage occupancy</th>
		<th>manufacturers</th>
		<th>aircraft details</th>
		</tr>
		";
		while($row = mysqli_fetch_array($result)){
			echo "<tr>";
			echo "<td>" . $row['airplane_id'] . "</td>";
			echo "<td>" . $row['aiport_code'] . "</td>";
			echo "<td>" . $row['model'] . "</td>"; 			
			echo "<td>" . $row['capacity'] . "</td>"; 
			echo "<td>" . $row['weight'] . "</td>";
			echo "<td>" . $row['baggage_occupancy'] . "</td>";
			echo "<td>" . $row['manufacturers'] . "</td>";
			echo "<td>" . $row['aircraft_details'] . "</td>";  			
			echo "</tr>";
		}
		echo"</table>";
	}else if($q==3){
		echo"<table>
		<tr>
		<th>airport code</th>
		<th>location id</th>
		<th>phone number</th>
		<th>work_day</th>
		<th>work time</th>
		<th>email</th>
		<th>technical days</th>
		</tr>
		";
		while($rows = mysqli_fetch_array($result)){
			echo "<tr>";
			echo "<td>" . $rows['airport_code'] . "</td>";
			echo "<td>" . $rows['location_id'] . "</td>";
			echo "<td>" . $rows['phone_number'] . "</td>"; 			
			echo "<td>" . $rows['work_days'] . "</td>"; 
			echo "<td>" . $rows['work_time'] . "</td>";
			echo "<td>" . $rows['email'] . "</td>";
			echo "<td>" . $rows['technical_days'] . "</td>";			
			echo "</tr>";
		}
		echo"</table>";
	}else if ($q==4){
		echo"<table>
		<tr>
		<th>baggage id</th>
		<th>cost</th>
		<th>weight</th>
		<th>baggage</th>
		</tr>
		";
		while($rows = mysqli_fetch_array($result)){
			echo "<tr>";
			echo "<td>" . $rows['baggage_id'] . "</td>";
			echo "<td>" . $rows['cost'] . "</td>";
			echo "<td>" . $rows['weight'] . "</td>"; 			
			echo "<td>" . $rows['baggage'] . "</td>"; 			
			echo "</tr>";
		}
		echo"</table>";
	}else if ($q==5){
		echo"<table>
		<tr>
		<th>agency id</th>
		<th>agency name</th>
		<th>phone number</th>
		<th>email</th>
		<th>description</th>
		</tr>
		";
		while($rows = mysqli_fetch_array($result)){
			echo "<tr>";
			echo "<td>" . $rows['agency_id'] . "</td>";
			echo "<td>" . $rows['agency_name'] . "</td>";
			echo "<td>" . $rows['phone_number'] . "</td>"; 			
			echo "<td>" . $rows['email'] . "</td>";
			echo "<td>" . $rows['description'] . "</td>";  			
			echo "</tr>";
		}
		echo"</table>";
	}else if ($q==6){
		echo"<table>
		<tr>
		<th>client id</th>
		<th>employee id</th>
		<th>card id</th>
		<th>first name</th>
		<th>last name</th>
		<th>fathers name</th>
		<th>phone number</th>
		<th>email</th>
		<th>birth_date</th>
		<th>sex</th>
		<th>num of flights</th>
		<th>citizen</th>
		<th>covid test</th>
		<th>gov id</th>
		</tr>
		";
		while($rows = mysqli_fetch_array($result)){
			echo "<tr>";
			echo "<td>" . $rows['client_id'] . "</td>";
			echo "<td>" . $rows['employee_id'] . "</td>";
			echo "<td>" . $rows['card_id'] . "</td>"; 			
			echo "<td>" . $rows['first_name'] . "</td>";
			echo "<td>" . $rows['last_name'] . "</td>";
			echo "<td>" . $rows['fathers_name'] . "</td>";
			echo "<td>" . $rows['phone_number'] . "</td>";
			echo "<td>" . $rows['email'] . "</td>"; 			
			echo "<td>" . $rows['birth_date'] . "</td>";
			echo "<td>" . $rows['sex'] . "</td>";
			echo "<td>" . $rows['num_of_flights'] . "</td>";   			
			echo "<td>" . $rows['citizen'] . "</td>";
			echo "<td>" . $rows['covid_test'] . "</td>";
			echo "<td>" . $rows['gov_id'] . "</td>";
			echo "</tr>";
		}
		echo"</table>";
	}else if ($q==7){
		echo"<table>
		<tr>
		<th>feedback id</th>
		<th>client id</th>
		<th>flight id</th>
		<th>star number</th>
		<th>due date</th>
		<th>service class</th>
		<th>description</th>
		</tr>
		";
		while($rows = mysqli_fetch_array($result)){
			echo "<tr>";
			echo "<td>" . $rows['feedback_id'] . "</td>";
			echo "<td>" . $rows['client_id'] . "</td>";
			echo "<td>" . $rows['flight_id'] . "</td>"; 			
			echo "<td>" . $rows['star_number'] . "</td>";
			echo "<td>" . $rows['due_date'] . "</td>";
			echo "<td>" . $rows['service_class'] . "</td>";
			echo "<td>" . $rows['description'] . "</td>";  			
			echo "</tr>";
		}
		echo"</table>";
	}else if ($q==8){
		echo"<table>
		<tr>
		<th>depertment id</th>
		<th>airport code</th>
		<th>department name</th>
		<th>phone number</th>
		<th>email</th>
		<th>department type</th>
		</tr>
		";
		while($rows = mysqli_fetch_array($result)){
			echo "<tr>";
			echo "<td>" . $rows['dep_id'] . "</td>";
			echo "<td>" . $rows['airport_code'] . "</td>";
			echo "<td>" . $rows['dep_name'] . "</td>"; 			
			echo "<td>" . $rows['phone_number'] . "</td>";
			echo "<td>" . $rows['email'] . "</td>";
			echo "<td>" . $rows['dep_type'] . "</td>";  			
			echo "</tr>";
		}
		echo"</table>";
	}else if ($q==9){
		echo"<table>
		<tr>
		<th>employee id</th>
		<th>department id</th>
		<th>first name</th>
		<th>last name</th>
		<th>fathers name</th>
		<th>position</th>
		<th>phone number</th>
		<th>salary</th>
		<th>work_exprience</th>
		<th>work schedule</th>
		<th>gov id</th>
		<th>email</th>
		</tr>
		";
		while($rows = mysqli_fetch_array($result)){
			echo "<tr>";
			echo "<td>" . $rows['employee_id'] . "</td>";
			echo "<td>" . $rows['dep_id'] . "</td>";
			echo "<td>" . $rows['first_name'] . "</td>"; 			
			echo "<td>" . $rows['last_name'] . "</td>";
			echo "<td>" . $rows['fathers_name'] . "</td>";
			echo "<td>" . $rows['position'] . "</td>"; 
			echo "<td>" . $rows['phone_number'] . "</td>";
			echo "<td>" . $rows['salary'] . "</td>"; 
			echo "<td>" . $rows['work_exprience'] . "</td>";  
			echo "<td>" . $rows['work_schedule'] . "</td>";  
			echo "<td>" . $rows['gov_id'] . "</td>"; 
			echo "<td>" . $rows['email'] . "</td>";  
			echo "</tr>";
		}
		echo"</table>";
	}else if ($q==10){
		echo"<table>
		<tr>
		<th>flight id</th>
		<th>reservation id</th>
		<th>airplane id</th>
		<th>departure date</th>
		<th>arrival date</th>
		<th>departure time</th>
		<th>arrival time</th>
		<th>departure place</th>
		<th>arrival place</th>
		<th>direction</th>
		<th>flights points</th>
		
		</tr>
		";
		while($rows = mysqli_fetch_array($result)){
			echo "<tr>";
			echo "<td>" . $rows['flight_id'] . "</td>";
			echo "<td>" . $rows['reservation_id'] . "</td>";
			echo "<td>" . $rows['airplane_id'] . "</td>"; 			
			echo "<td>" . $rows['departure_date'] . "</td>";
			echo "<td>" . $rows['arrival_date'] . "</td>";
			echo "<td>" . $rows['departure_time'] . "</td>"; 
			echo "<td>" . $rows['arrival_time'] . "</td>";
			echo "<td>" . $rows['departure_place'] . "</td>"; 
			echo "<td>" . $rows['arrival_place'] . "</td>";
			echo "<td>" . $rows['direction'] . "</td>";  
			echo "<td>" . $rows['flights_points'] . "</td>";  
			
			echo "</tr>";
		}
		echo"</table>";
	}else if ($q==11){
		echo"<table>
		<tr>
		<th>food id</th>
		<th>food name </th>
		<th>date purchase</th>
		<th>expiration date</th>
		<th>price</th>		
		</tr>
		";
		while($rows = mysqli_fetch_array($result)){
			echo "<tr>";
			echo "<td>" . $rows['food_id'] . "</td>";
			echo "<td>" . $rows['food_name'] . "</td>";
			echo "<td>" . $rows['date_purchase'] . "</td>"; 			
			echo "<td>" . $rows['expiration_date'] . "</td>";
			echo "<td>" . $rows['price'] . "</td>";	
			echo "</tr>";
		}
		echo"</table>";
	}else if ($q==12){
		echo"<table>
		<tr>
		<th>location id</th>
		<th>country </th>
		<th>city</th>
		<th>address</th>
		<th>zip_code</th>		
		</tr>
		";
		while($rows = mysqli_fetch_array($result)){
			echo "<tr>";
			echo "<td>" . $rows['location_id'] . "</td>";
			echo "<td>" . $rows['country'] . "</td>";
			echo "<td>" . $rows['city'] . "</td>"; 			
			echo "<td>" . $rows['address'] . "</td>";
			echo "<td>" . $rows['zip_code'] . "</td>";	
			echo "</tr>";
		}
		echo"</table>";
	}else if ($q==13){
		echo"<table>
		<tr>
		<th>card id</th>
		<th>discount</th>
		<th>accumulated_points</th>
		<th>validity</th>
		<th>offer_name</th>		
		</tr>
		";
		while($rows = mysqli_fetch_array($result)){
			echo "<tr>";
			echo "<td>" . $rows['card_id'] . "</td>";
			echo "<td>" . $rows['discount'] . "</td>";
			echo "<td>" . $rows['accumulated_points'] . "</td>"; 			
			echo "<td>" . $rows['validity'] . "</td>";
			echo "<td>" . $rows['offer_name'] . "</td>";	
			echo "</tr>";
		}
		echo"</table>";
	}else if ($q==14){
		echo"<table>
		<tr>
		<th>reservation id</th>
		<th>ticket id</th>
		<th>baggage id</th>
		<th>food id</th>
		<th>agency id</th>
		<th>seat</th>
		<th>section</th>
		</tr>
		";
		while($rows = mysqli_fetch_array($result)){
			echo "<tr>";
			echo "<td>" . $rows['reservation_id'] . "</td>";
			echo "<td>" . $rows['ticket_id'] . "</td>";
			echo "<td>" . $rows['baggage_id'] . "</td>"; 			
			echo "<td>" . $rows['food_id'] . "</td>";
			echo "<td>" . $rows['agency_id'] . "</td>";
			echo "<td>" . $rows['seat'] . "</td>"; 
			echo "<td>" . $rows['section'] . "</td>";
			echo "</tr>";
		}
		echo"</table>";
	}else if ($q==15){
		echo"<table>
		<tr>
		<th>ticket id</th>
		<th>client id</th>
		<th>ticket number</th>
		<th>ticket issued moment</th>
		<th>ticket refindability</th>
		<th>ticket type</th>
		<th>cost</th>
		</tr>
		";
		while($rows = mysqli_fetch_array($result)){
			echo "<tr>";
			echo "<td>" . $rows['ticket_id'] . "</td>";
			echo "<td>" . $rows['client_id'] . "</td>"; 			
			echo "<td>" . $rows['ticket_number'] . "</td>";
			echo "<td>" . $rows['ticked_issued_moment'] . "</td>";
			echo "<td>" . $rows['ticket_refindability'] . "</td>"; 
			echo "<td>" . $rows['ticket_type'] . "</td>";
			echo "<td>" . $rows['cost'] . "</td>";
			echo "</tr>";
		}
		echo"</table>";
	}
    mysqli_close($con);
	
    ?>
	
	
	
    </body>
    </html>