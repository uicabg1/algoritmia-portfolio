Algoritmo ejercicio1
	Definir num, numero, i, mayor, menor Como Entero;
	Dimension numero[20];
	
	num = 0;
	
	Para i = 1 Hasta 19 Hacer
		num <- azar(100) + 1;
		numero[i]<- num;
		Escribir "Número ", i, ": ", numero[i];
		
		Si i = 1 Entonces
			mayor <- numero[i];
			menor <- numero[i];
		SiNo
			Si numero[i] > mayor Entonces
				mayor <- numero[i];
			FinSi
			
			Si numero[i] < menor Entonces
				menor <- numero[i];
			FinSi
		FinSi
	FinPara
	
	Escribir "El número mayor del arreglo es: ", mayor;
	Escribir "El número  menor del arreglo es: ", menor;
	
FinAlgoritmo
