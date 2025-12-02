Algoritmo ejercicio5
    Definir articulos, seleccionados Como Caracter;
    Definir precios, presupuesto, total Como Real;
    Definir i, opcion, cont_seleccionados Como Entero;
    Dimension articulos[10], precios[10], seleccionados[10];
    
    // Artículo y precio
    articulos[0] <- "Leche"; precios[0] <- 25;
    articulos[1] <- "Pan"; precios[1] <- 15;
    articulos[2] <- "Huevos"; precios[2] <- 45;
    articulos[3] <- "Arroz"; precios[3] <- 20;
    articulos[4] <- "Frijol"; precios[4] <- 30;
    articulos[5] <- "Aceite"; precios[5] <- 35;
    articulos[6] <- "Azucar"; precios[6] <- 18;
    articulos[7] <- "Sal"; precios[7] <- 10;
    articulos[8] <- "Cafe"; precios[8] <- 80;
    articulos[9] <- "Galletas"; precios[9] <- 22;
    
    Escribir "Ingrese su presupuesto:";
    Leer presupuesto;
    total <- 0;
    cont_seleccionados <- 0;
    
    Repetir
        Escribir "";
        Escribir "Artículos disponibles:";
        Para i = 0 Hasta 9 Hacer
            Escribir i+1, ". ", articulos[i], " - $", precios[i];
        FinPara
        Escribir "Presupuesto disponible: $", presupuesto - total;
        Escribir "Seleccione artículo (1-10) o 0 para terminar:";
        Leer opcion;
        
        Si opcion >= 1 Y opcion <= 10 Entonces
            Si total + precios[opcion-1] <= presupuesto Entonces
                total <- total + precios[opcion-1];
                seleccionados[cont_seleccionados] <- articulos[opcion-1];
                cont_seleccionados <- cont_seleccionados + 1;
                Escribir "Artículo agregado: ", articulos[opcion-1];
            SiNo
                Escribir "No hay suficiente presupuesto para este artículo";
            FinSi
        FinSi
    Hasta Que opcion = 0
    
    Escribir "";
    Escribir "Artículos seleccionados:";
    Para i = 0 Hasta cont_seleccionados-1 Hacer
        Escribir "- ", seleccionados[i];
    FinPara
    Escribir "Total gastado: $", total;
FinAlgoritmo