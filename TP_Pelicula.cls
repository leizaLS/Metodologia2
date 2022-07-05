"Filed out from Dolphin Smalltalk 7"!

Object subclass: #TP_Pelicula
	instanceVariableNames: 'id titulo director anio genero duracion descripcion'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
TP_Pelicula guid: (GUID fromString: '{5EFBA6E9-7BD4-4183-851B-502751D1F92C}')!
TP_Pelicula comment: ''!
!TP_Pelicula categoriesForClass!Kernel-Objects! !
!TP_Pelicula methodsFor!

anio
"getter de año"
^anio.!

darId: unId
id := unId.!

descripcion
"getter de descripcion"
^descripcion.!

director
^director.!

duracion
"getter de duracion"
^duracion.!

genero
"getter de genero"
^genero.!

id
"getter de id de pelicula"
^id!

iniPelicula: nomPeli director: directorPeli anio: anioPeli genero: generoPeli duracion: duracionPeli descripcion: descPeli
	"Inicializa una instancia de Pelicula"

	id := 0.
	titulo := nomPeli.
	director := directorPeli.
	anio := anioPeli.
	genero := generoPeli.
	duracion := duracionPeli.
	descripcion := descPeli!

ModiAnio: unAnio
"setter de año de pelicula"
anio =unAnio .!

ModiDescrip: unaDescrip
"setter de descripcion"
descripcion = unaDescrip .!

ModiDirector: unDir
"setter de director"
director =unDir.!

ModiDuracion: unaDuracion
"setter de duracion"
duracion =unaDuracion .!

ModiGenero: unGenero
"setter de genero"
genero =unGenero .!

ModiNombre: unNom
"setter de nombre"
	titulo = unNom.!

titulo
	^titulo! !
!TP_Pelicula categoriesFor: #anio!public! !
!TP_Pelicula categoriesFor: #darId:!public! !
!TP_Pelicula categoriesFor: #descripcion!public! !
!TP_Pelicula categoriesFor: #director!public! !
!TP_Pelicula categoriesFor: #duracion!public! !
!TP_Pelicula categoriesFor: #genero!public! !
!TP_Pelicula categoriesFor: #id!public! !
!TP_Pelicula categoriesFor: #iniPelicula:director:anio:genero:duracion:descripcion:!public! !
!TP_Pelicula categoriesFor: #ModiAnio:!public! !
!TP_Pelicula categoriesFor: #ModiDescrip:!public! !
!TP_Pelicula categoriesFor: #ModiDirector:!public! !
!TP_Pelicula categoriesFor: #ModiDuracion:!public! !
!TP_Pelicula categoriesFor: #ModiGenero:!public! !
!TP_Pelicula categoriesFor: #ModiNombre:!public! !
!TP_Pelicula categoriesFor: #titulo!public! !

!TP_Pelicula class methodsFor!

crearPelicula: unNom director: unDir anio: unAnio genero:unGenero duracion:unaDuracion descripcion: unaDesc
^(self new) iniPelicula: unNom director: unDir anio: unAnio genero: unGenero duracion: unaDuracion descripcion: unaDesc.! !
!TP_Pelicula class categoriesFor: #crearPelicula:director:anio:genero:duracion:descripcion:!public! !

