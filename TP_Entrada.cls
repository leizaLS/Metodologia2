"Filed out from Dolphin Smalltalk 7"!

Object subclass: #TP_Entrada
	instanceVariableNames: 'idPelicula idCliente'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
TP_Entrada guid: (GUID fromString: '{594066CE-399F-4280-8DF8-4568EF14CCE0}')!
TP_Entrada comment: ''!
!TP_Entrada categoriesForClass!Kernel-Objects! !
!TP_Entrada methodsFor!

idCliente
^idCliente.!

idPelicula
"Devuelve idPelicula"
^idPelicula.!

initEntrada: idPeli idCliente: idClient
idPelicula := idPeli.
idCliente := idClient.!

modiIdCliente: newId
	"Setter de idCliente"

	idCliente := newId!

modiIdPelicula: newId
	"Setter de idPelicula"

	idPelicula := newId! !
!TP_Entrada categoriesFor: #idCliente!public! !
!TP_Entrada categoriesFor: #idPelicula!public! !
!TP_Entrada categoriesFor: #initEntrada:idCliente:!public! !
!TP_Entrada categoriesFor: #modiIdCliente:!public! !
!TP_Entrada categoriesFor: #modiIdPelicula:!public! !

!TP_Entrada class methodsFor!

crearEntrada: idPeli idCliente: idCliente
^(self new) initEntrada: idPeli idCliente: idCliente.! !
!TP_Entrada class categoriesFor: #crearEntrada:idCliente:!public! !

