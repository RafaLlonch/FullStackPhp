<?php
    /* Escriure un programa PHP per calcular la suma dels dos valors enters donats. 
    Si els dos valors són iguals, torna el doble de la seva suma. */

    $Suma = $_POST["campo1"]+$_POST["campo2"];

    if ($_POST["campo1"]==$_POST["campo2"]){
        echo "Los dos números son iguales, el doble de su suma,
        es: ".($_POST["campo1"]+$_POST["campo2"])*2;
    } else echo "El resultado es: ".$Suma;

?>