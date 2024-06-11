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
if(isset($_GET['koht'])) {
    $kohaid = $_GET['koht'];
    $kohaparing = "SELECT * FROM soogikohad WHERE id = '$kohaid'";
    $koht = $yhendus -> query($kohaparing);
    $row = mysqli_fetch_assoc($koht);

    $liigid = "SELECT liigid FROM liigid";
    $liigid2 = $yhendus -> query($liigid);
    $liigidvastus = [];
    while ($liik = $liigid2 -> fetch_assoc()) {
        $liigidvastus[] = $liik['liigid'];
    }
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
        <h1>Muuda söögikohta: <?php echo $row['nimi']; ?>i</h1>
        <hr>
        <a href="index.php">Tagasi</a>
        <br>
        <br>
        <form method="post">
            <label for="nimi">Söögikoha nimi: </label>
            <input type="text" name="nimi" id="nimi" value="<?php echo $row['nimi']; ?>" required><br>

            <label for="asukoht">Söögikoha asukoht: </label>
            <input type="text" name="asukoht" id="asukoht" value="<?php echo $row['asukoht']; ?>" required><br>

            <label for="liigid">Söögikoha liik: </label>
            <select name="liigid" id="liigid" required>
                <?php foreach ($liigidvastus as $liik) { ?>
                    <option value="<?php echo $liik; ?>" <?php if ($liik === $row['liigid']) echo 'selected'; ?>><?php echo $liik; ?></option>
                <?php } ?>
            </select>
            <br>         
            <br>
            <input type="submit" class="btn btn-danger" value="Salvesta muudatused">
        </form>
        <?php
        if(!empty($_POST['nimi']) && !empty($_POST['asukoht']) && !empty($_POST['liigid'])){
            $nimi = $_POST['nimi'];
            $asukoht = $_POST['asukoht'];
            $liik = $_POST['liigid'];

            $soogikohamuutmine = "UPDATE soogikohad SET nimi='$nimi', asukoht='$asukoht', liigid='$liik' WHERE id = '$kohaid'";
            if ($yhendus -> query($soogikohamuutmine) === TRUE){
                echo "Söögikoht muudetud!";
                header("Location: index.php");
                exit;
            }
        }
        ?>
        <?php $yhendus->close(); ?>   
    </div>
    </body>
</html>