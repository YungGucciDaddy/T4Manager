<?php

$mysqli = new mysqli("localhost", "root", "", "jultomten2");

if($mysqli === false){
    die("ERROR: Could not connect. " . $mysqli->connect_error);
}
 
 $Bid = $mysqli->real_escape_string($_REQUEST['Bid']);
 $Fnamn = $mysqli->real_escape_string($_REQUEST['Fnamn']);
 $Enamn = $mysqli->real_escape_string($_REQUEST['Enamn']);
 $Snall = $mysqli->real_escape_string($_REQUEST['Snall']);
 $Land = $mysqli->real_escape_string($_REQUEST['Land']);
 $TUTid = $mysqli->real_escape_string($_REQUEST['TUTid']);

 
$SQL = "INSERT INTO barn (Bid, Fnamn, Enamn, Snall, Land, TUTid) VALUES ($Bid, '$Fnamn', '$Enamn', $Snall, '$Land', $TUTid)";
if($mysqli->query($SQL) === true){
    echo "De FUNKAR.";
} else{
    echo "ERROR: de funkar inte $SQL. " . $mysqli->error;
}

$SQL = "SELECT Bid, Fnamn, Enamn FROM barn";
 echo "Bid: " . $row["Bid"]. " - Namn: " . $row["Fnamn"]. " " . $row["Enamn"]. "<br>";
 
$mysqli->close();
?>