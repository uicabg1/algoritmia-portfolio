Algoritmo matriz5
    Definir matriz, i, j, suma, total Como Real;
    Definir media, suma_cuadrados, desviacion Como Real;
    
    Dimension matriz[5, 3];
    
    Escribir "Ingrese los elementos de la matriz 5x3:";
    Para i = 0 Hasta 4
        Para j = 0 Hasta 2
            Escribir "Elemento [", i, ",", j, "]:";
            Leer matriz[i, j];
        FinPara
    FinPara
    
    suma = 0;
    total = 5 * 3;
    
    Para i = 0 Hasta 4
        Para j = 0 Hasta 2
            suma = suma + matriz[i, j];
        FinPara
    FinPara
    
    media = suma / total;
    suma_cuadrados = 0;
    
    Para i = 0 Hasta 4
        Para j = 0 Hasta 2
            suma_cuadrados = suma_cuadrados + (matriz[i, j] - media)^2;
        FinPara
    FinPara
    
    desviacion = raiz(suma_cuadrados / total);
    
    Escribir "Desviacion estandar: ", desviacion;
FinAlgoritmo