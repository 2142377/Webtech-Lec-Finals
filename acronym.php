<?php include 'db.php'; ?>
<?php session_start() ?>
<?php

    $query = "SELECT COUNT(question_number) as 'total' FROM `questions` WHERE q_group =3";
    $results = $mysqli->query($query) or die($mysqli->error.___Line___);
    $row = $results->fetch_assoc();
    $total = $row['total'];   
    $_SESSION['total'] = $total;
    $_SESSION['score'] = 0;
    $_SESSION['quiz'] = 3;
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
      <div class="test-container">
        <h2>Directions: Choose the right answer for the following acronyms.</h2>
        <ul class="list-quiz">
          <li class="odd wow fadeInUp" data-wow-duration="1000ms" data-wow-delay="300ms"><strong>Number of Questions: </strong> <?php echo $total; ?></li>
          <li class="even wow fadeInUp" data-wow-duration="1000ms" data-wow-delay="450ms"><strong>Type: </strong> Acronym</li>
          <li class="odd wow fadeInUp" data-wow-duration="1000ms" data-wow-delay="550ms"><strong>Estimated Time: </strong><?php echo $total * .5; ?> Minutes</li>
        </ul>
        <a href="qAcronym.php?n=26" class="start">Start Quiz</a>
      </div>

      <div class="row justify-content-center mb-5">
            <div class="col-md-12 text-center">
                <h2>Changed your mind?</h2>
                <p class="lead">You may still choose what Quiz you want to take instead.</p>
            </div>
            </div>
            <div class="row blog-entries on-quiz text-center">
                <div class="col-md-3 col-sm-6 col-12 wow fadeInUp" data-wow-duration="1000ms" data-wow-delay="300ms">
                    <a href="acronym.php" class="blog-entry">
                    <img src="images/acronym.png" alt="Image placeholder">
                    <h2>Acronym</h2>
                    </a>
                </div>
        
                <div class="col-md-3 col-sm-6 col-12 wow fadeInUp" data-wow-duration="1000ms" data-wow-delay="400ms">
                    <a href="trueFalse.php" class="blog-entry">
                    <img src="images/True-False_Logo.JPG" alt="Image placeholder">
                    <h2>True or False</h2>
                    </a>
                </div>
                <div class="col-md-3 col-sm-6 col-12 wow fadeInUp" data-wow-duration="1000ms" data-wow-delay="500ms">
                    <a href="fillBlank.php" class="blog-entry">
                    <img src="images/fill-in-the-blanks.png" alt="Image placeholder">
                    <h2>Fill in the blank</h2>
                    </a>
                </div>
                <div class="col-md-3 col-sm-6 col-12 wow fadeInUp" data-wow-duration="1000ms" data-wow-delay="600ms">
                    <a href="multipleChoice.php" class="blog-entry">
                    <img src="images/php.png" alt="Image placeholder">
                    <h2>Multiple Choice</h2>
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
</body>
</html>