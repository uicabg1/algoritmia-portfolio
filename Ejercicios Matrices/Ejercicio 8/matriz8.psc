Algoritmo matriz8
    Definir ciudades Como Caracter;
    Definir carreteras, i, j Como Entero;
    Dimension ciudades[5];
    Dimension carreteras[5, 5];
    
    Escribir "Ingrese los nombres de las 5 ciudades:";
    Para i = 0 Hasta 4
        Escribir "Ciudad ", i + 1, ":";
        Leer ciudades[i];
    FinPara
    
    Para i = 0 Hasta 4
        Para j = 0 Hasta 4
            carreteras[i, j] <- 0;
        FinPara
    FinPara
    
    Escribir "Ingrese las conexiones de carreteras:";
    
    i <- 0;
    Mientras i < 4
        j <- i + 1;
        Mientras j < 5
            Escribir "¿Hay carretera entre ", ciudades[i], " y ", ciudades[j], "? (1=Sí, 0=No):";
            Leer carreteras[i, j];
            carreteras[j, i] <- carreteras[i, j];
            j <- j + 1;
        FinMientras
        i <- i + 1;
    FinMientras
    
    Escribir "Pares de ciudades unidas por carretera:";
    i <- 0;
    Mientras i < 5
        j <- i + 1;
        Mientras j < 5
            Si carreteras[i, j] = 1 Entonces
                Escribir ciudades[i], " - ", ciudades[j];
            FinSi
            j <- j + 1;
        FinMientras
        i <- i + 1;
    FinMientras
FinAlgoritmo