Algoritmo ejercicio3
    Definir estaturas, promedio, suma Como Real;
	Definir i, n, contador Como Entero;
    
    Escribir "Cuantos alumnos hay?";
    Leer n;
    Dimension estaturas[n];
    suma <- 0;
    
    Para i = 0 Hasta n-1 Hacer
        Escribir "Ingrese estatura del alumno ", i+1, ":";
        Leer estaturas[i];
        suma <- suma + estaturas[i];
    FinPara
    
    promedio <- suma / n;
    contador <- 0;
    
    Para i = 0 Hasta n-1 Hacer
        Si estaturas[i] > promedio Entonces
            contador <- contador + 1;
        FinSi
    FinPara
    
    Escribir "Estatura promedio: ", promedio;
    Escribir "Alumnos arriba del promedio: ", contador;
FinAlgoritmo