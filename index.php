<html>
<head>
    <title>Choose your table</title>
    <link rel="stylesheet" type="text/css" href="includes/css/bootstrap.css">
</head>
<body style="font-family: sans-serif">
<div class="container">
    <div class="row mt-5 justify-content-center text-center">
        <form action="leaderboard.php" method="post">
            <div class="form-group">
                <input type="submit" name="leaderboard" class="btn-dark btn-lg" value="LEADERBOARD">
            </div>
        </form>
    </div>
</div>
<div class="container">
    <div class="row justify-content-center text-center">
        <form action="athletes.php" method="post">
            <div class="form-group">
                <input type="submit" name="athletes" class="btn-dark btn-lg" value="Athletes">
            </div>
        </form>
    </div>
</div>
<div class="container">
    <div class="row justify-content-center text-center">
        <form action="competitions.php" method="post">
            <div class="form-group">
                <input type="submit" name="competitions" class="btn-dark btn-lg" value="Competitions">
            </div>
        </form>
    </div>
</div>
</body>
</html>