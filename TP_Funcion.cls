"Filed out from Dolphin Smalltalk 7"!

Object subclass: #TP_Funcion
	instanceVariableNames: 'salaid peliculaid horario precio disponible'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
TP_Funcion guid: (GUID fromString: '{F5DB4FC5-1F82-4E99-A72D-F7A90A62A1B3}')!
TP_Funcion comment: ''!
!TP_Funcion categoriesForClass!Kernel-Objects! !
!TP_Funcion methodsFor!

disponible
^disponible.!

horario
	"Devuelve el horario de la funcion, getter"

	^horario!

iniFuncion: unaSalaid peliculaid: unPeliculaId horario: unHorario precio: unPrecio
	salaid := unaSalaid.
	peliculaid := unPeliculaId.
	horario := unHorario.
	precio := unPrecio.
	disponible := 30!

modiHorario: unHorario
"Setter de horario"
	horario := unHorario .!

modiPeliculaId: unaPeli
"Setter de pelicula Id"
	peliculaid := unaPeli .!

modiPrecio: unPrecio
"Setter de precio"
	precio := unPrecio .!

modiSalaId: unaSala
"setter de sala id"
	salaid := unaSala!

peliculaid
	"Devuelve el id de la pelicula que se reproduce en la funcion, getter"
	^peliculaid!

precio
	"Devuelve el precio de la funcion, getter"

	^precio!

salaid
	"Devuelve la sala donde se reproduce la pelicula, getter"
	^salaid! !
!TP_Funcion categoriesFor: #disponible!public! !
!TP_Funcion categoriesFor: #horario!public! !
!TP_Funcion categoriesFor: #iniFuncion:peliculaid:horario:precio:!public! !
!TP_Funcion categoriesFor: #modiHorario:!public! !
!TP_Funcion categoriesFor: #modiPeliculaId:!public! !
!TP_Funcion categoriesFor: #modiPrecio:!public! !
!TP_Funcion categoriesFor: #modiSalaId:!public! !
!TP_Funcion categoriesFor: #peliculaid!public! !
!TP_Funcion categoriesFor: #precio!public! !
!TP_Funcion categoriesFor: #salaid!public! !

!TP_Funcion class methodsFor!

crearFuncion: unaSalaid peliculaid: unPeliculaId horario: unHorario precio: unPrecio
	^self new
		iniFuncion: unaSalaid
		peliculaid: unPeliculaId
		horario: unHorario
		precio: unPrecio! !
!TP_Funcion class categoriesFor: #crearFuncion:peliculaid:horario:precio:!public! !

