<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
    <body>
        <h2>Tira el dado</h2>
        <?php
        /*Crea la classe PokerDice. Les cares d'un dau de pòquer tenen les següents figures: As, K, Q, J, 7 i 8.
    
        Crea el mètode throw que no fa altra cosa que tirar el dau, és a dir, genera un valor aleatori per a 
        l'objecte a què se li aplica el mètode.
    
        Crea també el mètode shapeName, que digui quina és la figura que ha sortit en l'última tirada de el dau 
        en qüestió.
    
        Crea finalment el mètode getTotalThrows que ha de mostrar el nombre total de tirades entre tots els daus
    
        Realitza una aplicació que permeti tirar cinc daus de pòquer alhora.*/
    
        class PokerDice {
            
            private $dado = array ('As','K','Q','J','7','8');
            private $tirada = array ();
            private $cara;
            private $contador = 0;
            

            function throw(){
                
                $valor = $this->dado[rand(0,5)];
                //return $valor;
                $this->cara = $valor;
            }

            function shapeName(){

                if ($this->cara == 'As'){
                    echo 'Ha salido As'."<br>";  
                } elseif ($this->cara == 'K'){
                    echo 'Ha salido K'."<br>";
                } elseif ($this->cara == 'Q'){
                    echo 'Ha salido Q'."<br>";
                } elseif ($this->cara == 'J'){
                    echo 'Ha salido J'."<br>";
                } elseif ($this->cara == '7'){
                    echo 'Ha salido el 7'."<br>";
                } else {
                    echo 'Ha salido el 8'."<br>";
                }
            } 

            function cincodados(){
                
                for ($i=0;$i<5;$i++){
                    $this->throw();
                    $this->shapeName();
                    array_push($this->tirada,$this->cara);
                }
            }

            function getTotalThrows(){


            }
        }

    $tirada1 = new PokerDice ();
    $tirada1->cincodados();


    ?>
    </body>
</html>