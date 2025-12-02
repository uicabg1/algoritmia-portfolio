Algoritmo ejercicio7
    Definir arreglo, nuevo_valor, i Como Entero;
    Dimension arreglo[5];
    
    Para i = 0 Hasta 4 Hacer
        arreglo[i] <- 0;
    FinPara
    
    Escribir "Arreglo inicial:";
    Para i = 0 Hasta 4 Hacer
        Escribir Sin Saltar arreglo[i], " ";
    FinPara
    Escribir "";
    
    Repetir
        Escribir "Ingrese un número (0 para terminar):";
        Leer nuevo_valor;
        
        Si nuevo_valor <> 0 Entonces
            // Desplazar elementos
            Para i = 4 Hasta 1 Con Paso -1 Hacer
                arreglo[i] <- arreglo[i-1];
            FinPara
            arreglo[0] <- nuevo_valor;
            
            Escribir "Arreglo después de la inserción:";
            Para i = 0 Hasta 4 Hacer
                Escribir Sin Saltar arreglo[i], " ";
            FinPara
            Escribir "";
        FinSi
    Hasta Que nuevo_valor = 0
FinAlgoritmo