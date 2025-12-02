Algoritmo matriz_extra5
    Definir A, B, C, n, m, k, i, j, p, suma Como Entero;
    
    Escribir "=== MULTIPLICACION DE MATRICES ===";
    
    // Dimensiones de la matriz A (n x m)
    Escribir "Dimensiones de la matriz A:";
    Escribir "Numero de filas (n):";
    Leer n;
    Escribir "Numero de columnas (m):";
    Leer m;
    
    // Dimensiones de la matriz B (m x k)
    Escribir "";
    Escribir "Dimensiones de la matriz B:";
    Escribir "Numero de columnas de B (k):";
    Leer k;
    
    // Verificar compatibilidad
    Si m <= 0 O k <= 0 Entonces
        Escribir "Error: Las dimensiones deben ser positivas.";
	FinSi

	Dimension A[n, m];
	Dimension B[m, k];
	Dimension C[n, k];

	// Ingresar matriz A
	Escribir "";
	Escribir "=== INGRESAR MATRIZ A (" , n , "x" , m , ") ===";
	Para i = 0 Hasta n-1
		Para j = 0 Hasta m-1
			Escribir "A[" , i , "," , j , "]:";
			Leer A[i, j];
		FinPara
	FinPara

	// Ingresar matriz B
	Escribir "";
	Escribir "=== INGRESAR MATRIZ B (" , m , "x" , k , ") ===";
	Para i = 0 Hasta m-1
		Para j = 0 Hasta k-1
			Escribir "B[" , i , "," , j , "]:";
			Leer B[i, j];
		FinPara
	FinPara

	// Inicializar matriz C con ceros
	Para i = 0 Hasta n-1
		Para j = 0 Hasta k-1
			C[i, j] <- 0;
		FinPara
	FinPara

	// Multiplicacion de matrices: C = A x B
	Escribir "";
	Escribir "=== MULTIPLICANDO MATRICES ===";
	Para i = 0 Hasta n-1
		Para j = 0 Hasta k-1
			suma <- 0;
			Para p = 0 Hasta m-1
				suma <- suma + (A[i, p] * B[p, j]);
			FinPara
			C[i, j] <- suma;
		FinPara
	FinPara

	// Mostrar resultados
	Escribir "";
	Escribir "=== RESULTADO: MATRIZ C (" , n , "x" , k , ") ===";
	Escribir "C = A x B";
	Escribir "";

	Para i = 0 Hasta n-1
		Para j = 0 Hasta k-1
			Escribir Sin Saltar C[i, j] , " ";
		FinPara
		Escribir "";
	FinPara

	// Mostrar explicacion del calculo
	Escribir "";
	Escribir "=== EXPLICACION ===";
	Escribir "C[i,j] = ? A[i,p] * B[p,j] para p = 0 hasta m-1";
	Escribir "Donde:";
	Escribir "- i va de 0 a " , n-1 , " (filas de A y C)";
	Escribir "- j va de 0 a " , k-1 , " (columnas de B y C)";
	Escribir "- p va de 0 a " , m-1 , " (columnas de A = filas de B)";
	
FinAlgoritmo