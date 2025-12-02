Algoritmo matriz9
    Definir A, n, i, j, diagonal Como Entero;
    
    Escribir "Dimension de la matriz cuadrada:";
    Leer n;
    
    Dimension A[n, n];
    
    Escribir "Ingrese los elementos de la matriz:";
    Para i = 0 Hasta n-1
        Para j = 0 Hasta n-1
            Escribir "A[", i, ",", j, "]:";
            Leer A[i, j];
        FinPara
    FinPara
    
    diagonal = 1;
    Para i = 0 Hasta n-1
        Para j = 0 Hasta n-1
            Si i = j Entonces
                Si A[i, j] = 0 Entonces
                    diagonal = 0;
                FinSi
            Sino
                Si A[i, j] <> 0 Entonces
                    diagonal = 0;
                FinSi
            FinSi
        FinPara
    FinPara
    
    Si diagonal = 1 Entonces
        Escribir "La matriz es diagonal";
    Sino
        Escribir "La matriz NO es diagonal";
    FinSi
FinAlgoritmo