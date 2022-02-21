Class {
	#name : #GenerarPropuestas,
	#superclass : #Ventana,
	#instVars : [
		'listado'
	],
	#category : #FAI2991
}

{ #category : #'as yet unclassified' }
GenerarPropuestas >> crearComponentes [ 
listado:= RubScrolledTextMorph new.
listado beReadOnly; extent: 300 @ 500; left: self left + 500; top: 60.
(UnGestor generarPropuestasSolicitudesPendientes).
self update: (UnGestor getColPropuestas).
self addMorph: listado.
]

{ #category : #initialization }
GenerarPropuestas >> initialize [
super initialize.
self crearComponentes.
]

{ #category : #updating }
GenerarPropuestas >> update:lis [
	lis
		ifEmpty: [ listado setText: 'Propuestas Generadas' ]
		ifNotEmpty: [ listado setText: (UnGestor colAString:lis) ]
]
