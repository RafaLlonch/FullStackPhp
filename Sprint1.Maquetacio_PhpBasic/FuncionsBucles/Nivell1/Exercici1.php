<?php
    /* Programa una funciò que, donat un número qualsevol(per exemple,la teva edat) ens digui si és parell 
    o imparell mitjançant un missatge per pantalla. */

    function parImpar($num){

        if ($num%2==0){
            echo "El número es par";
        }else{
            echo "El número es impar";
        }

    }

    //Prueba
    $edat = 18;
    parImpar($edat);
    
?>