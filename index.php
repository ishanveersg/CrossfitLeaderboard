<!DOCTYPE html>
<html>
<head>
    <title>Athletes Leaderboard</title>
    <link rel="stylesheet" type="text/css" media="screen" href="style.css">
</head>
<body>
<table>
    <tr>
        <th>id</th>
        <th>identifier</th>
        <th>name</th>
        <th>created</th>
        <th>modified</th>
        <th>dob</th>
        <th>Identified Gender</th>
    </tr>

    <?php
    require_once 'includes/postgreSQL_connect.php';
    /**
     * @var string $conn
     */
    $query = "SELECT * FROM athletes";
    $result = pg_query($conn, $query);
    while($row= pg_fetch_assoc($result)){
        echo "<tr><td>" .
            $row["id"]. "</td><td>" .
            $row["identifier"] . "</td><td>" .
            $row["name"] . "</td><td>" .
            $row["created"] . "</td><td>" .
            $row["modified"] . "</td><td>" .
            $row["dob"] . "</td><td>" .
            $row["identified_gender"]. "</td></tr>";
    }
    ?>
</table>
</body>
</html>