Algoritmo vector_extra4
    Definir alumnos Como Caracter;
    Definir tam_equipo, i, j, k, num_equipos, resto, contador Como Entero;
    Dimension alumnos[30];
    
    Escribir "Ingrese los nombres de 30 alumnos:";
    Para i = 0 Hasta 29
        Escribir "Alumno ", i+1, ":";
        Leer alumnos[i];
    FinPara
    
    Repetir
        Escribir "Ingrese tamaño de equipo (2-5):";
        Leer tam_equipo;
        
        Si tam_equipo < 2 O tam_equipo > 5 Entonces
            Escribir "Tamaño invalido. Debe ser entre 2 y 5.";
        FinSi
    Hasta Que tam_equipo >= 2 Y tam_equipo <= 5
    
    num_equipos = trunc(30 / tam_equipo);
    resto = 30 % tam_equipo;
    
    k <- 0;
    contador <- 1;
    
    Escribir "";
    Escribir "Equipos formados:";
    
    // Mostrar equipos completos
    Para i = 1 Hasta num_equipos
        Escribir "Equipo ", i, ":";
        Para j = 1 Hasta tam_equipo
            Escribir "- ", alumnos[k];
            k <- k + 1;
        FinPara
        Escribir "";
    FinPara
    
    // Mostrar equipo extra si hay resto
    Si resto > 0 Entonces
        Escribir "Equipo ", num_equipos+1, " (con ", resto, " alumnos):";
        Mientras k < 30
            Escribir "- ", alumnos[k];
            k <- k + 1;
        FinMientras
    FinSi
FinAlgoritmo