<?php
    /* Crea una classe Employee defineix com a atributs el seu nom i sou. Definir un mètode 
    initialize que rebi com a paràmetres el nom i sou. Plantejar un segon mètode print que 
    imprimeixi el nom i un missatge si ha o no pagar impostos (si el sou supera 6000 paga impostos). */

    class Employee {

        private $nom;
        private $sou;

        function initialize ($nombre,$sueldo){

            $this->nom = $nombre;
            $this->sou = $sueldo;
        }

        function print (){

            echo $this->nom." ";
            if (($this->sou)>6000){
                echo 'Ha de pagar impostos.';
            } else {
                echo 'No ha de pagar impostos.';
            }
        }
    }

    $empleado1 = new Employee();
    $empleado1->initialize('Rafa Llonch','6001');
    $empleado1->print();
?>