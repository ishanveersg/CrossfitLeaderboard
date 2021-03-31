<!DOCTYPE html>
<html>
<head>
    <title>Leaderboard</title>
    <link rel="stylesheet" type="text/css" href="includes/css/bootstrap.css">
</head>
<body style="font-family: sans-serif">
<div class="container">
    <div class="row mt-3">
        <form action="leaderboard.php" method="POST">
            <div class="form-group w-100">
                <input type="text" class="form-control" name="name" placeholder="Filter by name" aria-label="...">
            </div>
            <div class="form-group w-100">
                <input type="submit" name="submit" class="btn-dark" >
            </div>
        </form>
    </div>
</div>
<div class="row container-fluid w-75 m-auto">
    <table class="table table-striped table-hover">
        <thead class="thead-dark">
        <tr>
            <th>Name</th>
            <th>Gender</th>
            <th>Nationality</th>
            <th>Points</th>
            <th>event1</th>
            <th>event2</th>
        </tr>
        </thead>
        <?php
        require_once 'includes/php/postgreSQL_connect.php';
        /**
         * @var string $conn
         */
        function displayTable($res){
            while ($row = pg_fetch_assoc($res)) {
                echo "<tr><td>" .
                    $row["name"] . "</td><td>" .
                    $row["identified_gender"] . "</td><td>" .
                    $row["nationality"] . "</td><td>" .
                    $row["points"] . "</td><td>" .
                    $row["event1"] . "</td><td>" .
                    $row["event2"] . "</td></tr>";
            }
        }
        if(isset($_POST['submit'])){
            $name = $_POST['name'];
            if($name != "") {
                $query = "SELECT * FROM athletes WHERE name LIKE '%$name%'";
                $result = pg_query($conn, $query);
                displayTable($result);
            }
            else {
                $query = "SELECT a.name, a.identified_gender as gender ,a.nationality,
                        (SELECT points FROM register r where competitions_id=1 AND r.athletes_id=a.id) AS points,
                        (SELECT main FROM event_score e where events_name='Event 1' AND e.athlete_id= a.id)  AS event1,
                        (SELECT main FROM event_score e where events_name='Event 2'  AND e.athlete_id= a.id)AS event2
                        FROM athletes a
                        ORDER BY points ASC, event1 ASC, event2 ASC;";
                $result = pg_query($conn, $query);
                displayTable($result);
            }
        }
        ?>
    </table>
</div>
</body>
</html>