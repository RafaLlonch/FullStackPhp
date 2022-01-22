<?php
    //Escriure una funciò per verificar el grau de un estudiant en d'acord a la nota.
    
    /*  Si la nota és 60% o més, el grau hauria de ser Primera Divisió.
        Si la nota està entre 45% i 59%, el grau hauria de ser Segona Divisió.
        Si la nota està entre 33% to 44%, el grau hauria de ser Tercera Divisió.
        Si la nota és menor a 33%, l'estudiant reprovarà. */

    function grauEstudiant($num){

        if ($num >=6 && $num<=10){
            echo "Primera Divisió";
        } elseif($num<=5.9 && $num>=4.5){
            echo "Segona Divisió";
        } elseif($num<4.5 && $num>=3.3){
            echo "Tercera Divisió";
        } elseif($num<3.3 && $num>=0){
            echo "Reprovaràs";
        } else{
            echo "Escriu una nota entre 0 i 10";
        }
    }

    //Prueba
    $nota = 3.2;
    grauEstudiant($nota);

?>