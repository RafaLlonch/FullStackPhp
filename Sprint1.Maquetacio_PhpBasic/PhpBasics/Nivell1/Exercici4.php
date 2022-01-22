<?php
    /* Declara dues variables X i Y de tipus int, dues variables N i M de tipus double
    i assigna a cadascuna un valor. A continuació, mostra per pantalla per a X i Y: */

    $X = 2;
    $Y = 5;

    //El valor de cada variable
    echo ("X = ".$X);
    echo "<br>";
    echo ("Y = ".$Y);
    echo "<br>";

    //La suma
    echo ("Suma = ".($X + $Y));
    echo "<br>";

    //La resta
    echo ("Resta = ".($X - $Y));
    echo "<br>";

    //El producte
    echo ("Producte = ".($X * $Y));
    echo "<br>";

    //El mòdul
    echo ("Modul = ".($X % $Y));
    echo "<br>";
    
    echo "<br>";

    //Per N i M realitzaràs el mateix.
    $N = 2.5;
    $M = 5.5;

    //El valor de cada variable
    echo ("N = ".$N);
    echo "<br>";
    echo ("M = ".$M);
    echo "<br>";

    //La suma
    echo ("Suma = ".($N + $M));
    echo "<br>";

    //La resta
    echo ("Resta = ".($N - $M));
    echo "<br>";

    //El producte
    echo ("Producte = ".($N * $M));
    echo "<br>";

    //El mòdul
    echo ("Modul = ".($N % $M));
    echo "<br>";
    
    //Per a totes les variables (X, I, N, M)

    echo "<br>";

    //El doble de cada variable
    echo ("X x 2 = ".$X*2);
    echo "<br>";
    echo ("Y x 2 = ".$Y*2);
    echo "<br>";
    echo ("N x 2 = ".$N*2);
    echo "<br>";
    echo ("M x 2 = ".$M*2);
    echo "<br>";

    echo "<br>";
    //La suma de totes les variables
    echo ("X + Y + N + M = ".$X + $Y + $N + $M);
    echo "<br>";

    //El producte de totes les variables */
    echo ("X x Y x N x M = ".$X * $Y * $N * $M);

?>