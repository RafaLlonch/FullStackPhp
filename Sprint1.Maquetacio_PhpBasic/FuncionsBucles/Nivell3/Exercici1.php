<?php
    /* La criba d'Eratóstenes és un algoritme pensat per a trobar nombres primers dins d'un 
    interval donat. Basats en l'informació de l'enllaç adjunt, implementa la criba d'Eratóstenes 
    dins d'una funció, de tal forma que poguem invocar la funció per a un número concret. */

    function criba ($num){
    
        for($i=2;$i<$num;$i++){ 
            $numeros[$i]=true;
        }

        $numeros[2]=true;

        for ($n=2;$n<$num;$n++){
            if ($numeros[$n]){
                for ($i=$n*$n;$i<$num;$i+=$n){
                    $numeros[$i] = false;
                }
            }   
        }

        echo "Numeros primos: ";
        for ($n = 2; $n < $num; $n++){
            if ($numeros[$n]){
                echo $n." ";
            }
        }
    }

    $valor = 10;
    criba($valor);
?>