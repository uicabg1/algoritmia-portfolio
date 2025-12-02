Algoritmo ejercicio4
    Definir estados, capitales, estado_buscar Como Caracter;
    Definir i, n, encontrado Como Entero;
    
    Escribir "Cuantos estados desea registrar?";
    Leer n;
    Dimension estados[n], capitales[n];
    
    Para i = 0 Hasta n-1 Hacer
        Escribir "Estado ", i+1, ":";
        Leer estados[i];
        Escribir "Capital de ", estados[i], ":";
        Leer capitales[i];
    FinPara
    
    Repetir
        Escribir "Ingrese estado a consultar (o salir para terminar):";
        Leer estado_buscar;
        
        Si estado_buscar <> "salir" Entonces
            encontrado <- 0;
            Para i = 0 Hasta n-1 Hacer
                Si Minusculas(estados[i]) = Minusculas(estado_buscar) Entonces
                    Escribir "La capital de ", estados[i], " es: ", capitales[i];
                    encontrado <- 1;
                FinSi
            FinPara
            
            Si encontrado = 0 Entonces
                Escribir "Estado no encontrado";
            FinSi
        FinSi
    Hasta Que estado_buscar = "salir"
FinAlgoritmo