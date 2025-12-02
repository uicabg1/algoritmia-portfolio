Algoritmo ejercicio2
    Definir X, Ye, i, d1, d2, d3, d4, d5, d6 Como Real;
    Dimension X[4], Ye[4];
    
    Escribir "Ingrese las coordenadas de los 4 puntos:";
    Para i = 0 Hasta 3 Hacer
        Escribir "Punto ", i+1, ":";
        Escribir "X: "; Leer X[i];
        Escribir "Ye: "; Leer Ye[i];
    FinPara
    
    // Distancia entre dos puntos
    d1 <- raiz((X[1]-X[0])^2 + (Ye[1]-Ye[0])^2);
    d2 <- raiz((X[2]-X[1])^2 + (Ye[2]-Ye[1])^2);
    d3 <- raiz((X[3]-X[2])^2 + (Ye[3]-Ye[2])^2);
    d4 <- raiz((X[0]-X[3])^2 + (Ye[0]-Ye[3])^2);
    
    // Diagonales
    d5 <- raiz((X[2]-X[0])^2 + (Ye[2]-Ye[0])^2);
    d6 <- raiz((X[3]-X[1])^2 + (Ye[3]-Ye[1])^2);
    
    Si (d1 = d2) && (d2 = d3) && (d3 = d4) && (d5 = d6) Entonces
        Escribir "Los puntos forman un cuadrado";
    SiNo
        Escribir "Los puntos NO forman un cuadrado";
    FinSi
FinAlgoritmo
