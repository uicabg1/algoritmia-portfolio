Algoritmo matriz_extra5
    Definir original, nueva, n, i, j, contador Como Entero;
    
    Escribir "Dimension de la matriz (nxn):";
    Leer n;
	
    Dimension original[n, n];
    Dimension nueva[n, n];
    
    Escribir "Ingrese los elementos de la matriz:";
    Para i = 0 Hasta n-1
        Para j = 0 Hasta n-1
            Escribir "Elemento [", i, ",", j, "]:";
            Leer original[i, j];
            nueva[i, j] = 0;
        FinPara
    FinPara
    
    contador = 1;
    Para i = 0 Hasta n-1
        Para j = 0 Hasta n-1
            Si original[i, j] % 2 = 0 Entonces
                nueva[i, j] = contador;
                contador = contador + 1;
            FinSi
        FinPara
    FinPara
    
    Escribir "Matriz original:";
    Para i = 0 Hasta n-1
        Para j = 0 Hasta n-1
            Escribir Sin Saltar original[i, j], " ";
        FinPara
        Escribir "";
    FinPara
    
    Escribir "Matriz de pares:";
    Para i = 0 Hasta n-1
        Para j = 0 Hasta n-1
            Escribir Sin Saltar nueva[i, j], " ";
        FinPara
        Escribir "";
    FinPara
FinAlgoritmo