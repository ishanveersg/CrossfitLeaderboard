<?php
	
	//Connection parameters
 	$dbHost = "localhost";
	$dbPort = "5432";
	$dbName = "leaderboard";
	$dbUser = "postgres";
	$dbUserPassword = "pass";

	$connection_info = "host=$dbHost port=$dbPort dbname=$dbName user=$dbUser password=$dbUserPassword";
	$conn = pg_connect($connection_info) or die ("Connection has failed");
