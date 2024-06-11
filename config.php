<?php

$kasutaja = "hvainlu";
$dbserver = "localhost";
$andmebaas ="tieto";
$pw = "hvainlu";

$yhendus = mysqli_connect ($dbserver, $kasutaja, $pw, $andmebaas);

if (!$yhendus) {
    die ("Ühendus ebaõnnestus jälle!");
} 

?>