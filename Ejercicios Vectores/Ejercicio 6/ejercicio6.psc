Algoritmo ejercicio6
    Definir dim, tipo, i Como Entero;
    Definir vector Como Entero;
    Dimension vector[100];
    
    Escribir "Ingrese la dimensión del vector:";
    Leer dim;
    Escribir "Seleccione tipo de números:";
    Escribir "1. Positivos";
    Escribir "2. Negativos"; 
    Escribir "3. Ceros";
    Escribir "4. Mixtos";
    Leer tipo;
    
    Para i = 0 Hasta dim-1 Hacer
        Segun tipo Hacer
            1: // Positivos
                vector[i] <- azar(100) + 1;
            2: // Negativos
                vector[i] <- azar(100) - 100;
            3: // Ceros
                vector[i] <- 0;
            4: // Mixtos
                vector[i] <- azar(201) - 100;
        FinSegun;
    FinPara;
    
    Escribir "Vector generado: [", Sin Saltar;
    Para i = 0 Hasta dim-1 Hacer
        Escribir Sin Saltar vector[i];
        Si i < dim-1 Entonces
            Escribir Sin Saltar ", ";
        FinSi;
    FinPara;
    Escribir "]";
FinAlgoritmo