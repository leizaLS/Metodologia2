"Filed out from Dolphin Smalltalk 7"!

TP_Persona subclass: #Empleado
	instanceVariableNames: 'legajo sector'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Empleado guid: (GUID fromString: '{C88DB895-FF82-44AB-992F-ACC26EAD441B}')!
Empleado comment: ''!
!Empleado categoriesForClass!Kernel-Objects! !
!Empleado methodsFor!

iniEmpleado:aNombre lastName:aPellido email:aEmail  dni:aDni legajo:aLegajo sector:aSector
	"Returns a initialized instance of Persona"

	nombre := aNombre.
	apellido := aPellido.
	email := aEmail.
	dni := aDni.
	legajo := aLegajo.
	sector := aSector.!

verLegajo

^legajo.!

verSector

^sector.! !
!Empleado categoriesFor: #iniEmpleado:lastName:email:dni:legajo:sector:!public! !
!Empleado categoriesFor: #verLegajo!public! !
!Empleado categoriesFor: #verSector!public! !

!Empleado class methodsFor!

crearEmpleado:aNombre lastName:aPellido email:aEmail  dni:aDni legajo:aLegajo sector:aSector
"Return a initialized instance of Empleado"
^(self new) iniEmpleado:aNombre lastName:aPellido email:aEmail  dni:aDni legajo:aLegajo sector:aSector.! !
!Empleado class categoriesFor: #crearEmpleado:lastName:email:dni:legajo:sector:!public! !

