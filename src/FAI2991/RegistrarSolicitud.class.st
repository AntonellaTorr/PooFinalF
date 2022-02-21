Class {
	#name : #RegistrarSolicitud,
	#superclass : #Ventana,
	#instVars : [
		'solicitudTrabajo',
		'solicitudServicio',
		'solicitudServicioProducto',
		'id',
		'tipo',
		'monto',
		'producto1',
		'producto2',
		'producto3',
		'guardadoTrabajo',
		'guardadoServicio',
		'guardadoServicioYP',
		'listadoSolicitudes',
		'calendar',
		'titulo1',
		'rub1',
		'rub2',
		'rub3',
		'rub4',
		'nombreEmpresa'
	],
	#category : #FAI2991
}

{ #category : #'as yet unclassified' }
RegistrarSolicitud >> crearComponentes [ 
|espacioDerecha |

   espacioDerecha:= self left + 100.
	calendar:=  CalendarMorph openOn: Date today.
	calendar left: espacioDerecha ; top:200.
	
	solicitudTrabajo := Boton nombre: 'Solicitud de Trabajo' tamanio: 200 @ 30.
	solicitudServicio  := Boton nombre: 'Solicitud de Servicio' tamanio: 200 @ 30.
	solicitudServicioProducto  := Boton nombre: 'Solicitud de Servicio y Producto' tamanio: 200 @ 30.
	listadoSolicitudes  := RubScrolledTextMorph new.
	listadoSolicitudes  beReadOnly; extent:  400@ 500; left: self left + 500; top: 60.
	
	id:=  RubTextFieldMorph new.
   id extent: 200 @ 90; left: self left+100 ; top:60; ghostText: 'Ingrese el id'.

	
	nombreEmpresa:=  RubTextFieldMorph new.
   nombreEmpresa extent: 200 @ 90; left: self left+100 ; top:380; ghostText: 'Ingrese el nombre de la empresa'.
	monto:=  RubTextFieldMorph new.
	monto extent: 200 @ 90; left: self left+100 ; top: 460 ; ghostText: 'Ingrese el monto'.
	
	titulo1  := Titulo crearConTitulo: 'Ingrese la fecha de validez' tam: 11.
	titulo1 left: espacioDerecha ; top: 170; color:Color white.
	 producto1     := CheckboxMorph new.
	 producto2     := CheckboxMorph new.
	 producto3     := CheckboxMorph new.
	 producto1 label: 'Repuestos'; extent: 100 @ 20; left: espacioDerecha  ; top:490.
    producto2 label: 'Jabon'; extent: 100 @ 20; left: espacioDerecha + 100; top: 490.
    producto3 label: 'Ladrillos'; extent:100 @ 20; left: espacioDerecha +200 ; top:  490.

	 tipo := SearchMorph new.
	 tipo content: 'Uniformes'.
	 tipo content: 'Puntuales'.
	 tipo extent: 200 @30 ; left: espacioDerecha ; top:415.
	
   guardadoTrabajo:= Boton nombre: 'Guardar solicitud de trabajo' tamanio: 200 @ 30.
	guardadoServicio := Boton nombre: 'Guardar solicitud de servicio' tamanio: 200 @ 30. 
	guardadoServicioYP := Boton nombre: 'Guardar solicitud de servicio y producto' tamanio: 250 @ 30.

	rub1         := CheckboxMorph new.
	rub2         := CheckboxMorph new.
	rub3         := CheckboxMorph new.
	rub4         := CheckboxMorph new.	

	 rub1 label: 'Ropa'; extent: 100 @ 20; left: espacioDerecha ; top: 100.
    rub2 label: 'Limpieza'; extent: 100 @ 20; left: espacioDerecha + 100; top:  100.
    rub3 label: 'Mecanica'; extent: 100 @ 20; left: espacioDerecha ; top: 130.
    rub4 label: 'Construccion'; extent: 100 @ 20; left: espacioDerecha + 100; top: 130.	
	
	solicitudTrabajo  left: self left + 150; top:150.	
	solicitudServicio  left: self left + 400; top:150. 
	solicitudServicioProducto  left: self left + 650; top:150.
	
	guardadoTrabajo  left: espacioDerecha  ;top:430.
	guardadoServicio left: espacioDerecha ; top:500.
	guardadoServicioYP left: espacioDerecha ; top:520.
	

self 
	addMorph: solicitudTrabajo;
	addMorph: solicitudServicio;
	addMorph: solicitudServicioProducto;
	addMorph: guardadoServicio;
	addMorph: guardadoTrabajo;
	addMorph: guardadoServicioYP;
	addMorph: producto1;
	addMorph: producto2;
	addMorph: producto3;
	addMorph: tipo;
	addMorph: calendar;
	addMorph: rub1;
	addMorph: rub2;
	addMorph: rub3;
   addMorph: rub4;
	addMorph: id;
	addMorph:monto;
	addMorph: listadoSolicitudes;
	addMorph: titulo1;
	addMorph: nombreEmpresa.

	self iniciar. 
	UnGestor addDependent: self.
		

	
]

{ #category : #'as yet unclassified' }
RegistrarSolicitud >> formularioServicioYProd [
solicitudTrabajo hide.
solicitudServicio hide.
solicitudServicioProducto hide. 
id show.
nombreEmpresa show.
titulo1 show.
calendar show. 
rub1 show. 
rub2 show. 
rub3 show. 
rub4 show. 
tipo show.
monto show.
producto1 show.
producto2 show.  
producto3 show.
guardadoTrabajo  hide.
guardadoServicio hide.
guardadoServicioYP show.
listadoSolicitudes show.
]

{ #category : #'as yet unclassified' }
RegistrarSolicitud >> formularioSolServicio [
solicitudTrabajo hide.
solicitudServicio hide.
solicitudServicioProducto hide. 
id show.
nombreEmpresa show.
titulo1 show. 
calendar show. 
rub1 show. 
rub2 show. 
rub3 show. 
rub4 show. 
tipo show.
monto show.
producto1 hide.
producto2 hide.  
producto3 hide.
guardadoTrabajo  hide.
guardadoServicio show.
guardadoServicioYP hide.
listadoSolicitudes show.
]

{ #category : #'as yet unclassified' }
RegistrarSolicitud >> formularioSolTrabajo [ 
solicitudTrabajo hide.
solicitudServicio hide.
solicitudServicioProducto hide. 
id show.
nombreEmpresa show.
titulo1 show. 
calendar  show. 
rub1 show. 
rub2 show. 
rub3 show. 
rub4 show. 
tipo hide.
monto hide.
producto1 hide.
producto2 hide.  
producto3 hide.
guardadoTrabajo  show.
guardadoServicio hide.
guardadoServicioYP hide.
listadoSolicitudes show.
]

{ #category : #'as yet unclassified' }
RegistrarSolicitud >> iniciar [ 
solicitudTrabajo show.
solicitudServicio show.
solicitudServicioProducto show. 
id hide.
nombreEmpresa hide. 
rub1 hide. 
rub2 hide. 
rub3 hide. 
rub4 hide. 
tipo hide.
titulo1 hide. 
calendar hide. 
monto hide.
producto1 hide.
producto2 hide.  
producto3 hide.
guardadoTrabajo  hide.
 guardadoServicio hide.
guardadoServicioYP hide.
listadoSolicitudes hide.


]

{ #category : #initialization }
RegistrarSolicitud >> initialize [ 
super initialize.
self crearComponentes.
self registrarNuevasSolicitudes.
]

{ #category : #'as yet unclassified' }
RegistrarSolicitud >> registrarNuevasSolicitudes [
|colR colP|
 solicitudTrabajo mouseAction: [ self formularioSolTrabajo].
		 solicitudServicio mouseAction: [ self formularioSolServicio].
	 solicitudServicioProducto mouseAction: [ self formularioServicioYProd].
		colR:= OrderedCollection new.
	(rub1 buttonMorph selected) ifTrue: [ colR add:  rub1 label ].	
		(rub2 buttonMorph selected) ifTrue: [ colR add: rub2 label ].
			(rub3 buttonMorph selected)	ifTrue: [ colR add: rub3 label ].
				
			guardadoTrabajo mouseAction: [UnGestor registrarSolicitud: (id  text asString) caracteristicas: colR unNombre: nombreEmpresa text asString fechaValidez: calendar date.
				self update: (UnGestor getColSolicitudes)].
			
			guardadoServicioYP mouseAction: [ 
				colP:= OrderedCollection new.
				(producto1) buttonMorph selected ifTrue: [ colP add: producto1 label ].
				(producto2) buttonMorph selected ifTrue: [ colP add: producto2 label ].
          	(producto3) buttonMorph selected  ifTrue: [ colP add: producto3 label ] . 
				UnGestor registrarSolicitud: id text asString  caracteristicas: colR unNombre: nombreEmpresa text asString fechaValidez: calendar date tipo:tipo monto:monto	producto:colP.
				self update: (UnGestor getColSolicitudes)].
			
			guardadoServicio mouseAction: [UnGestor registrarSolicitud: (id text asString) caracteristicas: colR unNombre: nombreEmpresa text asString fechaValidez: calendar date 			tipo:tipo monto: monto.
							self update: (UnGestor getColSolicitudes)
							].
			
]

{ #category : #updating }
RegistrarSolicitud >> update:colSol [
colSol 
	ifEmpty: [ listadoSolicitudes setText:'Listado Solicitudes Vacio' ]
	ifNotEmpty:[listadoSolicitudes  setText: (UnGestor colAString: colSol)].
]
