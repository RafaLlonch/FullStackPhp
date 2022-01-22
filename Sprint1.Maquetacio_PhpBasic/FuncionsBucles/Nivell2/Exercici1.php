<?php
    /* Ens han demanat un llistat de tots els anys on es van produir jocs olímpics desde 1960 inclós
    fins al 2016. Programa un bucle que calculi i mostri per pantalla els anys olímpics dins de 
    l'interval esmentat. */

    $primerAño = 1960;
    $segundoAño = 2016;

    for ($i=$primerAño; $i<=$segundoAño ; $i = $i+4){
        echo $i;
        echo "<br>";
    }


?>