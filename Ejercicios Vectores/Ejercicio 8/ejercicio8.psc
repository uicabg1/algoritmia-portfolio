Algoritmo ejercicio8
    Definir A, B, C, i, j, k, nA, nB Como Entero;
    
    Escribir "Tamaño del arreglo A:";
    Leer nA;
    Dimension A[nA];
    Escribir "Ingrese elementos ordenados de A:";
    Para i = 0 Hasta nA-1 Hacer
        Leer A[i];
    FinPara;
    
    Escribir "Tamaño del arreglo B:";
    Leer nB;
    Dimension B[nB];
    Escribir "Ingrese elementos ordenados de B:";
    Para i = 0 Hasta nB-1 Hacer
        Leer B[i];
    FinPara;
    
    Dimension C[nA + nB];
    i <- 0; j <- 0;
    
    Para k = 0 Hasta (nA+nB)-1 Hacer
        Si i < nA Y (j >= nB O A[i] <= B[j]) Entonces
            C[k] <- A[i];
            i <- i + 1;
        Sino
            C[k] <- B[j];
            j <- j + 1;
        FinSi;
    FinPara;
    
    Escribir "Arreglo mezclado:";
    Para i = 0 Hasta (nA+nB)-1 Hacer
        Escribir Sin Saltar C[i];
        Si i < (nA+nB)-1 Entonces
            Escribir Sin Saltar ", ";
        FinSi;
    FinPara;
    Escribir "";
FinAlgoritmo