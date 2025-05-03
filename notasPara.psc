Algoritmo notasPara
			
			Definir notas Como Real
			Definir i, aprobados, desaprobados Como Entero
			Definir suma, promedio, notaMayor, notaMenor Como Real
			
			Dimension notas[10]
			
			suma <- 0
			aprobados <- 0
			desaprobados <- 0
			
			Escribir "===== ANÁLISIS DE NOTAS DE 10 ESTUDIANTES ====="
			
			Para i <- 0 Hasta 9
				Repetir
					Escribir "Ingrese la nota del estudiante ", i + 1, ": "
					Leer notas[i]
				Hasta Que notas[i] >= 0 Y notas[i] <= 20
				
				suma <- suma + notas[i]
				
				Si notas[i] >= 11 Entonces
					aprobados <- aprobados + 1
				Sino
					desaprobados <- desaprobados + 1
				FinSi
				
				Si i = 0 Entonces
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
			
			Para i <- 0 Hasta 9
				Escribir "Estudiante ", i + 1, ": ", notas[i]
			FinPara
			
			Escribir "Promedio general: ", promedio
			Escribir "Aprobados: ", aprobados
			Escribir "Desaprobados: ", desaprobados
			Escribir "Nota más alta: ", notaMayor
			Escribir "Nota más baja: ", notaMenor
			
			
			FinAlgoritmo
