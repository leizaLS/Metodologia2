|cine|
cine := TP_Cine crearCine: 'Cine-UNAJ' Direccion: 'unaj'.
cine cargaGral .
opcion := 'si'.
[opcion = 'si'] whileTrue: [
	cine menuCine.

	"elegimos camino"
	opcionElegida := (Prompter prompt: 'Opcion elegida:').
	(opcionElegida = '1') ifTrue: [ cine cargaManual_Pelicula ].
	(opcionElegida = '2') ifTrue: [ cine listarPeliculas ].
	(opcionElegida = '3') ifTrue: [ cine listarPeliculasCollect ].
	(opcionElegida = '4') ifTrue: [ cine buscarClientePorDni ].
	(opcionElegida = '5') ifTrue: [ cine cargaManual_Cliente ].
	(opcionElegida = '6') ifTrue: [ cine listarClientes ].
	(opcionElegida = '7') ifTrue: [ cine selectPeliculasAnio ].
	(opcionElegida = '8') ifTrue: [ cine rejectPeliculasAnio ].
	(opcionElegida = '9') ifTrue: [
						Transcript clear.
						Transcript show: '**Sistema de venta';cr;show:' ';cr;
						show:'Por favor complete los campos requeridos:'; cr; show:' ';cr.
						listaClientes := cine verClientes.
						x := 1.
						"BUSQUEDA CLIENTE POR DNI, SI ES NULL CREA UNO NUEVO"
						dniBuscar := Prompter prompt: 'Ingrese el dni a buscar (solo numero)'.			
						cliente := listaClientes detect: [:i | i dni = dniBuscar]
						ifNone:[ Transcript show: '[!] No se encontro el DNI'. cine cargaManual_Cliente].

						"Seleccionar una pelicula"
						Transcript show:'Funciones';cr.
						funciones := cine cartelera.
						dct := Dictionary new.
						(funciones isEmpty) ifFalse: [ funciones do: [:each | dct at: each peliculaid put: each horario ] ].

						dct keysDo:[:key|Transcript cr.
									   Transcript nextPutAll: ' Id pelicula: '.
									   key printOn: Transcript.
									   Transcript nextPutAll: ' Horarios disponible: '.
									   (dct at:key) printOn: Transcript].
					
						peliculaCodigo := Prompter prompt: 'Ingrese codigo de la pelicula:'.
						cantidad := Prompter prompt: 'Cantidad de entradas:'.
						cliente agregarEntrada: peliculaCodigo cantidad:cantidad.
						Transcript clear.
						Transcript show: '**VENTA EXITOSA**';cr;cr;
						show:'**Ticket de Compra**';cr;
						show: 'Pelicula Elegida: ', peliculaCodigo printString;cr;
						show: 'Cantidad:', cantidad.				
						"Verificar compra"
						cliente inspect.						
].
	(opcionElegida = '10') ifTrue: [
						Transcript clear.
						peliculas := (cine verPeliculas) asSortedCollection: [ :a :b | a anio > b anio ].
						x := 1.
						peliculas do: [:each  | Transcript show: x printString,') ';cr;
										show:'    *IdPelicula: '; show: each id printString;cr;
										show:'    *Titulo: '; show: each titulo;cr;
										show:'    *Año: '; show: each anio printString;cr.
										x := x+1.
										Transcript show:'----------------------------------------------------------------------------';cr.
						].
].
		
	"retornamos al menu principal"
	opcion := (Prompter prompt: '¿Volver al menu principal? (si/no)').
].

cine.
