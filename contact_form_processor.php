<?php

$servername = 'localhost';
$username = 'nicoleel_aithuser';
$password = 'thisp4$$w0rd';
$dbname = 'nicoleel_aith';
$users_interest = $_POST['interest'];
$users_fname = $_POST['fname'];
$users_lname = $_POST['lname'];
$users_genderid = $_POST['genderid'];
$users_email = $_POST['email'];
$users_question_comment = $_POST['question_comment'];

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$sql =
 "INSERT INTO nicoleel_aith.contact( interest, fname, lname, genderid, email, question_comment ) VALUES ('$users_interest', '$users_fname', '$users_lname',
        '$users_genderid', '$users_email', '$users_question_comment');";


if ($conn->query($sql) === TRUE) {
    echo "New record created successfully";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

$conn->close();

?>

