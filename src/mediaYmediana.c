#include <stdio.h>
int main()
{
    int cantidad, calcIndice1, calcIndice2, valorActual;
    float num, mediana, indice1, indice2, total, promedio;

    indice1 = 0; // Indice para promediar mediana
    indice2 = 0;
    num = 0;      // almacena el numero ingresado por el usuario
    total = 0;    // acumulador para obtener el total a promediar
    promedio = 0; // suma total / cantidad
    valorActual = 0;
    mediana = 0;     // informa número central dentro de la sucesión ordenada de menor a mayor
    calcIndice1 = 0; // primer número central
    calcIndice2 = 0; // segundo número central

    puts("Ingrese cantidad de números a calcular");
    scanf("%d", &cantidad);
    puts("           *************ingreso de datos****************");


    //*************************************************** Cálculo de promedio ***********************************************

    int coleccion[cantidad]; // el array se declara después de que el usuario haya ingresado el valor

    for (int i = 1; i <= cantidad; i++)
    {
        puts("Ingrese número: ");
        scanf("%f", &num);
        total = (float)total + num;         // acumula la suma de los números ingresados
        promedio = (float)total / cantidad; // suma de los números ingresados sobre la cantidad de los mismos
        coleccion[i - 1] = num;             // se asigna cada número ingresado a una posición del arreglo
    }
    printf("\nLa media o promedio (total/cantidad) => (%.2f / %d) de los números ingresados es: %.2f\n", total, cantidad, promedio);


    //********************************************* Ordenamiento de menor a mayor e impresión ********************************

    for (int i = 1; i < cantidad; i++)
    {
        valorActual = coleccion[i];
        int j = i - 1;
        while (j >= 0 && coleccion[j] > valorActual)
        {
            coleccion[j + 1] = coleccion[j];
            j = j - 1;
        }
        coleccion[j + 1] = valorActual;
    }
    printf("La secuencia ordenada es: ");

    for (int i = 0; i < cantidad; i++)
    {
        printf("%d , ", coleccion[i]);
    }
    printf("\n");


    //****************************************************** Calculo de la mediana ********************************************
	//La mediana de una colección de números par se calcula obteniendo los dos números centrales y se promedia
    
    if (cantidad % 2 == 0)
    {
        puts("La colección de números es par");
        calcIndice1 = (cantidad/2) -1;
        calcIndice2 = (cantidad/2);
        indice1 = coleccion[calcIndice1];
        indice2 = coleccion[calcIndice2];
        mediana = (indice1 + indice2) / 2;
    }
    else
    {
        printf("La colección de números es impar\n");
        calcIndice1 = cantidad-(cantidad+1)/2; // Si es impar se ubica el número central
		mediana = coleccion[calcIndice1]; //se promedia 
    }
  
    printf("La mediana de los números ingresados es: %.2f\n", mediana);
    return 0;
}
