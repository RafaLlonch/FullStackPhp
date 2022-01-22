<?php
    /* Charlie em va mossegar el dit!

    Charlie et mossegarà el dit exactament el 50% del temps.
    
    Escriu La funció isBitten () que retorna TRUE amb un 50% de probabilitat i FALSE en cas contrari.
    
    Consell: pot ser que la funció rand () et resulti útil. */

    function isBitten(){

        $numeroRandom = rand(0,100);

        if ($numeroRandom>=0 && $numeroRandom<50){
            $boolean = true;
            
        } else{
            $boolean = false;
        
        }

        return $boolean;

    }
?>