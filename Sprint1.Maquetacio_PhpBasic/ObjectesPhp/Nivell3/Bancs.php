<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="BancsIndex.css">
  <title>Document</title>
</head>
<body>
  
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

    //Incluyo el archivo Account.php donde estan desfinidas las clases
    include "Account.php";

    //Creo una cuenta nueva
    $conta1 = new Conta ('Rafa','Llonch Perez',0,2212323243435454);
    
    $ingreso = $_POST["campo1"];
    $retiro = $_POST["campo2"];

      if ($ingreso!=""){
          $conta1->deposit($ingreso);
       }
    
      if ($retiro!=""){
          $conta1->withdraw($retiro);
      }
    
    $conta1->mostrarCuenta();
    //$conta1->deposit(40);
    //$conta1->withdraw(10);
    //$conta1->mostrarCuenta();

  ?>
  
</body>
</html>
