"Filed out from Dolphin Smalltalk 7"!

Object subclass: #TP_Cine
	instanceVariableNames: 'nombre direccion contadorRegistro contadorPeliculas listaPeliculas listaClientes cartelera listaEmpleados contadorEmpleados'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
TP_Cine guid: (GUID fromString: '{BA16A192-B1D9-4BF9-BA4F-89080B6EFD9F}')!
TP_Cine comment: ''!
!TP_Cine categoriesForClass!Kernel-Objects! !
!TP_Cine methodsFor!

agregarCliente: unCliente
	unCliente setId: self getContadorRegistro.
	listaClientes add: unCliente.
	Transcript
		show: '**Cliente creado con Exito!!';
		cr!

agregarEmpleado: unEmpleado
unEmpleado setId: (self getContadorEmpleados).
listaEmpleados add: unEmpleado.

Transcript show: '**Empleado creado con Exito!!'.!

agregarFuncion:unaFuncion
"Agrega una funcion a la lista de funciones del cine"
cartelera add: unaFuncion.!

agregarPelicula: unaPelicula
"agrega una Pelicula a la lista interna de Peliculas"
unaPelicula darId: self getContadorPeliculas.
listaPeliculas add: unaPelicula.!

buscarClientePorDni
| cliente dniBuscar |
Transcript clear. 
dniBuscar := Prompter prompt: 'Ingrese el dni a buscar (solo numero)'.
cliente := listaClientes detect: [:i | i dni = dniBuscar]
"En caso de que no encontremos al cliente"
ifNone:[ Transcript show: '[!!] No se encontro el DNI'. ^nil ].
"En caso de que si lo encontramos imprimimos datos"
(cliente ~= nil) ifTrue: [ cliente imprimirCliente ].


!

cargaGral
	| p1 p2 p3 p4 p5 p6 f1 f2 f3 f4 f5 emp1 cli1 cli2|
	p1 := TP_Pelicula
				crearPelicula: 'Avengers: Infinity War'
				director: 'Anthony Russo'
				anio: 2018
				genero: 'Acción | Aventura | Ciencia Ficción | Fantasia | Superheroes'
				duracion: 149
				descripcion: 'Los superhéroes se alían para vencer al poderoso Thanos, el peor enemigo al que se han enfrentado. Si Thanos logra reunir las seis gemas del infinito: poder, tiempo, alma, realidad, mente y espacio, nadie podrá detenerlo.'.
	p2 := TP_Pelicula
				crearPelicula: 'Iron Man'
				director: 'Jon Favreau'
				anio: 2008
				genero: 'Accion'
				duracion: 126
				descripcion: 'La trama gira en torno a Tony Stark, un empresario e ingeniero, que construye un exoesqueleto motorizado y se convierte en Iron Man, un superhéroe tecnológicamente avanzado.'.
	p3 := TP_Pelicula
				crearPelicula: 'Doctor Strange en el multiverso de la locura'
				director: 'Sam Raimi'
				anio: 2022
				genero: 'Accion'
				duracion: 126
				descripcion: 'DR. STRANGE EN EL MULTIVERSO DE LA LOCURA. "El Multiverso es un concepto del que conocemos terriblemente poco"'.
	p4 := TP_Pelicula
				crearPelicula: 'Jurassic World Dominio'
				director: 'Colin Trevorrow'
				anio: 2022
				genero: 'Aventuras'
				duracion: 147
				descripcion: 'Esta pelicula tiene lugar cuatro años después de la destrucción de Isla Nublar. Los dinosaurios ahora viven y cazan junto a los humanos en todo el mundo. Este frágil equilibrio cambiará el futuro y determinará, de una vez por todas, si los seres humanos deben seguir siendo los depredadores máximos en un planeta que ahora comparten con las criaturas más temibles de la historia.'.
	p5 := TP_Pelicula
				crearPelicula: 'Asesino sin memoria'
				director: 'Martin Campbell'
				anio: 2022
				genero: 'Accion'
				duracion: 114
				descripcion: 'Alex Lewis (Liam Neeson) es un experto asesino con una reputación de discreta precisión. Cuando Alex se niega a completar un trabajo para una peligrosa organización criminal, se convierte en un objetivo y debe ir a la caza de quienes lo quieren muerto. Alex está luchando con una severa pérdida de memoria, que afecta a todos sus movimientos y hace que su objetivo sea cada vez más difícil de completar. A medida que los enemigos se acercan, Alex se ve obligado a cuestionar cada una de sus acciones y en quién puede confiar.'.
	p6 := TP_Pelicula
				crearPelicula: 'Top Gun Maverick'
				director: 'Joseph Kosinski'
				anio: 2022
				genero: 'Accion'
				duracion: 131
				descripcion: 'Después de más de treinta años de servicio como uno de los mejores aviadores de la Armada, Pete "Maverick" Mitchell (Tom Cruise) está donde pertenece, como un valiente piloto de prueba y esquivando el avance en el rango que lo pondría en tierra. Enfrentando un futuro incierto y confrontando a los fantasmas de su pasado, Maverick se ve envuelto en una confrontación con sus propios miedos más profundos, culminando en una misión que exige el máximo sacrificio de aquellos que serán elegidos para volar.'.
	f1 := TP_Funcion
				crearFuncion: 1
				peliculaid: 3
				horario: 2000
				precio: 800.
	f2 := TP_Funcion
				crearFuncion: 1
				peliculaid: 4
				horario: 1700
				precio: 800.
	f3 := TP_Funcion
				crearFuncion: 2
				peliculaid: 5
				horario: 2000
				precio: 1200.
	f4 := TP_Funcion
				crearFuncion: 2
				peliculaid: 6
				horario: 1700
				precio: 1200.
	f5 := TP_Funcion
				crearFuncion: 2
				peliculaid: 4
				horario: 2200
				precio: 1200.
	emp1 := Empleado
				crearEmpleado: 'Agustin'
				lastName: 'Ojeda'
				email: 'agustinojeda20@gmail.com'
				dni: '42363376'
				legajo: '55940'
				sector: 'Ventas'.
	cli1 := Cliente
				crearCliente: 'Agustin'
				Apellido: 'Ojeda'
				email: 'agustinojeda20@gmail.com'
				dni: '42363376'.

	cli2 := Cliente
				crearCliente: 'Leandro'
				Apellido: 'Solano'
				email: 'leandro.solano20@gmail.com'
				dni: '123456789'.
	self agregarPelicula: p1.
	self agregarPelicula: p2.
	self agregarPelicula: p3.
	self agregarPelicula: p4.
	self agregarPelicula: p5.
	self agregarPelicula: p6.
	self agregarFuncion: f1.
	self agregarFuncion: f2.
	self agregarFuncion: f3.
	self agregarFuncion: f4.
	self agregarFuncion: f5.
	self agregarEmpleado: emp1.
	self agregarCliente: cli1.
	self agregarCliente: cli2.!

cargaManual_Cliente
| newClient nom ape email dni|
Transcript clear.
Transcript show: '**Sistema de carga manual de nuevo cliente';cr;show:' ';cr;
show:'Por favor complete los campos requeridos:'; cr; show:' ';cr.

nom := Prompter prompt: 'Ingrese su nombre:'.
ape := Prompter prompt: 'Ingrese su apellido:'.
email := Prompter prompt: 'Ingrese su email:'.
dni := Prompter prompt: 'Dni:'.
newClient := Cliente crearCliente: nom Apellido: ape email: email dni: dni.
(self) agregarCliente: newClient.	
^newClient.!

cargaManual_Pelicula
|opcion peliculaNombre director anio genero duracion  descripcion newPelicula|
Transcript clear.
Transcript show: '**Sistema de carga manual de pelicula/s';cr;
show:'Por favor complete los campos'.

"Permite cargar una pelicula/s con un bucle"
opcion := 'si'.
[(opcion asLowercase) sameAs: 'si' ] whileTrue:[
	peliculaNombre:= Prompter prompt: 'Nombre de la pelicula:'.
	director:= Prompter prompt: 'Nombre del director:'.
	anio:= Prompter prompt: 'AÃ±o:'.
	genero:= Prompter prompt: 'Genero:'.
	duracion:= Prompter prompt: 'Duracion:'.
	descripcion:= Prompter prompt: 'Descripcion:'.
	newPelicula:= TP_Pelicula crearPelicula: peliculaNombre director: director anio: anio genero: genero duracion: duracion descripcion: descripcion.
	(self) agregarPelicula: newPelicula.
	opcion := Prompter prompt: 'Desea ingresar otra pelicula? (si para continuar)' asString
].
!

cartelera
"Retorna la cartelera del cine"
^cartelera.!

getClienteByDni:unDni
|cliente|
cliente := listaClientes detect: [:i | i dni ==  unDni ].
^cliente.!

getContadorEmpleados
	contadorEmpleados := contadorEmpleados + 1.
	^contadorEmpleados!

getContadorPeliculas
contadorPeliculas := contadorPeliculas +1.
^contadorPeliculas .!

getContadorRegistro
contadorRegistro := contadorRegistro +1.
^contadorRegistro.!

initCine: unCine Direccion: unDir
	nombre := unCine.
	direccion := unDir.
	contadorRegistro := 0.
	contadorPeliculas := 0.
	contadorEmpleados := 0.
	listaPeliculas := OrderedCollection new.
	listaClientes := OrderedCollection new.
	listaEmpleados := OrderedCollection new.
	cartelera := OrderedCollection new.!

listarClientes
| colec |
Transcript clear; show: '*Lista de Clientes Registrados:';cr; show: ''.
colec := self verClientes.

(colec isEmpty) ifFalse: [ colec do: [:each | each imprimirCliente. ] ]
"En caso de que no haya clientes registrados mandamos el mensaje"
ifTrue: [ Transcript show: '';cr; show:'[!!] No hay clientes registrados' ].

!

listarNombresPeliculas
| colec x |
Transcript clear; show: '*Lista de Peliculas:'; cr.
colec := self verPeliculas.
x := 1.

colec do: [:each | Transcript show: x printString , ') ';
				show: ' IdPelicula: '; show: each id printString; 
				show: ' - Titulo: '; show: each titulo; cr.
				x := x + 1]!

listarPeliculas
|colec x|
Transcript clear;
show:'*Lista de Peliculas:'; cr.
colec:= (self) verPeliculas.
colec.
x := 1.
colec do: [:each  | Transcript show: x printString,') ';cr;
				show:'    *IdPelicula: ';  show: each id printString;cr;
				show:'    *Titulo: '; show: each titulo;cr;
				show:'    *Director: '; show: each director;cr; 
				show:'    *Duracion: '; show: each duracion printString;cr; 
				show:'    *Genero: '; show: each genero printString;cr; 
				show:'    *Año: '; show: each anio printString;cr; 
				show:'    *Descripcion: '; show: each descripcion;cr.
				x := x+1.
	Transcript show:'----------------------------------------------------------------------------';cr.
].
!

listarPeliculasCollect
| collec x |
Transcript clear; show: '*Lista de Peliculas con collect:'; cr.
x := 1.
collec := (self verPeliculas) collect: [:each | each titulo ].

"inspect de peliculas-nombre"
collec inspect.

"imprimir todos los nombres"
collec do: [:each | Transcript show: x printString, ')'; show: ' Titulo: '; show: each; cr. x := x+1].
!

menuCine
	Transcript clear.
	Transcript
		show: '[**Menu Principal Cine**] - Seleccione una opcion:';
		cr;
		show: '  Opcion1: Cargar manual Pelicula/s';
		cr;
		show: '  Opcion2: ListarPeliculas detallado';
		cr;
		show: '  Opcion3: ListarPeliculas (*collect, crea una lista con los nombres)';
		cr;
		show: '  Opcion4: Buscar cliente por DNI (*detect, devuelve 1 solo)';
		cr;
		show: '  Opcion5: Carga manual cliente';
		cr;
		show: '  Opcion6: Listar clientes registrados';
		cr;
		show: '  Opcion7: Filtrar peliculas por año (*select, devuelve las peliculas por filtro)';
		cr;
		show: '  Opcion8: Filtrar peliculas por año no querido (*reject, filtro no igual)';
		cr;
		show: '  Opcion9: Vender Entrada';
		cr;
		show: '  Opcion10: Ver peliculas ordenadas por año de estreno';
		cr. !

modiDireccion: unaDireccion
"Setter de direccion del cine"
direccion := unaDireccion.!

modiNombre: unNombre
"Setter de nombre del cine"
nombre := unNombre.!

rejectPeliculasAnio
|collec x anioBuscar|
anioBuscar := (Prompter prompt: 'Ingrese un año que NO quiere:') asNumber.
Transcript clear; show: '*Filtro de Peliculas por año diferente al ingresado con reject'; cr.
x := 1.
collec := (self verPeliculas) reject: [:each | each anio = anioBuscar].

"imprimir todos los nombres y el año"
(collec isEmpty) 
ifFalse: [collec do: [:each | Transcript show: x printString, ')'; 
show: ' Titulo: '; show: each titulo; show: '- Año: '; show: each anio printString ;cr. x := x+1]]

ifTrue: [ Transcript show: '';cr; show: '[!!] No se encontraron resultados' ].!

selectPeliculasAnio
| collec x anioBuscar|
anioBuscar := (Prompter prompt: 'Ingrese un año:') asNumber.
Transcript clear; show: '*Filtro de Peliculas por año ingresado con select:'; cr.
x := 1.
collec := (self verPeliculas) select: [:each | each anio = anioBuscar].

"imprimir todos los nombres y el año"
(collec isEmpty) 
ifFalse: [collec do: [:each | Transcript show: x printString, ')'; 
show: ' Titulo: '; show: each titulo; show: '- Año: '; show: each anio printString ;cr. x := x+1]]

ifTrue: [ Transcript show: '';cr; show: '[!!] No se encontraron resultados' ].
!

verCartelera
"Devuelve la lista de funciones"
^cartelera.!

verClientes
"Devuelve la lista de clientes"
^listaClientes.!

verDireccion
"retorna la direccion del cine"
^direccion.!

verEmpleados
"Devuelve la lista de empleados"
^listaEmpleados.!

verNombre
"retorna el nombre del cine"
^nombre.!

verPeliculas
"Devuelve la lista de peliculas"
^listaPeliculas.! !
!TP_Cine categoriesFor: #agregarCliente:!public! !
!TP_Cine categoriesFor: #agregarEmpleado:!public! !
!TP_Cine categoriesFor: #agregarFuncion:!public! !
!TP_Cine categoriesFor: #agregarPelicula:!public! !
!TP_Cine categoriesFor: #buscarClientePorDni!public! !
!TP_Cine categoriesFor: #cargaGral!public! !
!TP_Cine categoriesFor: #cargaManual_Cliente!public! !
!TP_Cine categoriesFor: #cargaManual_Pelicula!public! !
!TP_Cine categoriesFor: #cartelera!public! !
!TP_Cine categoriesFor: #getClienteByDni:!public! !
!TP_Cine categoriesFor: #getContadorEmpleados!public! !
!TP_Cine categoriesFor: #getContadorPeliculas!public! !
!TP_Cine categoriesFor: #getContadorRegistro!public! !
!TP_Cine categoriesFor: #initCine:Direccion:!public! !
!TP_Cine categoriesFor: #listarClientes!public! !
!TP_Cine categoriesFor: #listarNombresPeliculas!public! !
!TP_Cine categoriesFor: #listarPeliculas!public! !
!TP_Cine categoriesFor: #listarPeliculasCollect!public! !
!TP_Cine categoriesFor: #menuCine!public! !
!TP_Cine categoriesFor: #modiDireccion:!public! !
!TP_Cine categoriesFor: #modiNombre:!public! !
!TP_Cine categoriesFor: #rejectPeliculasAnio!public! !
!TP_Cine categoriesFor: #selectPeliculasAnio!public! !
!TP_Cine categoriesFor: #verCartelera!public! !
!TP_Cine categoriesFor: #verClientes!public! !
!TP_Cine categoriesFor: #verDireccion!public! !
!TP_Cine categoriesFor: #verEmpleados!public! !
!TP_Cine categoriesFor: #verNombre!public! !
!TP_Cine categoriesFor: #verPeliculas!public! !

!TP_Cine class methodsFor!

crearCine: unNom Direccion: unDir
^(self new) initCine: unNom Direccion: unDir.! !
!TP_Cine class categoriesFor: #crearCine:Direccion:!public! !

