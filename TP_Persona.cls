"Filed out from Dolphin Smalltalk 7"!

Object subclass: #TP_Persona
	instanceVariableNames: 'id nombre apellido email dni'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
TP_Persona guid: (GUID fromString: '{73CDCEBE-0D46-4D8E-883B-C416FEFD0455}')!
TP_Persona comment: ''!
!TP_Persona categoriesForClass!Kernel-Objects! !
!TP_Persona methodsFor!

apellido
	"return lastName"

	^apellido!

apellido: aStringName
	"Initialize the lastName of the receiver to aStringName"

	apellido := aStringName!

dni
"return dni"
^dni!

email
"return email"
^email!

getId
^id.!

modiDni: aStringDni
	"Initialize the Email of the receiver to aStringName"
	dni:= aStringDni!

modiEmail: aStringEmail
	"Initialize the Email of the receiver to aStringName"
	email:= aStringEmail!

modiId: aStringId
	"Initialize the id of the receiver to aStringName"
	dni:= aStringId!

modiNombre: aStringName
	"Private - Initialize the name of the receiver to aStringName"
	nombre := aStringName!

nombre
	"Devuelve el nombre"
	^nombre!

setId: unId
id := unId.! !
!TP_Persona categoriesFor: #apellido!public! !
!TP_Persona categoriesFor: #apellido:!public! !
!TP_Persona categoriesFor: #dni!public! !
!TP_Persona categoriesFor: #email!public! !
!TP_Persona categoriesFor: #getId!public! !
!TP_Persona categoriesFor: #modiDni:!public! !
!TP_Persona categoriesFor: #modiEmail:!public! !
!TP_Persona categoriesFor: #modiId:!public! !
!TP_Persona categoriesFor: #modiNombre:!public! !
!TP_Persona categoriesFor: #nombre!public! !
!TP_Persona categoriesFor: #setId:!public! !

