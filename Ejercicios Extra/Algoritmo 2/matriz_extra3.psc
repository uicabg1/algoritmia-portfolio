Algoritmo matriz_extra3
    Definir matriz, n, i, j Como Entero;
    
    Escribir "Dimension de la matriz (nxn):";
    Leer n;
    
    Dimension matriz[n, n];
    
    Para i = 0 Hasta n-1
        Para j = 0 Hasta n-1
            matriz[i, j] = i + j;
        FinPara
    FinPara
    
    Escribir "Matriz resultante:";
    Para i = 0 Hasta n-1
        Para j = 0 Hasta n-1
            Escribir Sin Saltar matriz[i, j], " ";
        FinPara
        Escribir "";
    FinPara
FinAlgoritmo