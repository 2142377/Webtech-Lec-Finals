<?php include 'db.php'; ?>
<?php session_start(); ?>
<?php
	if(!isset($_SESSION['score'])){
		$_SESSION['score'] = 0;
	}

	if($_POST){
		$number = $_POST['number'];
		$selected_choice = $_POST['choice'];
		$next = $number+1;

		$qgrp = $_SESSION['quiz'];

		$query = "SELECT MAX(question_number) as 'total' FROM `questions` WHERE q_group =$qgrp";
		$results = $mysqli->query($query) or die($mysqli->error.___Line___);
		$row = $results->fetch_assoc();
		$total = $row['total'];	


		$query = "SELECT * FROM `choices` 
		WHERE question_number = $number AND is_correct = 1";

		$result = $mysqli->query($query) or die($mysqli->error.__LINE__);
		$row = $result->fetch_assoc();
		
		$correct_choice = $row['text'];
		
		if($correct_choice == $selected_choice){
			$sess_score = $_SESSION['score'];
			$sess_score += 1;			
			$_SESSION['score'] = $sess_score;			
		}

		if($number == $total) {
				header("Location: final.php");
				exit();
		} else {
			if ($_SESSION['quiz'] == 3) {
				header("Location: qAcronym.php?n=".$next);					
			}else if ($_SESSION['quiz'] == 4) {
				header("Location: qFillBlank.php?n=".$next);	
			}
		}
	}