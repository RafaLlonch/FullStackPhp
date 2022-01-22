<?php 
    /*Crea un projecte Bancs, afegeix a el projecte una classe Account amb atributs per número de compte, 
    nom i cognoms de el client i el saldo actual. Defineix en la classe els següents mètodes:

    Constructor que inicialitzi els atributs.
    Crea el mètode deposit($amount) que permet ingressar una quantitat al compte.
    Crea el mètode withdraw($amount) que permet retirar una quantitat del compte sempre que hi hagi saldo, 
    si no n'hi ha el mètode haurà de retornar un missatge d'error
    Getters i Setters.
    Crea una petita interfície amb ajuda d'HTML I CSS que permeti ingressar una quantitat i dipositar o 
    retirar el saldo del compte.
    
    Fes les validacions pertinents per assegurar que la quantitat ingressada per l'usuari és correcta.*/ 

    class Account{

        protected $nom;
        protected $cognoms;
        protected $saldo;

        public function __construct($nombre,$apellidos,$dinero){
            $this->nom = $nombre;
            $this->cognoms = $apellidos;
            $this->saldo = $dinero;
        }
    }
    
    class Conta extends Account{

        private $numDeCuenta;

        public function __construct($nombre,$apellidos,$dinero,$numDeCuenta){
                Account::__construct($nombre,$apellidos,$dinero);
                $this->numDeCuenta = $numDeCuenta;
        }

        

        public function deposit($amount){

            $amount;
            $this->saldo = $this->saldo + $amount;
        }

        public function withdraw($amount){
            
            $amount;
            if ($amount>$this->saldo){
                echo "No dispones de suficiente saldo."."<br>";
            } else{
                $this->saldo = $this->saldo - $amount;
                return $this->saldo;
            }
        }

        public function mostrarCuenta(){

            echo "Número de cuenta: ".$this->numDeCuenta."<br>";
            echo "Nombre: ". $this->nom." ".$this->cognoms."<br>";
            echo "Saldo = ".$this->saldo." Euros";   
        }
    }
    
?>