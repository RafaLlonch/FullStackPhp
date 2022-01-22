<?php
    //Crea dos arrays, un que inclogui 5 integers, i un altre que inclogui 3 integers.
    $array1 = array(1,2,3,4,5);
    $array2 = array(6,7,8);

    //Afegeix un valor més a l'array que conté 3 integers.
    array_push($array2,9);

    //Mescla els dos arrays i imprimeix el tamany de l'array resultant per pantalla.
    $array12 = array_merge($array1,$array2);
    echo count($array12);
    echo "<br>";

    //Ara imprimeix per pantalla l'array resultant valor a valor.
    print_r($array12);
    echo "<br>";
    
?>