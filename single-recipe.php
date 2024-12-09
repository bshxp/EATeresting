<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Recipe</title>
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
    <main class="page">
      <div class="recipe-page">
        <section class="recipe-hero">
          <?php
          if (isset($_GET['id'])) {
            $recipeId = $_GET['id'];
        
            // Database connection
            $conn = new mysqli('localhost', 'root', '', 'final_db');
        
            if ($conn->connect_error) {
              die("Connection failed: " . $conn->connect_error);
            }
        
            // Prepare and execute the query to get the recipe details based on the ID
            $sql = "SELECT * FROM recipes WHERE recipe_id = ?";
            $stmt = $conn->prepare($sql);
            $stmt->bind_param('i', $recipeId);
            $stmt->execute();
            $result = $stmt->get_result();
        
            if ($result->num_rows > 0) {
              // Fetch the recipe data
              $row = $result->fetch_assoc();
              $title = htmlspecialchars($row['title']);
              $image = htmlspecialchars($row['image']);
              $description = htmlspecialchars($row['description']);
              $prepTime = htmlspecialchars($row['prep_time']);
              $cookTime = htmlspecialchars($row['cook_time']);
              $ingredients = htmlspecialchars($row['ingredients']);
              $instructions = htmlspecialchars($row['instructions']);
            } else {
              // If no recipe is found, show a message
              $title = "Recipe not found";
              $image = "";
              $description = "";
              $prepTime = "";
              $cookTime = "";
              $ingredients = "";
              $instructions = "";
            }
        
            // Close the database connection
            $conn->close();
          } else {
            // If no ID is provided in the URL, show an error message
            $title = "No recipe ID provided";
            $image = "";
            $description = "";
            $prepTime = "";
            $cookTime = "";
            $ingredients = "";
            $instructions = "";
          }
          ?>
          <!-- Display recipe details -->
          <?php if ($title !== "No recipe ID provided" && $title !== "Recipe not found"): ?>
            <img src="./images/<?php echo $image; ?>" class="img recipe-hero-img" alt="<?php echo $title; ?>" />
            <article class="recipe-info">
              <h2><?php echo $title; ?></h2>
              <p><?php echo $description; ?></p>
              <div class="recipe-icons">
                <article>
                  <i class="fas fa-clock"></i>
                  <h5>prep time</h5>
                  <p><?php echo $prepTime; ?> min.</p>
                </article>
                <article>
                  <i class="far fa-clock"></i>
                  <h5>cook time</h5>
                  <p><?php echo $cookTime; ?> min.</p>
                </article>
                <article>
                  <i class="fas fa-user-friends"></i>
                  <h5>serving</h5>
                  <p>6 servings</p>
                </article>
              </div>
              <p class="recipe-tags">
                Tags : <a href="tag-template.html">recipe</a>
              </p>
            </article>
          <?php else: ?>
            <p><?php echo $title; ?></p>
          <?php endif; ?>
        </section>
        <!-- content -->
        <section class="recipe-content">
          <article>
            <h4>instructions</h4>
            <?php if ($instructions): ?>
              <!-- Display instructions -->
              <?php $steps = explode("\n", $instructions); ?>
              <?php foreach ($steps as $index => $step): ?>
                <div class="single-instruction">
                  <header>
                    <p>steps</p>
                    <div></div>
                  </header>
                  <p><?php echo $step; ?></p>
                </div>
              <?php endforeach; ?>
            <?php endif; ?>
          </article>
          <article class="second-column">
            <div>
              <h4>ingredients</h4>
              <?php if ($ingredients): ?>
                <!-- Display ingredients -->
                <?php $ingredientList = explode("\n", $ingredients); ?>
                <?php foreach ($ingredientList as $ingredient): ?>
                  <p class="single-ingredient"><?php echo $ingredient; ?></p>
                <?php endforeach; ?>
              <?php endif; ?>
            </div>
            <div>
              <h4>tools</h4>
              <p class="single-tool">Hand Blender</p>
              <p class="single-tool">Large Heavy Pot With Lid</p>
              <p class="single-tool">Measuring Spoons</p>
              <p class="single-tool">Measuring Cups</p>
            </div>
          </article>
        </section>
      </div>
    </main>
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
