Algoritmo ciclos
	definir opc Como Entero
	
	repetir 
		Limpiar Pantalla
		Escribir "**Ejercicios Secunciales **"
		escribir "1: 1° ejercicio: : determinar si un valor positivo N es primo o no :"
		escribir "2: 2° ejercicio:100 primeros numeros FIBONACCI :  "
		escribir "3: 3° ejercicio: suma de numeros pares y producto de impares  :   "
		escribir "4: 4° ejercicio: Calcular la factorial de valor N ingresado por teclado : "
		escribir "5: 5° ejercicio: Calcular Ab , siendo B un entero, notese que B puede ser 0 o negativo. "
		escribir "6: 6° ejercicio: Presentar los 10 primeros numeros fibosacci y cuente cuantos numeros primos hay :"
		escribir "7: 7° ejercicio: Presentar los numeros primos de los 10 primero fibonacci y a demas , dar la suma y promedio :"
		escribir "8: 8° ejercicio: Algoritmo que imprime los 10 primeros primos y contar cuantos estan entre 1-10 y 15-25 :"
		escribir "9: 9° ejercicio: Calcular el sueldo total al fin de mes , si se sabe que la empresa reconoce un 10% de comicion sobre el total de las ventas realizadas: "
		escribir "10: 10° ejercicio: Algoritmo que permita ingresar ungresar dos valores A y B, presentar la multiplicacion de los valores A * B utilizando sumas sucesivas :"
		escribir "11: 11° ejercicio: Algoritmo que permita leer N valores por teclado, finaliza cuando se ingresa S de salir. El algoritmo debe indicar cual es el maximo y minimo valor. asumiendo que los valores introduccidos por el teclado son valores distintos: "
		escribir "12: 12° ejercicio: Algoritmo que lee dos numeros enteros A y B , imprimir el producto A * B y potencia Ab utilizando suma y multiplicacion sucesiva :"
		escribir "13: 13° ejercicio: Algoritmo que permita convertir calificaciones numericas, segun la siguiente tabla: A= 19 y 20 SOBRESALIENTE , B= 16,17, y 18 MUY BUENO , C= 13,14 y 15 BUENO, D= 10,11 y 12 REGULAR, E= 1 hasta el 9 DEFICIENTE, se asume que la nota esta comprendida entre 1 y 20:"
		escribir "14: 14° ejercicio: NUMERO PERFECTO : "
		Escribir "0: Salir"
		leer opc
		
		segun opc hacer 
			caso 1:
				ciclo1_primo()
			caso 2:
				ciclo2_fibonacci()
			caso 3:
				ciclo3()
			caso 4:
				ciclo4()
			caso 5:
				ciclo5()
			caso 6:
				ciclo6()
			caso 7:
				ciclo7()
			caso 8:
				ciclo8()
			caso 9 :
				ciclo9()
			caso 10:
				ciclo10()
			caso 11:
				ciclo11()
			caso 12 :
				ciclo12()
			caso 13:
				ciclo13()
			caso 14:
				ciclo14()
			caso 0:
				
			De Otro Modo:
				
				escribir "La opcion que escogio no esta registrada o no existe , velva a intentar"
				Esperar Tecla
		FinSegun
		
	Hasta Que opc == 0
	
FinAlgoritmo

Funcion ciclo1_primo
	Limpiar Pantalla
	Definir num, contador Como Entero
	esPrimo <- Verdadero
	Escribir "Ingrese un número entero positivo: "
	Leer num
	
	Si num < 2 Entonces
		esPrimo <- Falso
	Sino
		contador <- 2 //contador se inicia en 2 
		Mientras contador * contador <= num Hacer
			Si num % contador = 0 Entonces  
				esPrimo <- Falso
			FinSi
			contador <- contador + 1 //formula del contador
		FinMientras
	FinSi
	
	Si esPrimo Entonces
		Escribir num, " es un número primo."
	Sino
		Escribir num, " no es un número primo."
	FinSi
	Esperar Tecla
FinFuncion

Funcion ciclo2_fibonacci
	Limpiar Pantalla
	definir a, b, contador Como Entero
	definir fibo Como Real
	a = 1	
	Para contador = 0 Hasta 10 Con Paso 1 Hacer
		// Generar nuevo numero fibonacci
		fibo = a + b
		// Presentar numero fibonacci
		Escribir fibo
		// Intercambiar valores de numeros 
		a = b
		b = fibo		
	Fin Para
	Esperar Tecla
FinFuncion 

Funcion ciclo3 
	Limpiar Pantalla
	Definir N, num, suma_pares, producto_impares Como Entero
    
    // Leer N
    Escribir "Ingrese la cantidad de números a procesar (N):"
    Leer N
    
    // Inicializamos variables
    suma_pares <- 0
    producto_impares <- 1
    num <- 1
    
    // Ciclo para recorrer N*2 números
    Mientras num <= N * 2 Hacer
        Si num % 2 = 0 Entonces
            // Si es par, sumamos
            suma_pares <- suma_pares + num
        SiNo
            // Si es impar, multiplicamos
            producto_impares <- producto_impares * num
        FinSi
        num <- num + 1
    FinMientras
    
    // Mostrar resultados
    Escribir "Suma de los pares: ", suma_pares
    Escribir "Producto de los impares: ", producto_impares
	Esperar Tecla
FinFuncion
Funcion ciclo4
	Limpiar Pantalla
	Definir N, factorial, i Como Entero
	Escribir "Ingrese un número N:"
	Leer N
	
	Si N < 0 Entonces
		Escribir "El factorial no está definido para números negativos."
	Sino
		Si N = 0 O N = 1 Entonces
			Escribir "El factorial de ", N, " es 1."
		Sino
			factorial = 1
			Para i = 2 Hasta N Con Paso 1 Hacer
				factorial = factorial * i
			FinPara
			Escribir "El factorial de ", N, " es ", factorial
		FinSi
	FinSi 
	Esperar Tecla
FinFuncion
Funcion ciclo5
	Limpiar Pantalla
	Definir a, b, fib, contador_primos, i, j Como Entero
	Definir es_primo Como Logico
	a = 1
	b = 1
	contador_primos = 0
	Escribir "Los 10 primeros números de la serie Fibonacci son:"
	Escribir a
	Escribir b
	Si a > 1 Entonces
		es_primo = Verdadero
		Para j = 2 Hasta a - 1 Con Paso 1 Hacer
			Si a % j = 0 Entonces
				es_primo = Falso
			FinSi
		FinPara
		Si es_primo Entonces
			contador_primos = contador_primos + 1
		FinSi
	FinSi
	Si b > 1 Entonces
		es_primo = Verdadero
		Para j = 2 Hasta b - 1 Con Paso 1 Hacer
			Si b % j = 0 Entonces
				es_primo = Falso
			FinSi
		FinPara
		Si es_primo Entonces
			contador_primos = contador_primos + 1
		FinSi
	FinSi
	Para i = 3 Hasta 10 Con Paso 1 Hacer
		fib = a + b
		Escribir fib
		Si fib > 1 Entonces
			es_primo = Verdadero
			Para j = 2 Hasta fib - 1 Con Paso 1 Hacer
				Si fib % j = 0 Entonces
					es_primo = Falso
				FinSi
			FinPara
			Si es_primo Entonces
				contador_primos = contador_primos + 1
			FinSi
		FinSi
		a = b
		b = fib
	FinPara
	Escribir "La cantidad de números primos en la serie es: ", contador_primos
	Esperar Tecla
FinFuncion
Funcion ciclo6
	Limpiar Pantalla
	Definir A, B, resultado, i Como Real
	Escribir "Ingrese la base A:"
	Leer A
	Escribir "Ingrese el exponente B:"
	Leer B
	Si B = 0 Entonces
		Escribir "El resultado es 1"  
	Sino
		Si B > 0 Entonces
			resultado = 1
			Para i = 1 Hasta B Con Paso 1 Hacer
				resultado = resultado * A
			FinPara
			Escribir "El resultado de ", A, "^", B, " es ", resultado
		Sino  
			resultado = 1
			Para i = 1 Hasta -B Con Paso 1 Hacer
				resultado = resultado * A
			FinPara
			resultado = 1 / resultado 
			Escribir "El resultado de ", A, "^", B, " es ", resultado
		FinSi
	FinSi
	Esperar Tecla
FinFuncion
Funcion ciclo7
	Limpiar Pantalla
	// Declaramos las variables
    Definir suma, promedio Como Real
    Definir contadorPrimos, fib1, fib2, fib Como Entero
    suma <- 0
    contadorPrimos <- 0
    
    // Inicializamos los primeros números de la secuencia Fibonacci
    fib1 <- 1
    fib2 <- 1
	
    // Evaluamos los dos primeros números de Fibonacci
    Si fib1 = 2 O fib1 = 3 O fib1 = 5 O fib1 = 13 Entonces
        contadorPrimos <- contadorPrimos + 1
        suma <- suma + fib1
        Escribir "Primo encontrado: ", fib1
    FinSi
	
    Si fib2 = 2 O fib2 = 3 O fib2 = 5 O fib2 = 13 Entonces
        contadorPrimos <- contadorPrimos + 1
        suma <- suma + fib2
        Escribir "Primo encontrado: ", fib2
    FinSi
	
    // Generamos los siguientes 8 números Fibonacci
    Para i <- 3 Hasta 10 Con Paso 1 Hacer
        fib <- fib1 + fib2
        fib1 <- fib2
        fib2 <- fib
		
        // Verificación de números primos de forma simple
        Si fib = 2 O fib = 3 O fib = 5 O fib = 13 Entonces
            contadorPrimos <- contadorPrimos + 1
            suma <- suma + fib
            Escribir "Primo encontrado: ", fib
        FinSi
    FinPara
	
    // Mostrar la suma y el promedio
    Escribir "Suma de los números primos: ", suma
    Si contadorPrimos > 0 Entonces
        promedio <- suma / contadorPrimos
        Escribir "Promedio de los números primos: ", promedio
    SiNo
        Escribir "No hay números primos."
    FinSi
	Esperar Tecla
FinFuncion
Funcion ciclo8
	Limpiar Pantalla
	// Declaración de variables
	Definir contadorPrimos, numero, contador, primosEn1a10, primosEn15a25 Como Entero
	contadorPrimos <- 0
	numero <- 2
	primosEn1a10 <- 0
	primosEn15a25 <- 0
	
	// Bucle para encontrar los primeros 10 primos
	Mientras contadorPrimos < 10 Hacer
		contador <- 0
		// Verifica si el número es primo
		Para i <- 1 Hasta numero Hacer
			Si numero % i = 0 Entonces
				contador <- contador + 1
			FinSi
		FinPara
		
		// Si el número tiene solo dos divisores, es primo
		Si contador = 2 Entonces
			// Imprime el número primo encontrado
			Escribir numero
			contadorPrimos <- contadorPrimos + 1
			
			// Cuenta los primos en el rango de [1-10]
			Si numero >= 1 Y numero <= 10 Entonces
				primosEn1a10 <- primosEn1a10 + 1
			FinSi
			
			// Cuenta los primos en el rango de [15-25]
			Si numero >= 15 Y numero <= 25 Entonces
				primosEn15a25 <- primosEn15a25 + 1
			FinSi
		FinSi
		
		// Incrementa el número para evaluar el siguiente
		numero <- numero + 1
	FinMientras
	
	// Resultados finales
	Escribir "Cantidad de primos en [1-10]: ", primosEn1a10
	Escribir "Cantidad de primos en [15-25]: ", primosEn15a25
	Esperar Tecla
FinFuncion
Funcion ciclo9
	Limpiar Pantalla
	Definir nombre_del_vendedor Como Cadena
    Definir sueldo_basico, venta_1, venta_2, venta_3 Como Real
    Definir total_ventas, comision, sueldo_total Como Real
	
    Escribir "Ingrese el nombre del vendedor:"
    Leer nombre_del_vendedor
    
    Escribir "Ingrese el sueldo básico:"
    Leer sueldo_basico
    
    Escribir "Ingrese el monto de la venta 1:"
    Leer venta_1
    
    Escribir "Ingrese el monto de la venta 2:"
    Leer venta_2
    
    Escribir "Ingrese el monto de la venta 3:"
    Leer venta_3
	
    total_ventas <- venta_1 + venta_2 + venta_3
    comision <- total_ventas * 0.10
    sueldo_total <- sueldo_basico + comision
	
    Escribir "Total de comisiones:", comision
    Escribir "Sueldo total a recibir:", sueldo_total
	Esperar Tecla
	FinFuncion
	
	Funcion ciclo10
		Limpiar Pantalla
		// Declaración de variables
		Definir A, B, P, contador Como Entero
		Definir suma_sucesiva Como Entero
		
		// Entrada de datos
		Escribir "Ingrese el valor de A:"
		Leer A
		Escribir "Ingrese el valor de B:"
		Leer B
		
		// Inicialización de variables
		P = 0
		suma_sucesiva = 0
		
		// Realizar sumas sucesivas
		Para contador = 1 Hasta B Con Paso 1 Hacer
			suma_sucesiva = suma_sucesiva + A
		FinPara
		
		// Asignar el resultado
		P = suma_sucesiva
		
		// Salida de datos
		Escribir "El producto de ", A, " * ", B, " utilizando sumas sucesivas es: ", P
		Esperar Tecla
FinFuncion
Funcion ciclo11
	Limpiar Pantalla
	Definir numero Como Real
    Definir maximo, minimo Como Real
    Definir continuar Como Caracter
	
    // Inicializamos las variables
    maximo <- -99999 // Un valor muy pequeño para  el primer número sea mayor
    minimo <- 99999  // Un valor muy grande para el primer número sea menor
	
    continuar <- "1"
	
    Mientras continuar <> "s" Hacer
        Escribir "Ingrese un número (o s para salir): "
        Leer continuar
		
        Si continuar <> "s" Entonces
            numero <- ConvertirANumero(continuar) // Converte la entrada a número real
            Si numero > maximo Entonces
                maximo <- numero
            Fin Si
            
            Si numero < minimo Entonces
                minimo <- numero
            Fin Si
        Fin Si
    Fin Mientras
	
    // Comprobamos si se ingresaron números antes de salir
    Si maximo = -99999 Entonces
        Escribir "No se ingresaron valores."
    Sino
        Escribir "El número máximo ingresado es: ", maximo
        Escribir "El número mínimo ingresado es: ", minimo
    Fin Si
	FinFuncion
	
	Funcion ciclo12
		Definir A, B, producto, potencia, contador Como Entero //Definimos los valores a usar
		
		Escribir "Ingrese el primer número (A): "
		Leer A
		Escribir "Ingrese el segundo número (B): "
		Leer B
		
		// Inicializar el producto y la potencia
		producto <- 0
		potencia <- 1
		
		// Calcular el producto por suma sucesiva
		Para i <- 1 Hasta B Hacer
			producto <- producto + A
		FinPara
		
		// Calcular la potencia por multiplicación sucesiva
		Para i <- 1 Hasta B Hacer
			potencia <- potencia * A
		FinPara
		
		// mostramos los resultados 
		Escribir "El producto de ", A, " y ", B, " es: ", producto
		Escribir "La potencia de ", A, " elevado a ", B, " es: ", potenciaFinFuncion
		Esperar Tecla
FinFuncion
Funcion  ciclo13
	Limpiar Pantalla
	Definir nota Como Entero
    Definir resultado Como Cadena
	
    Escribir "Ingrese la nota (1-20): "
    Leer nota
	
    Si nota >= 19 Y nota <= 20 Entonces
        resultado <- "A - SOBRESALIENTE"
    Sino
        Si nota >= 16 Y nota <= 18 Entonces
            resultado <- "B - MUY BUENO"
        Sino
            Si nota >= 13 Y nota <= 15 Entonces
                resultado <- "C - BUENO"
            Sino
                Si nota >= 10 Y nota <= 12 Entonces
                    resultado <- "D - REGULAR"
                Sino
                    Si nota >= 1 Y nota <= 9 Entonces
                        resultado <- "E - DEFICIENTE"
                    Sino
                        resultado <- "Nota fuera del rango válido (1-20)"
                    FinSi
                FinSi
            FinSi
        FinSi
    FinSi
    Escribir "La calificación es: ", resultado
	Esperar Tecla
FinFuncion

Funcion ciclo14
	Limpiar Pantalla
	Definir numero, suma, divisor Como Entero
	
    Escribir "Ingrese un número para verificar si es perfecto: "
    Leer numero
	
    suma <- 0
	
    Para divisor <- 1 Hasta numero - 1 Hacer
        Si numero % divisor = 0 Entonces
            suma <- suma + divisor
        FinSi
    FinPara
	
    Si suma = numero Entonces
        Escribir numero, " es un número perfecto."
    Sino
        Escribir numero, " NO es un número perfecto."
    FinSi
	Esperar Tecla
FinFuncion
