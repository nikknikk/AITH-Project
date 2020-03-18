<?php

$servername = 'localhost';
$username = 'nicoleel_aithuser';
$password = 'thisp4$$w0rd';
$dbname = 'nicoleel_aith';
$users_interest = $_POST['interest'];
$users_fname = $_POST['fname'];
$users_lname = $_POST['lname'];
$users_genderid = $_POST['genderid'];
$users_age = $_POST['age'];
$users_email = $_POST['email'];
$users_which_event = $_POST['which_event'];
$users_emergency_contact = $_POST['emergency_contact'];
$users_emergency_contact_phone = $_POST['emergency_contact_phone'];
$users_accommodations = $_POST['accommodations'];

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$sql ="
  INSERT INTO nicoleel_aith.registration(interest, fname, lname, genderid, age, email, which_event, emergency_contact, emergency_contact_phone, accommodations) VALUES ('$users_interest','$users_fname', '$users_lname', '$users_genderid','$users_age', '$users_email', '$users_which_event', '$users_emergency_contact', '$users_emergency_contact_phone', '$users_accommodations');";


if ($conn->query($sql) === TRUE) {
    echo "New record created successfully";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

$conn->close();

?>

