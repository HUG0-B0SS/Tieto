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
    $kohaparing = "SELECT nimi FROM soogikohad WHERE id = '$kohaid'";
    $koht = $yhendus -> query($kohaparing);
    $row = mysqli_fetch_assoc($koht);

    $soogikohakustutamine = "DELETE FROM soogikohad WHERE id = '$kohaid'";
    if ($yhendus -> query($soogikohakustutamine) === TRUE) {
        header("Location: index.php");
        exit;
    } else {
        echo "Tekkis viga kutsutsatmisel! " . $yhendus -> error;
    }
} else {
    header("Location: index.php");
}

$yhendus->close(); ?>