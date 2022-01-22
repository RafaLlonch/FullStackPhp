<?php
    /* Escriu un programa en PHP per convertir una cadena en un array 
    (retallant cada caràcter i eliminant les línies buides). */
     
    $cadena = $_POST["campo1"];

    $cadenaArray = array();

    for($i=0;$i<strlen($cadena);$i++){
	
        if($cadena[$i] != ' '){ array_push($cadenaArray,$cadena[$i]);}
  
    }
    
    print_r($cadenaArray);

?>