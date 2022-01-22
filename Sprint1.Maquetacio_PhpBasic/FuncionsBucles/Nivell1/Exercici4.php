<?php
    /* Per prevenir oblits a l'utilitzar la nostra meravellosa opció "amagatall" establirem un 
    paràmetre per defecte igual a 10 a la funció que s'encarrega de fer aquest compte. */

    function contador(){

        $parametre = 10;
        for($i=0;$i<=$parametre;$i=$i+2){ 
            echo $i;
            echo "<br>";
        }
    
    }

    //Prueba
    contador();

?>
