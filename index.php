<?php
session_start();
//if (!isset($_SESSION['logged_in']) || $_SESSION['logged_in'] !== true) {
//    header("Location: login.php");
//    exit;
//}
?>

<?php
include ("config.php");
?>

<!DOCTYPE html>
<html lang="et">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tieto</title>

    <link
        href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous"
    >
</head>
<body>
    <div class="container">
        <h1>Söögikohtade nimekiri</h1>
        <hr>
        <a href="logout.php">Logi ennast välja</a>

        <form method="get">
            <label for="otsi">Otsi söögikohta: </label>
            <input type="text" name="otsi" id="otsi">
            <input type="submit" class="btn btn-danger my-2" value="Otsi">
        </form>

        <a href="lisasoogikoht.php">Lisa uus söögikoht</a>

        <table class="table table-striped">
            <thead>
                <tr>
                    <th scope="col">Söögikoha nimi <a href="?sort=nimi&order=asc">↑ </a> / <a href="?sort=nimi&order=desc">↓</a></th>
                    <th scope="col">Söögikoha asukoht <a href="?sort=asukoht&order=asc">↑ </a> / <a href="?sort=asukoht&order=desc">↓</a></th>
                    <th scope="col">Söögikoha keskmine hinne <a href="?sort=keskmine_hinne&order=asc">↑ </a> / <a href="?sort=keskmine_hinne&order=desc">↓</a></th>
                    <th scope="col">Mitu korda on hinnatud <a href="?sort=hinnatud&order=asc">↑ </a> / <a href="?sort=hinnatud&order=desc">↓</a></th>
                    <th scope="col">Admin</th>
                </tr>
            </thead>
            <tbody>
                <?php
                $lehekyljesuurus = 10;
                if (isset($_GET['lehekylg'])) {
                    $lehekylg = $_GET['lehekylg'];
                } else {
                    $lehekylg = 1;
                }

                $start = ($lehekylg-1) * $lehekyljesuurus;
                $sort = isset($_GET['sort']) ? $_GET['sort'] : 'nimi';
                $order = isset($_GET['order']) ? $_GET['order'] : 'asc';

                $otsi = isset($_GET['otsi']) ? $_GET['otsi'] : '';
                $sqlotsing = $otsi ? "WHERE nimi LIKE '%$otsi%'" : '';

                $sqlsoogikohad = "SELECT * FROM soogikohad $sqlotsing ORDER BY $sort $order LIMIT $start, $lehekyljesuurus";
                $tulemus = $yhendus -> query($sqlsoogikohad);                     

                if ($tulemus->num_rows > 0){
                    while ($row = $tulemus -> fetch_assoc()){
                        $id = $row['id'];

                        $hinnatudquery = "SELECT COUNT(*) as hinnatud FROM hinnangud WHERE toidukohad_id = '$id'";
                        $hinnatudvastus = $yhendus -> query($hinnatudquery);
                        $hinnatudfetch = $hinnatudvastus -> fetch_assoc()['hinnatud'];

                        $keskhinnequery = "SELECT AVG(hinnang) as keskmine_hinne FROM hinnangud WHERE toidukohad_id = '$id'";
                        $keskhinnefetch = $yhendus -> query($keskhinnequery);
                        $keskhinnefetch = $keskhinnefetch -> fetch_assoc()['keskmine_hinne'];
                        $keskhinneumardus = round($keskhinnefetch,1);

                        $lisamine = "UPDATE soogikohad SET keskmine_hinne = '$keskhinneumardus', hinnatud = '$hinnatudfetch' WHERE id = '$id'";
                        $lisamisvastus = $yhendus -> query($lisamine);

                        $koikhinnangud = "SELECT * FROM hinnangud";
                        $hinnangudvastus = $yhendus -> query($koikhinnangud);
                        ?>

                        <tr>
                            <td> <a href="hinnangulisamine.php?koht=<?php echo urlencode($id); ?> "> <?php echo $row["nimi"]; ?></a></td>
                            <td> <?php echo $row["asukoht"]; ?> </td>
                            <td> <?php echo round($keskhinneumardus, 1);?> </td>
                            <td> <?php echo $hinnatudfetch; ?> </td>
                            <td><a href="muudasoogikoht.php?koht= <?php echo urlencode($id); ?> ">Muuda</a><a> / </a> <?php echo "<a href='kustutasoogikoht.php?koht=" . $id . "'>Kustuta</a>"; ?></td>
                        </tr>
                        <?php
                    }
                }
                ?>
            </tbody>
        </table>

        <?php
        $eelminelehekylg = $lehekylg - 1;
        $jargminelehekylg = $lehekylg + 1;

        if ($eelminelehekylg > 0) {
            echo "<a href='?lehekylg=$eelminelehekylg'>&lt; Eelmised</a>";
        }
        if ($tulemus -> num_rows == $lehekyljesuurus) {
            echo "<a href='?lehekylg=$jargminelehekylg'> Järgmised &gt;</a>";
        }
        ?>
        <br>

        <?php $yhendus->close(); ?>   
    </div>
    </body>
</html> 
