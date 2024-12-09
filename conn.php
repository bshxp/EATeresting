<?php
// Connect to database
$host = "localhost";
$username = "root"; // Update if different
$password = "";     // Update if different
$database = "final_db";
$conn = new mysqli($host, $username, $password, $database);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Initialize variables
$search_query = "";
$recipes = [];

if ($_SERVER["REQUEST_METHOD"] === "GET" && isset($_GET['query'])) {
    $search_query = $conn->real_escape_string($_GET['query']);
    $sql = "SELECT recipe_id, title, description, image FROM Recipes 
            WHERE is_public = 1 AND title LIKE '%$search_query%'";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        $recipes = $result->fetch_all(MYSQLI_ASSOC);
    }
}
?>