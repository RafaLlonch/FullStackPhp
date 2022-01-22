<?php
    /* Imagina't que volem que compti fins a un nombre diferent de 10. Programa la funció perquè el
    final del compte estigui parametritzat. */

    function contador($final){

        for($i=0;$i<=$final;$i=$i+2){ 
            echo $i;
            echo "<br>";
        }
    
    }

    //Prueba
    $numfinal = 40;
    contador($numfinal);

?>