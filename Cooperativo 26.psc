Algoritmo Cooperativo_26
	Definir matriz Como Caracter
	Dimension matriz(9,12)
	inicializarMatriz(matriz)
	imprimirMatriz(matriz)
	agregarPalabra(matriz, "vector", 0)
	agregarPalabra(matriz, "matriz", 1)
	agregarPalabra(matriz, "programa", 2)
	agregarPalabra(matriz, "subprograma", 3)
	agregarPalabra(matriz, "subproceso", 4)
	agregarPalabra(matriz, "variable", 5)
	agregarPalabra(matriz, "entero", 6)
	agregarPalabra(matriz, "para", 7)
	agregarPalabra(matriz, "mientras", 8)
	imprimirMatriz(matriz)
	acomodarPalabra(matriz)
	imprimirMatriz(matriz)
FinAlgoritmo

SubProceso inicializarMatriz(matriz)
	Definir f, c Como Entero
	Para f<-0 Hasta 8 Con Paso 1 Hacer
		Para c<-0 Hasta 11 Con Paso 1 Hacer
			matriz(f,c) = "*"
		Fin Para
	Fin Para
FinSubProceso

SubProceso imprimirMatriz(matriz)
	Definir f, c Como Entero
	Para f<-0 Hasta 8 Con Paso 1 Hacer
		Para c<-0 Hasta 11 Con Paso 1 Hacer
			Escribir Sin Saltar matriz(f,c), " "
		Fin Para
		Escribir ""
	Fin Para
	Escribir ""
	Esperar Tecla
FinSubProceso

SubProceso agregarPalabra(matriz, palabra, fila)
	Definir c Como Entero
		Para c<-0 Hasta 11 Con Paso 1 Hacer
			Si subcadena(palabra,c,c) <> "" Entonces
				matriz(fila,c) = subcadena(palabra,c,c)
			Fin Si
		Fin Para
FinSubProceso

Funcion columna<-buscarR(matriz, fila)
	Definir c, columna Como Entero
	columna = 0
	Para c<-0 Hasta 11 Con Paso 1 Hacer
		Si matriz(fila,c) = "r" Entonces
			columna = c
			c = 11
		Fin Si
	Fin Para
FinSubProceso

SubProceso acomodarPalabra(matriz)
	Definir c, f, posicion, contador Como Entero
	Definir aux Como Caracter
	Dimension aux(9,12)
	inicializarMatriz(aux)
	Para f<-0 Hasta 8 Con Paso 1 Hacer
		posicion = 5 - buscarR(matriz, f)
		contador = 0
		Para c<-posicion Hasta 11 Con Paso 1 Hacer
			aux(f,c) = matriz(f,contador)
			contador = contador + 1
		Fin Para
		Para c<-0 Hasta 11 Con Paso 1 Hacer
			matriz(f,c) = aux(f,c)
		Fin Para
	Fin Para
FinSubProceso
	