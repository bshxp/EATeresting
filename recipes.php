<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Recipes</title>
    <!-- favicon -->
    <link rel="shortcut icon" href="./assets/favicon.ico" type="image/x-icon" />
    <!-- normalize -->
    <link rel="stylesheet" href="./css/normalize.css" />
    <!-- font-awesome -->
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css"
    />
    <!-- main css -->
    <link rel="stylesheet" href="./css/main.css" />
  </head>
  <body>
    <!-- nav -->
    <nav class="navbar">
      <div class="nav-center">
        <div class="nav-header">
          <a href="index.html" class="nav-logo">
            <img src="./assets/logo.svg" alt="EATeresting" />
          </a>
          <button class="nav-btn btn">
            <i class="fas fa-align-justify"></i>
          </button>
        </div>
        <div class="nav-links">
          <a href="index.html" class="nav-link"> home </a>
          <a href="about.html" class="nav-link"> about </a>
          <a href="recipes.php" class="nav-link"> recipes </a>
          <div class="nav-link contact-link">
            <a href="contact.html" class="btn"> contact </a>
          </div>
        </div>
      </div>
    </nav>
    <!-- end of nav -->
    <!-- main -->
    <main class="page">
      <section class="search-bar">
        <form method="GET" action="recipes.php">
          <input
            type="text"
            name="query"
            placeholder="Search for a recipe..."
            class="search-input"
            value="<?php echo isset($_GET['query']) ? htmlspecialchars($_GET['query']) : ''; ?>"
          />
          <button type="submit" class="btn">Search</button>
        </form>
      </section>

      <!-- This section will dynamically display recipes -->
      <section class="recipe-list">
      <?php
$host = 'localhost';
$username = 'root';
$password = '';
$database = 'final_db';

$conn = new mysqli($host, $username, $password, $database);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$category = isset($_GET['category']) ? $conn->real_escape_string($_GET['category']) : '';
$searchQuery = isset($_GET['query']) ? $conn->real_escape_string($_GET['query']) : '';

// Base SQL query
$sql = "SELECT * FROM recipes WHERE is_public = 1";

// Add category filter if specified
if (!empty($category)) {
    $sql .= " AND category = '$category'";
}

// Add search filter if specified
if (!empty($searchQuery)) {
    $sql .= " AND (title LIKE '%$searchQuery%' OR description LIKE '%$searchQuery%')";
}

// Execute query
$result = $conn->query($sql);

// Display recipes
if ($result->num_rows > 0) {
    echo "<div class='recipe-grid'>";
    while ($row = $result->fetch_assoc()) {
        echo "<a href='single-recipe.php?id=" . urlencode($row['recipe_id']) . "' class='recipe-card'>";
        echo "<img src='./images/" . htmlspecialchars($row['image']) . "' alt='" . htmlspecialchars($row['title']) . "'>";
        echo "<h3>" . htmlspecialchars($row['title']) . "</h3>";
        echo "<p>" . htmlspecialchars($row['description']) . "</p>";
        echo "<p><strong>Prep Time:</strong> " . $row['prep_time'] . " mins</p>";
        echo "<p><strong>Cook Time:</strong> " . $row['cook_time'] . " mins</p>";
        echo "</a>";
    }
    echo "</div>";
} else {
    echo "<p>No recipes found.";
    if (!empty($searchQuery)) {
        echo " for '<strong>" . htmlspecialchars($searchQuery) . "</strong>'";
    }
    if (!empty($category)) {
        echo " in the category '<strong>" . htmlspecialchars($category) . "</strong>'";
    }
    echo ".</p>";
}

$conn->close();
?>

      </section>
    </main>
    <!-- end of main -->
    <!-- footer -->
    <footer class="page-footer">
      <p>
        &copy; <span id="date"></span>
        <span class="footer-logo">EATeresting</span> Built by
        <a href="">Kailas Longgadog</a>
      </p>
    </footer>
    <script src="./js/app.js"></script>
  </body>
</html>
