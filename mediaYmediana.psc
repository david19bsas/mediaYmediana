Algoritmo mediaYmediana
	Definir cantidad, i, calcIndice1, calcIndice2 Como Entero;
	Definir num, coleccion, mediana, indice1, indice2 Como Real;
	Definir total Como Real;
	Definir promedio Como Real;
	cantidad <- 0;
	indice1 <- 0;
	indice2 <- 0;
	num <- 0;
	total <- 0;
	promedio <- 0;
	mediana <- 0;
	calcIndice1 <- 0;
	calcIndice2 <- 0;
	Escribir 'Ingrese cantidad de números a calcular:';
	Leer cantidad;
	Dimensionar coleccion(cantidad);
	Para i<-1 Hasta cantidad Con Paso 1 Hacer
		Escribir 'Ingrese número:'Sin Saltar;
		Leer num;
		total <- total+num;
		promedio <- total/cantidad;
		coleccion[i-1]<-num;
	FinPara
	Escribir ' ';
	Escribir 'La media o promedio (total/cantidad) ', total, '/', cantidad, ' de los números ingresados es: ', promedio;
	Escribir ' ';
	Para i<-1 Hasta cantidad-1 Con Paso 1 Hacer
		valorActual <- coleccion[i]; // ordenamiento por inserción 
		j <- i-1;
		Mientras j>=0 Y coleccion[j]>valorActual Hacer
			coleccion[j+1]<-coleccion[j];
			j <- j-1;
		FinMientras
		coleccion[j+1]<-valorActual;
	FinPara
	Escribir 'La secuencia ordenada es: 'Sin Saltar;
	Para i<-0 Hasta cantidad-1 Con Paso 1 Hacer
		Escribir coleccion[i], ', 'Sin Saltar; // imprime el arreglo ordenado
	FinPara
	Escribir ' ';
	Si cantidad MOD 2=0 Entonces
		Escribir 'La colección de números es par:'; // Se evalúa si es par, se ubican ambos números centrales y se promedian 
		calcIndice1 <- (cantidad/2)-1;
		calcIndice2 <- (cantidad/2);
		indice1 <- coleccion[calcIndice1];
		indice2 <- coleccion[calcIndice2];
		mediana <- (indice1+indice2)/2;
		Escribir 'Indice 1: ', indice1;
		Escribir 'Indice 2: ', indice2;
	SiNo
		Escribir 'La colección de números es impar.';
		calcIndice1 <- cantidad-(cantidad+1)/2; // Si es impar se ubica el número central
		mediana <- coleccion[calcIndice1];
	FinSi
	Escribir ' ';
	Escribir 'La mediana de los números ingresados es ', mediana;
FinAlgoritmo
