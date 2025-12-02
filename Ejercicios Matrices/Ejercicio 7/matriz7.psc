Algoritmo matriz7
    Definir ventas, n, m, i, j, max_ventas, sucursal_max Como Entero;
    Definir suma_anio, suma_sucursal, promedio_anio, max_promedio, anio_max, promedio_actual Como Real;
    
    Escribir "Numero de sucursales:";
    Leer n;
    Escribir "Numero de años:";
    Leer m;
    
    Dimension ventas[n, m];
    Dimension suma_anio[m];
    
    Escribir "Ingrese las ventas:";
    Para i = 0 Hasta n-1
        Escribir "Sucursal ", i+1, ":";
        Para j = 0 Hasta m-1
            Escribir "Año ", j+1, ":";
            Leer ventas[i, j];
        FinPara
    FinPara
    
    max_ventas = 0;
    sucursal_max = 0;
    Para i = 0 Hasta n-1
        suma_sucursal = 0;
        Para j = 0 Hasta m-1
            suma_sucursal = suma_sucursal + ventas[i, j];
        FinPara
        Si suma_sucursal > max_ventas Entonces
            max_ventas = suma_sucursal;
            sucursal_max = i + 1;
        FinSi
    FinPara
    
    Escribir "a) Sucursal que mas vendio: ", sucursal_max;
    
    Escribir "b) Promedio de ventas por año:";
    Para j = 0 Hasta m-1
        suma_anio[j] = 0;
        Para i = 0 Hasta n-1
            suma_anio[j] = suma_anio[j] + ventas[i, j];
        FinPara
        promedio_anio = suma_anio[j] / n;
        Escribir "Año ", j+1, ": ", promedio_anio;
    FinPara
    
    max_promedio = suma_anio[0] / n;
    anio_max = 1;
    Para j = 1 Hasta m-1
        promedio_actual = suma_anio[j] / n;
        Si promedio_actual > max_promedio Entonces
            max_promedio = promedio_actual;
            anio_max = j + 1;
        FinSi
    FinPara
    
    Escribir "c) Año con mayor promedio: ", anio_max;
FinAlgoritmo