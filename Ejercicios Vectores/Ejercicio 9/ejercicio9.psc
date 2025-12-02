Algoritmo ejercicio9
    Definir produccion, total_tipo, total_anio Como Real;
    Definir n, i, j, anio_max, anio_min Como Entero;
    Definir max_tipo2, min_tipo3 Como Real;
    Definir cont_max, cont_min Como Entero;
    
    Escribir "Cuantos años de producción?";
    Leer n;
    
    Dimension produccion[5, 50];
    Dimension total_tipo[5];
    Dimension total_anio[50];
    
    Para i = 0 Hasta 4 Hacer
        Escribir "Tipo de vino ", i+1, ":";
        Para j = 0 Hasta n-1 Hacer
            Escribir "Año ", j+1, ":";
            Leer produccion[i, j];
        FinPara
    FinPara
    
    // a. Total por tipo de vino
    Escribir "a) Total producido por tipo de vino:";
    Para i = 0 Hasta 4 Hacer
        total_tipo[i] = 0;
        Para j = 0 Hasta n-1 Hacer
            total_tipo[i] = total_tipo[i] + produccion[i, j];
        FinPara
        Escribir "Tipo ", i+1, ": ", total_tipo[i], " litros";
    FinPara
    
    // b. Total por año
    Escribir "b) Total producido por año:";
    Para j = 0 Hasta n-1 Hacer
        total_anio[j] = 0;
        Para i = 0 Hasta 4 Hacer
            total_anio[j] = total_anio[j] + produccion[i, j];
        FinPara
        Escribir "Año ", j+1, ": ", total_anio[j], " litros";
    FinPara
    
    // c. Año con mayor producción tipo 2
    max_tipo2 = produccion[1, 0];
    anio_max = 1;
    cont_max = 1;
    
    Para j = 1 Hasta n-1 Hacer
        Si produccion[1, j] > max_tipo2 Entonces
            max_tipo2 = produccion[1, j];
            anio_max = j + 1;
            cont_max = 1;
        Sino 
            Si produccion[1, j] = max_tipo2 Entonces
                cont_max = cont_max + 1;
            FinSi
        FinSi
    FinPara
    
    Si cont_max = 1 Entonces
        Escribir "c) Año con mayor producción tipo 2: Año ", anio_max, " con ", max_tipo2, " litros";
    FinSi
    
    // d. Año con menor producción tipo 3
    min_tipo3 = produccion[2, 0];
    anio_min = 1;
    cont_min = 1;
    
    Para j = 1 Hasta n-1 Hacer
        Si produccion[2, j] < min_tipo3 Entonces
            min_tipo3 = produccion[2, j];
            anio_min = j + 1;
            cont_min = 1;
        Sino 
            Si produccion[2, j] = min_tipo3 Entonces
                cont_min = cont_min + 1;
            FinSi
        FinSi
    FinPara
    
    Si cont_min = 1 Entonces
        Escribir "d) Año con menor producción tipo 3: Año ", anio_min, " con ", min_tipo3, " litros";
    FinSi
FinAlgoritmo