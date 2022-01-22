<?php
    //Imprimeix per pantalla "Hello, World!" utilitzant una variable. 
    $string = "Hello, World!";
    echo $string;
    echo "<br>";

    //Converteix tots els caràcters de l'string a majúscules i imprimeix en pantalla.
    $string_mayus = strtoupper($string);
    echo $string_mayus;
    echo "<br>";

    //Imprimeix per pantalla la mida (longitud) de la variable.
    echo strlen($string);
    echo "<br>";

    //Imprimeix per pantalla el string en ordre invers de caràcters.
    $string_invertido = strrev( $string );
    echo $string_invertido;
    echo "<br>";

    //Crea una nova variable amb el contingut "Aquest és el curs de PHP" i imprimeix per pantalla la concatenació de tots dos strings.
    $string2 = "Aquest és el curs de PHP";
    $cadena = $string.$string2;
    echo $cadena;
?>