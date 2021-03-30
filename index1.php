<!DOCTYPE html>
<html>
<head>
    <title>Athletes Leaderboard</title>
    <link rel="stylesheet" type="text/css" href="style.css">
    <link rel="stylesheet" type="text/css" href="includes/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="includes/css/jquery-ui.css">
    <script type="text/javascript" src="includes/js/bootstrap.js"></script>
    <script type="text/javascript" src="includes/js/jquery-ui.js"></script>
</head>
<body>
<div class="container">
    <div class="row">
        <form action="index1.php" method="POST">
            <div class="form-group">
                    <input type="text" class="form-control" name="name" placeholder="Filter by name" aria-label="...">
            </div>
            <div class="form-group">
                <input type="submit" name="submit" class="btn-primary" >
            </div>
        </form>
    </div>
</div>
<div class="row container-fluid w-75 m-auto">
    <table class="table table-striped table-hover">
        <tr>
            <th>Name</th>
            <th>D.O.B</th>
            <th>Identified Gender</th>
            <th>Nationality</th>
        </tr>
        <?php
        require_once 'includes/php/postgreSQL_connect.php';
        /**
         * @var string $conn
         */
        function displayTable($res){
            while ($row = pg_fetch_assoc($res)) {
                echo "<tr><td>" .
                    //$row["id"] . "</td><td>" .
                    //$row["identifier"] . "</td><td>" .
                    $row["name"] . "</td><td>" .
                    $row["dob"] . "</td><td>" .
                    $row["identified_gender"] . "</td><td>" .
                    $row["nationality"] . "</td></tr>";
            }
        }
        if(isset($_POST['submit'])){
            //$id = $_POST['id'];
            //$identifier = $_POST['identifier'];
            $name = $_POST['name'];
            //$dob = $_POST['dob'];
            //$identified_gender = $_POST['identified_gender'];

            if($name != "") {
                $query = "SELECT * FROM athletes where name='$name'";
                $result = pg_query($conn, $query);
                displayTable($result);
            }
            else {
                $query = "SELECT * FROM athletes";
                $result = pg_query($conn, $query);
                displayTable($result);
            }
        }
        ?>
    </table>
</div>
</body>
</html>