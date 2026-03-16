Funcion retiro <- Retirar ( numR )
	retiro=1000-numR
Fin Funcion

Funcion valorD<- Depositar (numD)
	valorD=saldo+numD
Fin Funcion

Funcion saldo<-ConsultarSaldo (saldo)
	Saldo=1000
Fin Funcion

Algoritmo Cajero_Automatico
	Definir numD, numR Como Entero
	Escribir "Bienvenido a su cajero"
	Escribir "a.consultar saldo"
	Escribir "b.Depositar dinero"
	Escribir "c.Retirar dinero"
	Escribir "d.Salir"
	Leer opc
	Segun opc Hacer
		"a" :
			saldo=ConsultarSaldo(numsaldo)
			Escribir "Su saldo es de : " , saldo
		"b":
			Escribir "Digite cuanto dinero desea depositar"
			Leer numD
			Si numD>=0 Entonces
				Escribir "Este valor no se puede depositar"
			SiNo
				si numD>0 Entonces
					deposito= Depositar(numD)
					Escribir "Haz depositado: " , numD " y su saldo es de: " , deposito
					
				FinSi
			Fin Si
		"c" :
			Escribir "Digite que cantidad de dinero desea retirar"
			Leer numR
			Si numR>saldo Entonces
				Escribir "No se puede retirar, valor menor al saldo"
			SiNo
				si numR<saldo Entonces
					retirado=Retirar(numR)
					Escribir "Haz retirado: " , numR " y su saldo actual es de: " , retirado
				FinSi
			Fin Si
		De Otro Modo:
			Escribir "Gracias por utilizar nuestros servivios"
	Fin Segun
FinAlgoritmo
