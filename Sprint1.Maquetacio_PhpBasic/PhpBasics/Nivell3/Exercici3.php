<?php
    /* Elimina un element de l’array anterior. Després d'eliminar l'element, les claus senceres han de 
    ser normalitzades.*/

    $X = array (10,20,30,40,50);

    $Y = 20;

    $i = 0;
    foreach ($X as $val) {
        
        if ($val==$Y){

            unset($X[$i]);
        }

        $i++;
    }
    
  
    var_dump ($X);
?>