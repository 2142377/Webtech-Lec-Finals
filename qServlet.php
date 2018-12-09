<?php include 'db.php'; ?>
<?php session_start(); ?>
<?php
  $number = (int) $_GET['n'];
  //Questions
  $query = "SELECT * FROM questions WHERE  question_number = $number";
  $result = $mysqli->query($query) or die($mysqli->error.___Line___);
  $question = $result->fetch_assoc();
  $query = "SELECT * FROM choices WHERE  question_number = $number";
  $choices = $mysqli->query($query) or die($mysqli->error.___Line___);
  //number of questions
  $query = "SELECT * FROM `choices` WHERE question_number = '2'";
  $results = $mysqli->query($query) or die($mysqli->error.___Line___);
  $total = $results->num_rows;
?>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Home</title>
  <link href="css/bootstrap.min.css" rel="stylesheet">
  <link href="css/animate.min.css" rel="stylesheet"> 
  <link href="css/font-awesome.min.css" rel="stylesheet">
  <link href="css/lightbox.css" rel="stylesheet">
  <link href="css/main.css" rel="stylesheet">
  <link id="css-preset" href="css/presets/preset1.css" rel="stylesheet">
  <link href="css/responsive.css" rel="stylesheet">

  <link href='http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700' rel='stylesheet' type='text/css'>
  <link rel="shortcut icon" href="images/favicon2.png">
</head><!--/head-->

<body>
    <div id="intro">
      <div class="container">
        <div class="quiz-container">
          <span class="float-title">Servlet</span>
          <p> SCORE: <bold><?php echo $_SESSION['score'] ?> pts </bold></p>
         <!--  <div class="current">Question <?php echo $question['question_number']; ?> of <?php echo $_SESSION['total'] ?></div> -->
          <p class="question">
            <?php echo $question['text']; ?>
          </p>
          <form method="post" action="process.php">
            <ul class="choices">
              <?php while($row = $choices->fetch_assoc()): ?>
                <li><input name="choice" type="radio" value="<?php echo $row['id'] ?>" /><?php echo $row['text']; ?></li>
              <?php endwhile; ?>
            </ul>
            <input type="submit" value="Submit" />
            <input type="hidden" name="number" value="<?php echo $number; ?>" />
         </div>


          <div class="row justify-content-center mb-5">
            <div class="col-md-12 text-center">
                <h2>Changed your mind?</h2>
                <p class="lead">You may still choose what Quiz you want to take instead.</p>
            </div>
            </div>
            <div class="row blog-entries on-quiz text-center">
                <div class="col-md-3 col-sm-6 col-12 wow fadeInUp" data-wow-duration="1000ms" data-wow-delay="300ms">
                    <a href="jspQuiz.php" class="blog-entry">
                    <img src="images/jsp.jpg" alt="Image placeholder">
                    <h2>JSP Quiz</h2>
                    </a>
                </div>
        
                <div class="col-md-3 col-sm-6 col-12 wow fadeInUp" data-wow-duration="1000ms" data-wow-delay="400ms">
                    <a href="servletQuiz.php" class="blog-entry">
                    <img src="images/Java-Servlets.png" alt="Image placeholder">
                    <h2>Java Servlet Quiz</h2>
                    </a>
                </div>
                <div class="col-md-3 col-sm-6 col-12 wow fadeInUp" data-wow-duration="1000ms" data-wow-delay="500ms">
                    <a href="nodejsQuiz.php" class="blog-entry">
                    <img src="images/nodejs_logo.png" alt="Image placeholder">
                    <h2>Node JS Quiz</h2>
                    </a>
                </div>
                <div class="col-md-3 col-sm-6 col-12 wow fadeInUp" data-wow-duration="1000ms" data-wow-delay="600ms">
                    <a href="phpQuiz.php" class="blog-entry">
                    <img src="images/php.png" alt="Image placeholder">
                    <h2>PHP Quiz</h2>
                    </a>
                </div>
            </div>


      <section class="learning-button">
        <div class="caption">
          <a class="btn toggle-btn" href="index.php">Go Back</a>
        </div>
      </section>
  </div>

    <footer id="footer">
    <div class="footer-bottom">
      <div class="container">
        <div class="row">
          <div class="col-sm-6">
            <p>Copyright &copy; 2018 Group 1 9461A | Web Systems & Technologies</p>
          </div>
          <div class="col-sm-6">
            <p class="pull-right">All rights reserved.</p>
          </div>
        </div>
      </div>
    </div>
  </footer>
  <script type="text/javascript" src="js/jquery.js"></script>
  <script type="text/javascript" src="js/bootstrap.min.js"></script>
  <script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=true"></script>
  <script type="text/javascript" src="js/jquery.inview.min.js"></script>
  <script type="text/javascript" src="js/wow.min.js"></script>
  <script type="text/javascript" src="js/mousescroll.js"></script>
  <script type="text/javascript" src="js/smoothscroll.js"></script>
  <script type="text/javascript" src="js/jquery.countTo.js"></script>
  <script type="text/javascript" src="js/lightbox.min.js"></script>
  <script type="text/javascript" src="js/main.js"></script>

</body>
</html>