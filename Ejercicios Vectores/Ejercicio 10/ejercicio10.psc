Algoritmo ejercicio10
    Definir nombres Como Caracter;
    Definir sueldos, total, promedio, max_sueldo Como Real;
    Definir n, i, indice_max Como Entero;
    
    Escribir "Cuantos empleados?";
    Leer n;
    Dimension nombres[n], sueldos[n];
    
    total <- 0;
    max_sueldo <- 0;
    indice_max <- 0;
    
    Para i <- 0 Hasta n-1 Hacer
        Escribir "Empleado ", i+1, ":";
        Escribir "Nombre: "; Leer nombres[i];
        Escribir "Sueldo: "; Leer sueldos[i];
        
        total <- total + sueldos[i];
        
        Si sueldos[i] > max_sueldo Entonces
            max_sueldo <- sueldos[i];
            indice_max <- i;
        FinSi
    FinPara
    
    promedio <- total / n;
    
    Escribir "Sueldo promedio: $", promedio;
    Escribir "Total de sueldos: $", total;
    Escribir "Empleado que gana mas: ", nombres[indice_max];
    Escribir "Sueldo maximo: $", max_sueldo;
FinAlgoritmo