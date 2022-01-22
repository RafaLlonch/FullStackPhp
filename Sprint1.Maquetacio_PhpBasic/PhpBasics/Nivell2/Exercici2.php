<?php
    /*Escriu un programa PHP per intercanviar el primer i últim caràcter 
    d'una cadena donada i imprimeix la nova cadena. */

    $cadena = $_POST["campo1"];

    $letraInicial = $cadena[0];
    
    $longitud = strlen($cadena);
    $posicionLetraFinal = $longitud-1;
    $letraFinal = $cadena[$posicionLetraFinal];

    $cadenaFinal = substr_replace($cadena, $letraFinal, 0,1);

    echo substr_replace($cadenaFinal,$letraInicial,-1, 1);
?>