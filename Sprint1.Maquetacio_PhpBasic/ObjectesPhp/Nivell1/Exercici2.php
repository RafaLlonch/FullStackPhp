<?php
    /* Escriu un programa que defineixi una classe Shape amb un constructor que rebi com a paràmetres 
    l'ample i alt. Defineix dues subclasses; Triangle i Rectangle que heretin de Shape i que calculin 
    respectivament l'àrea de la forma area().

    A l'arxiu main defineix dos objectes, un triangle i un rectangle i truca al mètode area de cadascun. */

    class Shape {

        protected $ample;
        protected $alt;

        public function __construct($base,$altura){
            $this->ample = $base;
            $this->alt = $altura;
        }
    }

    class Triangle extends Shape{

        public function __construct($base,$altura){
            Shape::__construct($base,$altura);
        }

        public function area(){

            $resultado = ($this->alt*$this->ample)/2;
            echo 'El área del triángulo mide: '.$resultado;
            echo "<br>";
        }
    }

    class Rectangle extends Shape{
        
        public function __construct($base,$altura){
            Shape::__construct($base,$altura);
        }

        public function area(){

            $resultado = $this->alt*$this->ample;
            echo 'El área del rectángulo mide: '.$resultado;      
        }
    }

    $triangle1 = new Triangle (2,3);
    $triangle1->area();

    $rectangle1 = new Rectangle (4,5);
    $rectangle1->area();
?>