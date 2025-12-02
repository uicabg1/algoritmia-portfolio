Algoritmo matriz10
    Definir calificaciones, promedios, i, j, suma Como Real;
    Dimension calificaciones[5, 4];
    Dimension promedios[4];
    
    Escribir "Ingrese calificaciones (1-10) de 5 clientes para 4 aspectos:";
    Escribir "1. Atencion empleados";
    Escribir "2. Calidad comida"; 
    Escribir "3. Justicia precio";
    Escribir "4. Ambiente";
    
    Para i = 0 Hasta 4
        Escribir "Cliente ", i+1, ":";
        Para j = 0 Hasta 3
            Escribir "Aspecto ", j+1, ":";
            Leer calificaciones[i, j];
        FinPara
    FinPara
    
    Para j = 0 Hasta 3
        suma = 0;
        Para i = 0 Hasta 4
            suma = suma + calificaciones[i, j];
        FinPara
        promedios[j] = suma / 5;
    FinPara
    
    Escribir "Matriz de calificaciones:";
    Para i = 0 Hasta 4
        Para j = 0 Hasta 3
            Escribir Sin Saltar calificaciones[i, j], " ";
        FinPara
        Escribir "";
    FinPara
    
    Escribir "Promedios por aspecto:";
    Para j = 0 Hasta 3
        Escribir "Aspecto ", j+1, ": ", promedios[j];
    FinPara
FinAlgoritmo