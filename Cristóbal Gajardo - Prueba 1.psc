Proceso Prueba_1
	Definir OPCIONES, V Como Caracter;
	Definir RESP Como Real;
	V<-"S";
	//Opciones para responder por el usuario
	Dimension OPCIONES[12];
	OPCIONES[0] <- "Menú:";
	OPCIONES[1] <- "";
	OPCIONES[2] <- "1. Secuencial";
	OPCIONES[3] <- "2. Condicional: Si-Entonces";
	OPCIONES[4] <- "3. Condicional: Si-Entonces anidado";
	OPCIONES[5] <- "4. Condicional: Según";
	OPCIONES[6] <- "5. Repetitiva: Mientras";
	OPCIONES[7] <- "6. Repetitiva: Repetir";
	OPCIONES[8] <- "7. Repetitiva: Para";
	OPCIONES[9] <- "8. Arreglo Simple";
	OPCIONES[10] <- "9. Arreglo Bidimensional";
	OPCIONES[11] <- "10. Salir";
	
	Mientras V = "S" O V = "s" Hacer
		ENCABEZADO;
		Menu(OPCIONES);
		Leer RESP;
		Mientras RESP < 1 O RESP / trunc(RESP) <> 1 O RESP > 10 Hacer
			ENCABEZADO;
			Menu(OPCIONES);
			Escribir "Has ingresado un número que no es válido, reinténtalo";
			Escribir "";
			Leer RESP;
		FinMientras
		Segun RESP Hacer
			1:
				OP1;
			2:
				OP2;
			3:
				OP3;
			4:
				OP4;
			5:
				OP5;
			6:
				OP6;
			7:
				OP7;
			8:
				OP8;
			9:
				OP9;
		FinSegun
		Escribir "";
		Si RESP <> 10 Entonces
			Escribir "¿Quieres realizar otra acción? (S/N)";
			Leer V;
		SiNo
			V <- "N";
		FinSi
	FinMientras
	OP10;
FinProceso
//SubProceso para escribir menú contextual
SubProceso Menu(A)
	Definir i Como Entero;
	Escribir "Selecciona alguna de las siguientes opciones";
	Escribir "";
	Para i<-0 Hasta 11 Hacer
		Escribir A[i];
	FinPara
	Escribir "";
FinSubProceso
//SubProceso de encabezado
SubProceso ENCABEZADO
	Limpiar Pantalla;
	Escribir "OPERACIONES ALGORÍTMICAS";
	Escribir "(Todo lo que necesitas para tu diversión) ;)";
	DIVISOR;
FinSubProceso
//SubProceso divisorio
SubProceso DIVISOR
	Escribir "";
	Escribir "*******************************";
	Escribir "";
FinSubProceso
//Opción 10
SubProceso OP10
	ENCABEZADO;
	Escribir "Gracias por tu participación";
	Escribir "";
FinSubProceso
//Opción 1
SubProceso OP1
	Definir A, B, C, SUMA Como Real;
	Definir i Como Entero;
	SUMA <- 0;
	ENCABEZADO;
	Escribir "Algoritmo secuencial: Promedio de tres números";
	DIVISOR;
	Escribir "Ingrese el 1er número:";
	Leer A;
	SUMA <- SUMA + A;
	
	ENCABEZADO;
	Escribir "Algoritmo secuencial: Promedio de tres números";
	DIVISOR;
	Escribir "Ingrese el 2do número:";
	Leer B;
	SUMA <- SUMA + B;
	
	ENCABEZADO;
	Escribir "Algoritmo secuencial: Promedio de tres números";
	DIVISOR;
	Escribir "Ingrese el 3er número:";
	Leer c;
	SUMA <- SUMA + c;

	ENCABEZADO;
	Escribir "Algoritmo secuencial: Promedio de tres números";
	DIVISOR;
	Escribir "El promedio de los números ", A, ", ", B, " y ", C, " es: ", SUMA/3;
FinSubProceso
//Opción 2
SubProceso OP2
	Definir NOMBRE, GENERO Como Caracter;
	ENCABEZADO;
	Escribir "Algoritmo Condicional Si-Entonces: Baño";
	DIVISOR;
	Escribir "¿Cuál es tu nombre?";
	Leer NOMBRE;
	Escribir "";
	Escribir NOMBRE, ", ¿es usted hombre o mujer? (H/M)";
	Leer GENERO;
	Mientras GENERO <> "H" Y GENERO <> "h" Y GENERO <> "M" Y GENERO <> "m" Hacer
		ENCABEZADO;
		Escribir "Algoritmo Condicional Si-Entonces: Baño";
		DIVISOR;
		Escribir NOMBRE, ", has ingresado un caracter erróneo, por favor, reinténtalo";
		Escribir "¿Es usted hombre o mujer? (H/M)";
		Leer GENERO;
	FinMientras
	ENCABEZADO;
	Escribir "Algoritmo Condicional Si-Entonces: Baño";
	DIVISOR;
	Si GENERO = "H" O GENERO = "h" Entonces
		Escribir NOMBRE, ", usted debe ir al baño de HOMBRES";
	SiNo
		Escribir NOMBRE, ", usted debe ir al baño de MUJERES";
	FinSi
FinSubProceso
//Opción 3
SubProceso OP3
	Definir NOMBRE, GENERO, DUCHA Como Caracter;
	ENCABEZADO;
	Escribir "Algoritmo Condicional Si-Entonces Anidado: Baño";
	DIVISOR;
	Escribir "¿Cuál es tu nombre?";
	Leer NOMBRE;
	Escribir "";
	Escribir NOMBRE, ", ¿es usted hombre o mujer? (H/M)";
	Leer GENERO;
	Mientras GENERO <> "H" Y GENERO <> "h" Y GENERO <> "M" Y GENERO <> "m" Hacer
		ENCABEZADO;
		Escribir "Algoritmo Condicional Si-Entonces Anidado: Baño";
		DIVISOR;
		Escribir NOMBRE, ", has ingresado un caracter erróneo, por favor, reinténtalo";
		Escribir "¿Es usted hombre o mujer? (H/M)";
		Leer GENERO;
	FinMientras
	ENCABEZADO;
	Escribir "Algoritmo Condicional Si-Entonces Anidado: Baño";
	DIVISOR;
	Escribir NOMBRE, ", ¿desea utilizar la ducha? (S/N)";
	Leer DUCHA;
	Mientras DUCHA <> "S" Y DUCHA <> "s" Y DUCHA <> "N" Y GENERO <> "n" Hacer
		ENCABEZADO;
		Escribir "Algoritmo Condicional Si-Entonces Anidado: Baño";
		DIVISOR;
		Escribir NOMBRE, ", has ingresado un caracter erróneo, por favor, reinténtalo";
		Escribir "¿Desea utilizar la ducha? (S/N)";
		Leer DUCHA;
	FinMientras
	ENCABEZADO;
	Escribir "Algoritmo Condicional Si-Entonces Anidado: Baño";
	DIVISOR;
	Si GENERO = "H" O GENERO = "h" Entonces
		Escribir NOMBRE, ", usted debe ir al baño de HOMBRES";
		Escribir "";
		Si DUCHA = "S" O DUCHA = "s" Entonces
			Escribir "COSTO TOTAL: $2500";
		SiNo
			Escribir "COSTO TOTAL: $250";
		FinSi
	SiNo
		Escribir NOMBRE, ", usted debe ir al baño de MUJERES";
		Escribir "";
		Si DUCHA = "S" O DUCHA = "s" Entonces
			Escribir "COSTO TOTAL: $2500";
		SiNo
			Escribir "COSTO TOTAL: $250";
		FinSi
	FinSi
FinSubProceso
//Opción 4
SubProceso OP4
	Definir A Como Real;
	ENCABEZADO;
	Escribir "Algoritmo Condicional Según: Número con palabras";
	DIVISOR;
	Escribir "Ingrese un número entre 1 - 10:";
	Leer A;
	Mientras A < 1 O A / trunc(A) <> 1 O A > 10 Hacer
		ENCABEZADO;
		Escribir "Algoritmo Condicional Según: Número con palabras";
		DIVISOR;
		Escribir "Has ingresado un número que no es válido, reinténtalo";
		Escribir "";
		Escribir "Ingrese un número entre 1 - 10:";
		Leer A;
	FinMientras
	ENCABEZADO;
	Escribir "Algoritmo Condicional Según: Número con palabras";
	DIVISOR;
	Escribir Sin Saltar A, ": ";
	Segun A Hacer
		1:
			Escribir "Uno";
		2:
			Escribir "Dos";
		3:
			Escribir "Tres";
		4:
			Escribir "Cuatro";
		5:
			Escribir "Cinco";
		6:
			Escribir "Seis";
		7:
			Escribir "Siete";
		8:
			Escribir "Ocho";
		9:
			Escribir "Nueve";
		10:
			Escribir "Diez";
	FinSegun
FinSubProceso
//Opción 5
SubProceso OP5
	Definir NUM, N Como Real;
	Definir aux, aux2, i Como Entero;
	Dimension NUM[300];
	aux <- 0;
	N <- 1;
	ENCABEZADO;
	Escribir "Algoritmo Repetitivo Mientras: Promedio de N números";
	DIVISOR;
	Escribir "Digite números a promediar. Escriba 0 para promediar";
	Escribir "";
	Mientras N <> 0 Hacer
		Escribir Sin Saltar aux+1, ": ";
		Leer N;
		NUM[aux] <- N;
		aux <- aux + 1;
	FinMientras
	aux2 <- aux - 1;
	Si aux2 <> 0 Entonces
		aux <- aux - 2;
		ENCABEZADO;
		Escribir "Algoritmo Repetitivo Mientras: Promedio de N números";
		DIVISOR;
		Escribir "Números a promediar:";
		Escribir "";
		Para i<-0 Hasta aux Hacer
			N <- N + NUM[i];
			Escribir i+1, ": ", NUM[i];
		FinPara
		N <- N/aux2;
		Escribir "";
		Escribir "El promedio es: ", N;
	SiNo
		ENCABEZADO;
		Escribir "Algoritmo Repetitivo Mientras: Promedio de N números";
		DIVISOR;
		Escribir "El promedio es 0";
	FinSi
FinSubProceso
//Opción 6
SubProceso OP6
	Definir NOMBRE, V Como Caracter;
	Definir aux Como Entero;
	aux <- 0;
	Repetir
		ENCABEZADO;
		Escribir "Algortimo Repetitivo Repetir: Nombres con J";
		DIVISOR;
		Escribir "Escriba un nombre cuya incial sea J";
		Escribir "Escribe el nombre correcto para ganar";
		Escribir "";
		Leer NOMBRE;
		Si (Subcadena(NOMBRE,0,0) <> "J" Y Subcadena(NOMBRE,0,0) <> "j") O NOMBRE = "" Entonces
			Escribir "";
			Escribir "Recuerda que el nombre debe iniciar con J";
			Escribir "";
			Esperar 1.5 Segundos;
		FinSi
		aux <- aux + 1;
	Hasta Que NOMBRE = "Juan" O NOMBRE = "juan" O NOMBRE = "JUAN"
	Escribir "";
	ENCABEZADO;
	Escribir "Algortimo Repetitivo Repetir: Nombres con J";
	DIVISOR;
	Escribir "¡GANASTE!";
	Escribir "";
	Escribir "Juan es el nombre correcto, felicidades";
	Escribir "";
	Escribir "Número de intentos: ", aux;
FinSubProceso
//Opción 7
SubProceso OP7
	Definir NOMBRES, REPETIDOS Como Caracter;
	Definir aux, aux3, i, j, Dim Como Entero;
	Definir aux2 Como Logico;
	Dim <- 20;
	Dimension NOMBRES[Dim,2], REPETIDOS[Dim,2];
	aux <- 0;
	aux2 <- Falso;
	aux3 <- 1;
	Para i<-0 Hasta Dim-1 Hacer
		ENCABEZADO;
		Escribir "Algoritmo Repetitivo Para: Nombres repetidos";
		DIVISOR;
		Si i == Dim-1 Entonces
			Escribir "Escriba el nombre número ", i+1, ": (Último nombre)";
		SiNo
			Escribir "Escriba el nombre número ", i+1, ":";
		FinSi
		Escribir "Presione ENTER sin escribir nada para finalizar";
		Escribir "";
		Leer NOMBRES[i,0];
		Si NOMBRES[i,0] == "" Entonces
			i <- Dim-1;
			Escribir "";
			Escribir Sin Saltar "Has ingresado el último nombre, por favor espera un momento";
			Esperar 1 Segundos;
			Escribir Sin Saltar ".";
			Esperar 1 Segundos;
			Escribir Sin Saltar ".";
			Esperar 1 Segundos;
			Escribir Sin Saltar ".";
			Esperar 1 Segundos;
		SiNo
			Si i == Dim-1 Entonces
				Escribir "";
				Escribir Sin Saltar "Has ingresado el último nombre, por favor espera un momento";
				Esperar 1 Segundos;
				Escribir Sin Saltar ".";
				Esperar 1 Segundos;
				Escribir Sin Saltar ".";
				Esperar 1 Segundos;
				Escribir Sin Saltar ".";
				Esperar 1 Segundos;
			FinSi
		FinSi
		aux3 <- aux3 + 1;
	FinPara
	aux3 <- aux3 - 2;
	Para i<-0 Hasta Dim-1 Hacer
		NOMBRES[i,1] <- ConvertirATexto(0);
	FinPara
	Para i<-0 Hasta aux3 Hacer
		Si ConvertirANumero(NOMBRES[i,1]) == 0 Entonces
			Para j<-i+1 Hasta aux3 Hacer
				Si NOMBRES[i,0] = NOMBRES[j,0] Entonces
					NOMBRES[i,1] <- ConvertirATexto(ConvertirANumero(NOMBRES[i,1]) + 1);
					NOMBRES[j,1] <- ConvertirATexto(ConvertirANumero(NOMBRES[j,1]) + 1);
					REPETIDOS[aux,0] <- NOMBRES[i,0];
					REPETIDOS[aux,1] <- NOMBRES[i,1];
					aux2 <- Verdadero;
				FinSi
			FinPara
		FinSi
		Si aux2 = Verdadero Entonces
			aux <- aux + 1;
			aux2 <- Falso;
		FinSi
	FinPara
	ENCABEZADO;
	Escribir "Algoritmo Repetitivo Para: Nombres repetidos";
	DIVISOR;
	Escribir "Listado de nombres:";
	Escribir "";
	Si aux3 == Dim-1 Entonces
		Para i<-0 Hasta aux3 Hacer
			Escribir i+1, ": ", NOMBRES[i,0];
		FinPara
	SiNo
		Para i<-0 Hasta aux3-1 Hacer
			Escribir i+1, ": ", NOMBRES[i,0];
		FinPara
	FinSi
	DIVISOR;
	Si aux > 0 Entonces
		Escribir "Nombres repetidos:";
		Para i<-0 Hasta aux-1 Hacer
			Escribir i+1, ": ", REPETIDOS[i,0], " - ", ConvertirANumero(REPETIDOS[i,1])+1," veces";
		FinPara
	SiNo
		Escribir "No existen nombres repetidos";
	FinSi
FinSubProceso
//Opción 8
SubProceso OP8
	Definir A, aux, n, i Como Entero;
	Definir LISTA Como Caracter;
	aux <- 0;
	ENCABEZADO;
	Escribir "Algoritmo Arreglo Simple: Listado de alumnos Talento Digital";
	DIVISOR;
	Escribir "¿Cuántos alumnos serán ingresados?";
	Leer A;
	Mientras A < 1 O A / trunc(A) <> 1 Hacer
		ENCABEZADO;
		Escribir "Algoritmo Arreglo Simple: Listado de alumnos Talento Digital";
		DIVISOR;
		Escribir "El número ingresado no es válido, reintente";
		Escribir "¿Cuántos alumnos serán ingresados?";
		Leer A;
	FinMientras
	Dimension LISTA[A];
	Para i<-0 Hasta A-1 Hacer
		ENCABEZADO;
		Escribir "Algoritmo Arreglo Simple: Listado de alumnos Talento Digital";
		DIVISOR;
		Escribir "Ingrese el nombre del alumno ", i+1, ":";
		Leer LISTA[i];
	FinPara
	ENCABEZADO;
	Escribir "Algoritmo Arreglo Simple: Listado de alumnos Talento Digital";
	DIVISOR;
	Escribir "Listado de alumnos";
	Escribir "";
	Para i<-0 Hasta trunc(A/5) Hacer
		n <- 5*i;
		Mientras aux < n+5 Y aux < A Hacer
			Si aux <> n+4 Y aux <> A-1 Entonces
				Escribir Sin Saltar LISTA[aux], " || ";
			SiNo
				Escribir Sin Saltar LISTA[aux];
			FinSi
			aux <- aux + 1;
		FinMientras
		Escribir "";
	FinPara
FinSubProceso
//Opción 9
SubProceso OP9
	Definir DATOS Como Caracter;
	Definir X1, Y1, i, j, k, aux Como Entero;
	X1 <- 200;
	Y1 <- 4;
	aux <- 0;
	i <- 0;
	Dimension DATOS[X1, Y1];
	Para i<-0 Hasta X1-1 Hacer
		ENCABEZADO;
		Escribir "Algoritmo Arreglo Bidimensional: Datos alumnos Talento Digital";
		DIVISOR;
		Escribir "Ingrese los datos solicitados, en caso de no contar con el dato, deje en blanco";
		Escribir "Para finalizar ingrese X y presione ENTER";
		Escribir "";
		Escribir i+1, ":";
		Para j<-0 Hasta Y1-1 Hacer
			Escribir "";
			Segun j Hacer
				0:
					Escribir Sin Saltar "Nombre: ";
					Leer DATOS[i,j];
				1:
					Escribir Sin Saltar "Apellido: ";
					Leer DATOS[i,j];
				2:
					Escribir Sin Saltar "Fono: ";
					Leer DATOS[i,j];
				3:
					Escribir Sin Saltar "Correo: ";
					Leer DATOS[i,j];
			FinSegun
			Si DATOS[i,j] = "" Entonces
				DATOS[i,j] <- " - ";
			FinSi
			Si (DATOS[i,j] = "X" o DATOS[i,j] = "x") Y j <> 0 Entonces
				Para k<-j Hasta Y1-1 Hacer
					DATOS[i,k] <- " - ";					
				FinPara
				aux <- i;
				j <- Y1-1;
				i <- X1-1;
			SiNo
				Si (DATOS[i,j] = "X" o DATOS[i,j] = "x") Y j == 0 Entonces
					DATOS[i,j] <- "";
					aux <- i-1;
					j <- Y1-1;
					i <- X1-1;
				FinSi
			FinSi
		FinPara
	FinPara
	ENCABEZADO;
	Escribir "Algoritmo Arreglo Bidimensional: Datos alumnos Talento Digital";
	DIVISOR;
	Para i<-0 Hasta aux Hacer
		Escribir Sin Saltar i+1, ":   ";
		Para j<-0 Hasta Y1-1 Hacer
			Si j <> Y1-1 Entonces
				Escribir Sin Saltar DATOS[i,j], " || ";
			SiNo
				Escribir Sin Saltar DATOS[i,j];
			FinSi
		FinPara
		Escribir "";
	FinPara
FinSubProceso
	