Algoritmo mediaYmediana
	Definir cantidad, i, j, calcIndice1, calcIndice2, valorActual Como Entero;
	Definir num, coleccion, mediana, indice1, indice2 Como Real;
	Definir total Como Real;
	Definir promedio Como Real;
	
	cantidad <- 0; //array de números a ingresar
	indice1 <- 0;
	indice2 <- 0;
	num <- 0; //almacena el numero ingresado por el usuario
	total <- 0; //acumulador para obtener el total a promediar
	promedio <- 0; // suma total / cantidad 
	valorActual = 0;
	j = 0;
	mediana <- 0; //informa número central dentro de la sucesión ordenada de menor a mayor
	calcIndice1 <- 0; //primer número central
	calcIndice2 <- 0; //segundo número central
	
	Escribir 'Ingrese cantidad de números a calcular:';
	Leer cantidad;
	
	//********************************************* Calculo de promedio ******************************************************
	
	Dimensionar coleccion(cantidad); //se dimensiona el arreglo con la cantidad de números a ingresar
	
	Para i<-1 Hasta cantidad Con Paso 1 Hacer //bucle exacto 
		Escribir 'Ingrese número:'Sin Saltar;
		Leer num;
		total <- total+num;  //acumula la suma de los números ingresados
		promedio <- total/cantidad; //suma de los números ingresados sobre la cantidad de los mismos
		coleccion[i-1]<-num; //se asigna cada número ingresado a una posición del arreglo
	FinPara
	
	Escribir ' ';
	Escribir 'La media o promedio (total/cantidad) ', total, '/', cantidad, ' de los números ingresados es: ', promedio;
	Escribir ' ';
	
	//********************************************* Ordenamiento de menor a mayor e impresión ********************************
	
	
	Para i<-1 Hasta cantidad-1 Con Paso 1 Hacer // ordenamiento por inserción 
		valorActual <- coleccion[i]; 
		j <- i-1;
		Mientras j>=0 Y coleccion[j]>valorActual Hacer
			coleccion[j+1]<-coleccion[j];
			j <- j-1;
		FinMientras
		coleccion[j+1]<-valorActual;
	FinPara
	
	Escribir 'La secuencia ordenada es: 'Sin Saltar;
	
	Para i<-0 Hasta cantidad-1 Con Paso 1 Hacer // imprime el arreglo ordenado
		Escribir coleccion[i], ', 'Sin Saltar; 
	FinPara
	
	Escribir ' ';
	
	//****************************************** Calculo de la mediana *****************************************************
	
	//La mediana de una colección de números par se calcula obteniendo los dos números centrales y se promedia
	
	Si cantidad MOD 2=0 Entonces // evalúa si la colección es par o impar si es par, se ubican ambos números centrales y se promedian 
		Escribir 'La colección de números es par:'; 
		calcIndice1 <- (cantidad/2)-1; //se calcula primer número central
		calcIndice2 <- (cantidad/2); //se calcula segundo número central
		indice1 <- coleccion[calcIndice1]; //Se almacena indice 1 calculado 
		indice2 <- coleccion[calcIndice2]; //Se almacena indice 2 calculado
		mediana <- (indice1+indice2)/2; //se promedia 
		Escribir 'Indice 1: ', indice1;
		Escribir 'Indice 2: ', indice2;
	SiNo
		Escribir 'La colección de números es impar.';
		calcIndice1 <- cantidad-(cantidad+1)/2; // Si es impar se ubica el número central
		mediana <- coleccion[calcIndice1]; //se promedia 
	FinSi
	
	Escribir ' ';
	Escribir 'La mediana de los números ingresados es ', mediana;
FinAlgoritmo
