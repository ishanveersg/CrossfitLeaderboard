<!DOCTYPE html>
<html>
<head>
    <title>Competitions</title>
    <link rel="stylesheet" type="text/css" href="style.css">
    <link rel="stylesheet" type="text/css" href="includes/css/bootstrap.css">
</head>
<body style="font-family: sans-serif">
<div class="container">
    <div class="row mt-3">
        <form action="competitions.php" method="POST">
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
            <th>Venue</th>
            <th>Number Of Events</th>
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
                    $row["venue"] . "</td><td>" .
                    $row["num_events"] . "</td></tr>";
            }
        }
        if(isset($_POST['submit'])){
            $name = $_POST['name'];

            if($name != "") {
                $query = "SELECT * FROM competitions WHERE name LIKE lower('%$name%')";
                $result = pg_query($conn, $query);
                displayTable($result);
            }
            else {
                $query = "SELECT * FROM competitions ORDER BY name ASC";
                $result = pg_query($conn, $query);
                displayTable($result);
            }
        }
        ?>
    </table>
</div>
</body>
</html>