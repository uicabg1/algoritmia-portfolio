Algoritmo matriz3
    Definir matriz, i, j, suma_pos, suma_neg, cont_pos, cont_neg Como Entero;
    Definir prom_pos, prom_neg Como Real;
    
    Dimension matriz[12, 19];
    
    Escribir "Ingrese los elementos de la matriz 12x19:";
    Para i = 0 Hasta 11
        Para j = 0 Hasta 18
            Escribir "Elemento [", i, ",", j, "]:";
            Leer matriz[i, j];
        FinPara
    FinPara
    
    suma_pos = 0;
    suma_neg = 0;
    cont_pos = 0;
    cont_neg = 0;
    
    Para i = 0 Hasta 11
        Para j = 0 Hasta 18
            Si matriz[i, j] > 0 Entonces
                suma_pos = suma_pos + matriz[i, j];
                cont_pos = cont_pos + 1;
            Sino Si matriz[i, j] < 0 Entonces
					suma_neg = suma_neg + matriz[i, j];
					cont_neg = cont_neg + 1;
				FinSi
			FinSi
		FinPara
		
		Si cont_pos > 0 Entonces
			prom_pos = suma_pos / cont_pos;
			Escribir "Promedio de elementos positivos: ", prom_pos;
		Sino
			Escribir "No hay elementos positivos";
		FinSi
		
		Si cont_neg > 0 Entonces
			prom_neg = suma_neg / cont_neg;
			Escribir "Promedio de elementos negativos: ", prom_neg;
		Sino
			Escribir "No hay elementos negativos";
		FinSi
	FinPara
FinAlgoritmo