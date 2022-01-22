<?php
    //Escriu un programa en PHP que compta el nombre total de vegades que un valor existeix en l'array.

    $cadena = $_POST["campo1"];
    $valor = $_POST["campo2"];

    $cadenaArray = array();

    for($i=0;$i<strlen($cadena);$i++){

        array_push($cadenaArray,$cadena[$i]);

    }

    $contador = 0;

    foreach ($cadenaArray as $val) {

        if($val == $valor){ $contador++;}
    }

    echo $contador;
?>