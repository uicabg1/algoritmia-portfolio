Algoritmo matriz1
    Definir matriz, vector, n, m, i, j, suma, total, moda, frecuencia, max_frecuencia, temp, k Como Entero;
    Definir media, mediana, rango Como Real;
    
    Escribir "Numero de filas:";
    Leer n;
    Escribir "Numero de columnas:";
    Leer m;
    
    Dimension matriz[n, m];
    total = n * m;
    Dimension vector[total];
    
    Escribir "Ingrese los elementos de la matriz:";
    Para i = 0 Hasta n-1
        Para j = 0 Hasta m-1
            Escribir "Elemento [", i, ",", j, "]:";
            Leer matriz[i, j];
        FinPara
    FinPara
    
    k = 0;
    Para i = 0 Hasta n-1
        Para j = 0 Hasta m-1
            vector[k] = matriz[i, j];
            k = k + 1;
        FinPara
    FinPara
    
    Para i = 0 Hasta total-2
        Para j = 0 Hasta total-2-i
            Si vector[j] > vector[j+1] Entonces
                temp = vector[j];
                vector[j] = vector[j+1];
                vector[j+1] = temp;
            FinSi
        FinPara
    FinPara
    
    suma = 0;
    Para i = 0 Hasta total-1
        suma = suma + vector[i];
    FinPara
    media = suma / total;
    
    Si total % 2 = 0 Entonces
        mediana = (vector[total/2-1] + vector[total/2]) / 2;
    Sino
        mediana = vector[trunc(total/2)];
    FinSi
    
    max_frecuencia = 1;
    moda = vector[0];
    frecuencia = 1;
    
    Para i = 1 Hasta total-1
        Si vector[i] = vector[i-1] Entonces
            frecuencia = frecuencia + 1;
        Sino
            frecuencia = 1;
        FinSi
        
        Si frecuencia > max_frecuencia Entonces
            max_frecuencia = frecuencia;
            moda = vector[i];
        FinSi
    FinPara
    
    rango = vector[total-1] - vector[0];
    
    Escribir "Media: ", media;
    Escribir "Mediana: ", mediana;
    Si max_frecuencia > 1 Entonces
        Escribir "Moda: ", moda;
    Sino
        Escribir "No hay moda";
    FinSi
    Escribir "Rango: ", rango;
FinAlgoritmo