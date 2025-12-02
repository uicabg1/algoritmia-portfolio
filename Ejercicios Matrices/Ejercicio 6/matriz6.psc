Algoritmo matriz6
    Definir A, n, i, j, simetrica Como Entero;
    
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
    
    simetrica = 1;
    Para i = 0 Hasta n-1
        Para j = 0 Hasta n-1
            Si A[i, j] <> A[j, i] Entonces
                simetrica = 0;
            FinSi
        FinPara
    FinPara
    
    Si simetrica = 1 Entonces
        Escribir "La matriz es simetrica";
    Sino
        Escribir "La matriz NO es simetrica";
    FinSi
FinAlgoritmo