<?php
// Database connection details
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "book_recommendation";
$table = "users";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Initialize variables
$email = "";
$id = "";

// Handle form submission
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $email = $_POST["email"];
    $password = $_POST["psw"];

    // Sanitize inputs to prevent SQL injection (consider using prepared statements)
    $email = mysqli_real_escape_string($conn, $email);
    $password = mysqli_real_escape_string($conn, $password);

    // Retrieve user data from the database
    $sql = "SELECT * FROM $table WHERE email='$email' AND password='$password'";
    $result = $conn->query($sql);

    if ($result->num_rows == 1) {
        $row = $result->fetch_assoc();
        // Redirect to Flask app for book recommendations with email and user ID as URL parameters
        $email = $row["email"];
        $id = $row["id"];
        header("Location: http://127.0.0.1:5000/?email=$email&id=$id");
        exit();
    } else {
        echo '<p style="color: white;">Incorrect email or password.</p>';
    }
}

// Close the database connection
$conn->close();
?>

<!DOCTYPE html>
<html>
<head>
  <style>
    body {
  font-family: Arial, Helvetica, sans-serif;
  background-color: #f1f1f1;
  background-attachment: fixed;
}

.container {
  width: 300px;
  padding: 16px;
  background-color: #fff;
  border-radius: 10px;
  margin: 0 auto;
  margin-top: 100px;
  box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
  background: rgba(255, 255, 255, 0.15); /* Transparent background */
  backdrop-filter: blur(10px); /* Glassmorphic effect */
  color:white
}

.container h1 {
  text-align: center;
  font-size: 24px;
  margin-bottom: 16px;
}

.container input[type=text], .container input[type=password] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
}

.container button {
  background-color: #04AA6D;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
  opacity: 0.9;
  border-radius: 25px;
}

.container button:hover {
  opacity: 1;
}

.container .cancelbtn {
  background-color: #f44336;
}

.container .clearfix::after {
  content: "";
  clear: both;
  display: table;
}

.container .psw {
  float: right;
}

.container .psw a {
  color: dodgerblue;
}

  </style>
</head>
<body style="background-image: url('http://localhost/book_recommendation/templates/Background_image.jpg'); background-size: cover; background-position: center; background-repeat: no-repeat;">

<div class="container">
  <h1>Login</h1>
  <form method="post" action="login.php">
    <label for="email" style ="color:white">Email</label>
    <input type="text" id="email" placeholder="Enter Email" name="email" required>

    <label for="psw">Password</label>
    <input type="password" id="psw" placeholder="Enter Password" name="psw" required>

    <div class="clearfix">
      <button type="submit" class="signupbtn">Login</button>
    </div>
  </form>

  <p class="terms">
    Don't have an account? <a href="signup.php" style="color:dodgerblue">Sign Up</a>
  </p>
</div>

</body>
</html>
