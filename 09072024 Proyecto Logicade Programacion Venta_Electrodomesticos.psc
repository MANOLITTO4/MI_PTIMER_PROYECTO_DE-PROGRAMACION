Funcion saludar(Nombre)
	Escribir "¡Hola, "  Nombre "!"
	
FinFuncion

Algoritmo Venta_Electrodomesticos
    Definir Producto, Opcion_Pago, Num_Cuotas, Total_Pagar, Descuento, Opcion_Domicilio Como Real
    Definir Neveras, Lavadoras, Estufas, Hornos_Microhondas, Barril_Asador, Domicilio, Opcion_Continuar Como Real
	Escribir "Bienvenido, PorFavor me da su Nombre: "
	Leer nombre
	saludar(nombre)
	

	
    Neveras <- 6000000
    Lavadoras <- 2500000
    Estufas <- 1500000
    Hornos_Microhondas <- 400000
    Barril_Asador <- 800000
    Domicilio <- 50000
    
    Total_Pagar <- 0
    Opcion_Continuar <- 1
	
    Mientras Opcion_Continuar = 1 Hacer
        Escribir "Por favor elegir el producto que vas a comprar:"
        Escribir "1. Neveras <- 6000000"
        Escribir "2. Lavadoras <- 2500000"
        Escribir "3. Estufas <- 1500000"
        Escribir "4. Hornos Microondas <- 400000"
        Escribir "5. Barril Asador <- 800000"
        Leer Producto
		
        Si Producto < 1 O Producto > 5 Entonces
            Escribir "Opción no válida"
            
        Fin Si
		
        Escribir "¿Desea llevarlo con domicilio? (1. Sí, 2. No)"
        Leer Opcion_Domicilio
		
        Segun Producto Hacer
            Caso 1:
                Escribir "Has seleccionado una Nevera"
                Total_Pagar <- Total_Pagar + Neveras
            Caso 2:
                Escribir "Has seleccionado una Lavadora"
                Total_Pagar <- Total_Pagar + Lavadoras
            Caso 3:
                Escribir "Has seleccionado una Estufa"
                Total_Pagar <- Total_Pagar + Estufas
            Caso 4:
                Escribir "Has seleccionado un Horno Microondas"
                Total_Pagar <- Total_Pagar + Hornos_Microhondas
            Caso 5:
                Escribir "Has seleccionado un Barril Asador"
                Total_Pagar <- Total_Pagar + Barril_Asador
        Fin Segun
		
        Si Opcion_Domicilio = 1 Entonces
            Total_Pagar <- Total_Pagar + Domicilio
        Fin Si
		
        Escribir "¿Desea comprar otro producto? (1. Sí, 2. No)"
        Leer Opcion_Continuar
    Fin Mientras
	escribir "Ofertas Segun medios de pago; 1. Efctivo 20% descuento, 2. T.Credito si difieres a menos de 3 cuotas 5%, 4. Sistecredito No aplica Descuento"
    Escribir "Elegir medio de pago: 1. Efectivo; 2. T. Crédito; 3. Mefia; 4. Sistecredito"
	
    Leer Opcion_Pago
	
    Si Opcion_Pago < 1 O Opcion_Pago > 4 Entonces
        Escribir "Opción de pago no válida"
	Fin Si
	
	Segun Opcion_Pago Hacer
		
		Caso 1:
			Escribir "Pago en efectivo, se aplica un 20% de descuento"
			Descuento <- Total_Pagar * 0.20
			Total_Pagar <- Total_Pagar - Descuento
		Caso 2:
			Escribir "Pago con tarjeta de crédito"
			Escribir "Ingrese el número de cuotas:"
			Leer Num_Cuotas
			Si Num_Cuotas <= 3 Entonces
				Escribir "Se aplica un 5% de descuento"
				Descuento <- Total_Pagar * 0.05
				Total_Pagar <- Total_Pagar - Descuento
			SiNo
				Escribir "No se aplica descuento"
			Fin Si
		Caso 3:
			Escribir "Pago con Mefia, se aplica un 40% de descuento"
			Descuento <- Total_Pagar * 0.40
			Total_Pagar <- Total_Pagar - Descuento
		Caso 4:
			Escribir "Pago con Sistecredito, no se aplica descuento"
	Fin Segun
	
	Escribir "El total a pagar es: ", Total_Pagar
FinFuncion

FinAlgoritmo



