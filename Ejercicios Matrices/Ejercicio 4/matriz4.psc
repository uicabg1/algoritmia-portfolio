Algoritmo matriz4
    Definir matriz, i, j, numero, encontrado Como Entero;
    
    Dimension matriz[10, 10];
    
    Para i = 0 Hasta 9
        Para j = 0 Hasta 9
            matriz[i, j] = azar(100);
        FinPara
    FinPara
    
    Escribir "Matriz generada:";
    Para i = 0 Hasta 9
        Para j = 0 Hasta 9
            Escribir Sin Saltar matriz[i, j], " ";
        FinPara
        Escribir "";
    FinPara
    
    Escribir "Ingrese numero a buscar:";
    Leer numero;
    
    encontrado = 0;
    Para i = 0 Hasta 9
        Para j = 0 Hasta 9
            Si matriz[i, j] = numero Entonces
                Escribir "Encontrado en [", i, ",", j, "]";
                encontrado = 1;
            FinSi
        FinPara
    FinPara
    
    Si encontrado = 0 Entonces
        Escribir "Numero no encontrado";
    FinSi
FinAlgoritmo