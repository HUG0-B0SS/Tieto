<?php
session_start();
if (!isset($_SESSION['logged_in']) || $_SESSION['logged_in'] !== true) {
    header("Location: login.php");
    exit;
}
?>

<?php
include ("config.php");
?>
<?php
$soogikohaliik = "SELECT liigid FROM liigid";
$soogikohaliigiparing = $yhendus -> query($soogikohaliik);
$liigid = [];
while ($liik = $soogikohaliigiparing -> fetch_assoc()) {
    $liigid[] = $liik['liigid'];
}
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
        <h1>Lisa söögikoht</h1>
        <hr>
        <a href="index.php">Tagasi</a>
        <br>
        <br>
        <form method="post">
            <label for="nimi">Söögikoha nimi:</label>
            <input type="text" name="nimi" id="nimi" required><br>

            <label for="asukoht">Söögikoha asukoht:</label>
            <input type="text" name="asukoht" id="asukoht" required><br>

            <label for="liigid">Söögikoha liik:</label>
            <select name="liigid" id="liigid" required>
                <?php foreach ($liigid as $liik) { ?>
                    <option value="<?php echo $liik; ?>"><?php echo $liik; ?></option>
                <?php } ?>
            </select>
            <br> 
            <br>        
            <input type="submit" class="btn btn-danger" value="Lisa söögikoht">
        </form>
        <?php
        if(!empty($_POST['nimi']) && !empty($_POST['asukoht']) && !empty($_POST['liigid'])){
            $nimi = $_POST['nimi'];
            $asukoht = $_POST['asukoht'];
            $liik = $_POST['liigid'];

            $soogikohalisamine = "INSERT INTO soogikohad (nimi, asukoht, liigid) VALUES ('$nimi', '$asukoht', '$liik')";
            if ($yhendus -> query($soogikohalisamine) === TRUE){
                echo "Söögikoht lisatud";
                header("Location: index.php");
                exit;
            }
        }
        ?>

        <?php $yhendus->close(); ?>   
    </div>
    </body>
</html>