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

idPelicula
"Devuelve idPelicula"
^idPelicula.!

idPelicula: newId
	"Asigna un valor a idPelicula"

	idPelicula := newId!

initEntrada: idPeli idCliente: idClient
idPelicula := idPeli.
idCliente := idClient.! !
!TP_Entrada categoriesFor: #idPelicula!public! !
!TP_Entrada categoriesFor: #idPelicula:!public! !
!TP_Entrada categoriesFor: #initEntrada:idCliente:!public! !

!TP_Entrada class methodsFor!

crearEntrada: idPeli idCliente: idCliente
^(self new) initEntrada: idPeli idCliente: idCliente.! !
!TP_Entrada class categoriesFor: #crearEntrada:idCliente:!public! !

