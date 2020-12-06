<!DOCTYPE>
<html>
<head>
</head>
<body>
<?php
$q = $_POST['users'];
$input1 = $_POST['inp1'];
$input2 = $_POST['inp2'];
$input3 = $_POST['inp3'];
$input4 = $_POST['inp4'];
$input5 = $_POST['inp5'];
$input6 = $_POST['inp6'];
$input7 = $_POST['inp7'];
$input8 = $_POST['inp8'];
$input9 = $_POST['inp9'];
$input10 = $_POST['inp10'];
$input11 = $_POST['inp11'];
$input12 = $_POST['inp12'];
$input13 = $_POST['inp13'];
$input14 = $_POST['inp14'];

$con = mysqli_connect('localhost','root','','sample_db');
    if (!$con) {
        die('Could not connect: ' . mysqli_error($con));
    }
if(isset($_POST['add'])){	
$sqlr='';
switch($q){
	case 2: $sqlr = "INSERT INTO airplane VALUES('$input1','$input2','$input3','$input4','$input5','$input6','$input7','$input8')";break;
	case 3: $sqlr = "INSERT INTO airport VALUES('$input1','$input2','$input3','$input4','$input5','$input6','$input7')";break;
	case 4: $sqlr = "INSERT INTO baggage VALUES('$input1','$input2','$input3','$input4')";break;
	case 5: $sqlr = "INSERT INTO booking_agency VALUES('$input1','$input2','$input3','$input4','$input5')";break;
	case 6: $sqlr = "INSERT INTO client('$input1','$input2','$input3','$input4','$input5','$input6','$input7','$input8','$input9','$input10','$input11','$input12','$input13','$input14')";break;
	case 7: $sqlr = "INSERT INTO client_feedback VALUES('$input1','$input2','$input3','$input4','$input5','$input6','$input7')";break;
	case 8: $sqlr = "INSERT INTO department VALUES('$input1','$input2','$input3','$input4','$input5','$input6')";break;
	case 9: $sqlr = "INSERT INTO employee VALUES('$input1','$input2','$input3','$input4','$input5','$input6','$input7','$input8','$input9','$input10','$input11','$input12')";break;
	case 10: $sqlr = "INSERT INTO flight VALUES('$input1','$input2','$input3','$input4','$input5','$input6','$input7','$input8','$input9','$input10','$input11','$input12')";break;
	case 11: $sqlr = "INSERT INTO food VALUES('$input1','$input2','$input3','$input4','$input5')";break;
	case 12: $sqlr = "INSERT INTO location VALUES('$input1','$input2','$input3','$input4','$input5')";break;
	case 13: $sqlr = "INSERT INTO partner_offer VALUES('$input1','$input2','$input3','$input4','$input5')";break;
	case 14: $sqlr = "INSERT INTO reservation VALUES('$input1','$input2','$input3','$input4','$input5','$input6','$input7')";break;
	case 15: $sqlr = "INSERT INTO ticket VALUES('$input1','$input2','$input3','$input4','$input5','$input6','$input7')";break;
}
mysqli_query($con,$sqlr);
echo $input1," ",$input2," ",$input3," ",$input4," ",$input5," ",$input6," ",$input7," ",$input8," ",$input9," ",$input10," ",$input11," ",$input12," ",$input13," ",$input14;
mysqli_close($con);
}if(isset($_POST['update'])){	
switch($q){
	case 2: $sql = "UPDATE airplane SET model='$input3',capacity='$input4',weight='$input5',baggage_occupancy='$input6',manufacturers='$input7',aircraft_details='$input8' WHERE airplane_id='$input1'";break;
	case 3: $sql = "UPDATE airport SET phone_number='$input3',work_days='$input4',work_time='$input5',email='$input6',technical_days='$input7' WHERE airport_code='$input1'";break;
	case 4: $sql = "UPDATE baggage SET cost = '$input2',weight='$input3',baggage='$input4',work_time='$input5' WHERE baggage_id = '$input1'";break;
	case 5: $sql = "UPDATE booking_agency SET agency_name = '$input2',phone_number='$input3',email='$input4',description='$input5' WHERE agency_id = '$input1'";break;
	case 6: $sql = "UPDATE client SET first_name='$input4',last_name='$input5',fathers_name='$input6',phone_number='$input7',email='$input8',birth_date='$input9',sex='$input10',num_of_flights='$input11',citizen='$input12',covid_test='$input13',gov_id='$input14' WHERE client_id = '$input1'";break;
	case 7: $sql = "UPDATE client_feedback SET star_number='$input4',due_date='$input5',service_class = '$input6',description = '$input7' WHERE feedback_id = '$input1'";break;
	case 8: $sql = "UPDATE department SET dep_name='$input3',phone_number='$input4',email='$input5',dep_type'$input6' WHERE dep_id='$input1'";break;
	case 9: $sql = "UPDATE employee SET first_name='$input3',last_name = '$input4',fathers_name= '$input5',position='$input6',phone_number='$input7',salary='$input8',work_exprience='$input9',work_shedule='$input10', gov_id='$input11',email ='$input12' WHERE employee_id='$input1'";break;
	case 10: $sql ="UPDATE flight SET departure_date = '$input4',arrival_date = '$input5', departure_time = '$input6',arrival_time = '$input7', departure_place = '$input8',arrival_place='$input9',direction= '$input10',flight_points='$input11' WHERE flight_id = '$input1'";break;
	case 11: $sql ="UPDATE food SET food_name='$input2',date_purchase= '$input3',expiration_date='$input4',price='$input5' WHERE food_id = '$input1'";break;
	case 12: $sql ="UPDATE location SET country = '$input2',city = '$input3', address = '$input4',zip_code = '$input5' WHERE location_id = '$input1'";break;
	case 13: $sql ="UPDATE partner_offer SET discount = '$input2', accumulated_points = '$input3', validity = '$input4',offer_name = '$input5' WHERE card_id = '$input1'";break;
	case 14: $sql ="UPDATE reservation SET seat = '$input6', section = '$input7' WHERE reservation_id = '$input1'";break;
	case 15: $sql ="UPDATE ticket SET ticket_numbe = '$input3',ticked_issued_moment= '$input4',ticket_refindability= '$input5',ticket_type='$input6',cost='$input7' WHERE ticket_id = '$input1'";break;
}
echo $sql;
mysqli_query($con,$sql);
mysqli_close($con);
}
if(isset($_POST['delete'])){
	$sqli='';
	switch($q){
		case 2: $sqli = "DELETE FROM airplane WHERE airplane_id='$input1'";break;
		case 3: $sqli = "DELETE FROM airport WHERE airport_code='$input1'";break;
		case 4: $sqli = "DELETE FROM baggage WHERE baggage_id='$input1'";break;
		case 5: $sqli = "DELETE FROM booking_agency WHERE agency_id='$input1'";break;
		case 6: $sqli = "DELETE FROM client WHERE client_id='$input1'";break;
		case 7: $sqli = "DELETE FROM client_feedback WHERE feedback_id='$input1'";break;
		case 8: $sqli = "DELETE FROM department WHERE dep_id='$input1'";break;
		case 9: $sqli = "DELETE FROM employee WHERE employee_id='$input1'";break;
		case 10: $sqli = "DELETE FROM flight WHERE flight_id='$input1'";break;
		case 11: $sqli = "DELETE FROM food WHERE food_id='$input1'";break;
		case 12: $sqli = "DELETE FROM location WHERE location_id='$input1'";break;
		case 13: $sqli = "DELETE FROM partner_offer WHERE card_id='$input1'";break;
		case 14: $sqli = "DELETE FROM reservation WHERE reservation_id='$input1'";break;
		case 15: $sqli = "DELETE FROM ticket WHERE ticket_id='$input1'";break;
	}
	echo $sqli;
	mysqli_query($con,$sqli);
	mysqli_close($con);
}
header("location:admin.html");

?>
</body>
</html>