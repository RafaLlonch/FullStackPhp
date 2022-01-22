<?php
    /* Escriu una funció que determini la quantitat total a pagar per una trucada telefònica 
    d'acord a les següents premisses:
    
    Tota crida que duri menys de 3 minuts té un cost de 10 cèntims.
    Cada minut addicional a partir dels 3 primers és un pas de comptador i costa 5 cèntims. */

    function totalApagar($tiempo){

        if ($tiempo<3){
            $coste = 10;
        } else{
            $coste = 10;
            for ($i=4;$i<=$tiempo;$i++){
                $coste = $coste + 5;
            }
        }

        echo $coste;

    }

    $durada = 5;
    totalApagar($durada);
?>