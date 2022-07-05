"Filed out from Dolphin Smalltalk 7"!

TP_Persona subclass: #Cliente
	instanceVariableNames: 'entradas'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Cliente guid: (GUID fromString: '{9F712684-F865-4C8E-B82E-C1D3BB22D01D}')!
Cliente comment: ''!
!Cliente categoriesForClass!Kernel-Objects! !
!Cliente methodsFor!

agregarEntrada: unId cantidad: cantEntradas
	| entrada contador |
	contador := 0.
	[contador < cantEntradas asNumber] whileTrue: 
			[entrada := TP_Entrada crearEntrada: unId idCliente: self getId.
			entradas add: entrada.
			contador := contador + 1]!

agregarReserva:unaEntrada
	"Agrega una reserva a su historial"
entradas add: unaEntrada.!

entradas

^entradas.!

imprimirCliente
	Transcript
		show: '---------------------------------------- ';cr;
		show: ' [Datos del cliente]'; cr;
		show: ' * Id_cliente: ', id printString; cr;
		show: ' * Nombre: ', nombre; cr;
		show: ' * Apellido: ', apellido; cr;
		show: ' * Email: ', email; cr;
		show: ' * DNI: ' , dni; cr	
		"si no pones en id printString da error, porque no es un string"!

iniCliente: aName lastName: aLastName email: aEmail dni: aDni
	"Returns a initialized instance of Persona"

	nombre := aName.
	apellido := aLastName.
	email := aEmail.
	dni := aDni.
	entradas := OrderedCollection new! !
!Cliente categoriesFor: #agregarEntrada:cantidad:!public! !
!Cliente categoriesFor: #agregarReserva:!public! !
!Cliente categoriesFor: #entradas!public! !
!Cliente categoriesFor: #imprimirCliente!public! !
!Cliente categoriesFor: #iniCliente:lastName:email:dni:!public! !

!Cliente class methodsFor!

crearCliente:aName Apellido:aLastName email:aEmail  dni:aDni
"Return a initialized instance of Persona"
^(self new) iniCliente:aName lastName:aLastName email:aEmail  dni:aDni.! !
!Cliente class categoriesFor: #crearCliente:Apellido:email:dni:!public! !

