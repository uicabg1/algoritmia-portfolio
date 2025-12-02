Algoritmo vector_extra2
    Definir arreglo, i, opcion Como Real;
    Definir x, norma, suma Como Real;
    Dimension arreglo[10];
    
    Escribir "Ingrese 10 valores reales:";
    Para i = 0 Hasta 9
        Escribir "Valor ", i+1, ":";
        Leer arreglo[i];
    FinPara
    
    Repetir
        Escribir "";
        Escribir "Menú de opciones:";
        Escribir "1. Sumar x al arreglo";
        Escribir "2. Multiplicar por x el arreglo";
        Escribir "3. Calcular norma euclidiana";
        Escribir "4. Salir";
        Escribir "Seleccione opción:";
        Leer opcion;
        
        Segun opcion
            Caso 1:
                Escribir "Ingrese valor de x:";
                Leer x;
                Escribir "Arreglo antes:";
                Para i = 0 Hasta 9
                    Escribir Sin Saltar arreglo[i], " ";
                FinPara
                Escribir "";
                Para i = 0 Hasta 9
                    arreglo[i] = arreglo[i] + x;
                FinPara
                Escribir "Arreglo después:";
                Para i = 0 Hasta 9
                    Escribir Sin Saltar arreglo[i], " ";
                FinPara
                Escribir "";
                
            Caso 2:
                Escribir "Ingrese valor de x:";
                Leer x;
                Escribir "Arreglo antes:";
                Para i = 0 Hasta 9
                    Escribir Sin Saltar arreglo[i], " ";
                FinPara
                Escribir "";
                Para i = 0 Hasta 9
                    arreglo[i] = arreglo[i] * x;
                FinPara
                Escribir "Arreglo después:";
                Para i = 0 Hasta 9
                    Escribir Sin Saltar arreglo[i], " ";
                FinPara
                Escribir "";
                
            Caso 3:
                suma = 0;
                Para i = 0 Hasta 9
                    suma = suma + arreglo[i]^2;
                FinPara
                norma = raiz(suma);
                Escribir "Norma euclidiana: ", norma;
        FinSegun
    Hasta Que opcion = 4
FinAlgoritmo