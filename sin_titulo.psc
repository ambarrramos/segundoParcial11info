Algoritmo sin_titulo
	Definir notas Como Real
	Definir i, aprobados, desaprobados Como Entero
	Definir suma, promedio, notaMayor, notaMenor Como Real
	
	Dimension notas[10]
	
	suma <- 0
	aprobados <- 0
	desaprobados <- 0
	
	Escribir "===== ANÁLISIS DE NOTAS DE 10 ESTUDIANTES ====="
	Escribir "Ingrese las notas una por una (valores entre 0 y 20)"
	
	
	Para i <- 1 Hasta 10
		Repetir
			Escribir "Nota del estudiante ", i, ": "
			Leer notas[i]
		Hasta Que notas[i] >= 0 Y notas[i] <= 20
		
		suma <- suma + notas[i]
		
		
		Si notas[i] >= 11 Entonces
			aprobados <- aprobados + 1
		Sino
			desaprobados <- desaprobados + 1
		FinSi
		
		
		Si i = 1 Entonces
			notaMayor <- notas[i]
			notaMenor <- notas[i]
		Sino
			Si notas[i] > notaMayor Entonces
				notaMayor <- notas[i]
			FinSi
			Si notas[i] < notaMenor Entonces
				notaMenor <- notas[i]
			FinSi
		FinSi
	FinPara
	
	
	promedio <- suma / 10
	
	
	Escribir ""
	Escribir "===== RESULTADOS DEL ANÁLISIS ====="
	Escribir "Notas ingresadas:"
	Para i <- 1 Hasta 10
		Escribir "Estudiante ", i, ": ", notas[i]
	FinPara
	
	Escribir "Promedio general: ", promedio
	Escribir "Total de aprobados: ", aprobados
	Escribir "Total de desaprobados: ", desaprobados
	Escribir "Nota más alta: ", notaMayor
	Escribir "Nota más baja: ", notaMenor
	

FinAlgoritmo
