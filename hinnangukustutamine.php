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
<?php 
if(isset($_GET['kommentaar'])) {
    $kommentaar = $_GET['kommentaar'];
    $id = $_SESSION['id'];

    $kustutamisparing = "DELETE FROM hinnangud WHERE kommentaar = '$kommentaar'";
    if ($yhendus->query($kustutamisparing) === TRUE) {
        header("Location: hinnangulisamine.php?koht=$id");
        exit;
    }
}

$yhendus->close(); ?>
