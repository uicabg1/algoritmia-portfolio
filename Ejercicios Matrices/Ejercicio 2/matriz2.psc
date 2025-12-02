Algoritmo matriz2
    Definir A, B, n, i, j, fila, columna, temp Como Entero;
    
    Escribir "Dimension de las matrices (nxn):";
    Leer n;
    
    Dimension A[n, n];
    Dimension B[n, n];
    
    Escribir "Matriz A:";
    Para i = 0 Hasta n-1
        Para j = 0 Hasta n-1
            Escribir "A[", i, ",", j, "]:";
            Leer A[i, j];
        FinPara
    FinPara
    
    Escribir "Matriz B:";
    Para i = 0 Hasta n-1
        Para j = 0 Hasta n-1
            Escribir "B[", i, ",", j, "]:";
            Leer B[i, j];
        FinPara
    FinPara
    
    Escribir "Fila de A a intercambiar (0-", n-1, "):";
    Leer fila;
    Escribir "Columna de B a intercambiar (0-", n-1, "):";
    Leer columna;
    
    Para i = 0 Hasta n-1
        temp <- A[fila, i];
        A[fila, i] <- B[i, columna];
        B[i, columna] <- temp;
    FinPara
    
    Escribir "Matriz A despues del intercambio:";
    Para i = 0 Hasta n-1
        Para j = 0 Hasta n-1
            Escribir Sin Saltar A[i, j], " ";
        FinPara
        Escribir "";
    FinPara
    
    Escribir "Matriz B despues del intercambio:";
    Para i = 0 Hasta n-1
        Para j = 0 Hasta n-1
            Escribir Sin Saltar B[i, j], " ";
        FinPara
        Escribir "";
    FinPara
FinAlgoritmo