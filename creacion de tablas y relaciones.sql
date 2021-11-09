----Creación de la tabla barco--
create table barco(
codigo_barco varchar not null,
codigo_permiso varchar not null,
numero_tripulantes numeric not null,
bandera text not null,
constraint PK_codigo_barco primary key (codigo_barco)
);
----Creación de la tabla atraque--
create table atraque(
codigo_atraque varchar not null,
codigo_grua varchar not null,
codigo_barco varchar not null,
fecha date not null,
constraint PK_codigo_atraque primary key (codigo_atraque)
);
----Creación de la tabla gruas--
create table gruas(
codigo_grua varchar not null,
tipo text not null,
capacidad varchar not null,
constraint PK_codigo_grua primary key (codigo_grua)
);
----Creación de la tabla ingreso_astillero--
create table ingreso_astillero(
codigo_ingreso varchar not null,
codigo_barco varchar not null, 
fecha_ingreso date not null,
observaciones varchar not null,
constraint PK_codigo_ingreso primary key (codigo_ingreso)
);
----Creación de la tabla empleadomantenimiento--
create table empleado_mantenimiento(
codigo_emp_mantenimiento varchar not null,
ci varchar not null,
nombre text not null,
contacto varchar not null,
direccion varchar not null,
titulo varchar not null,
fecha_ingreso date not null,
constraint PK_codigo_emp_mantenimiento primary key (codigo_emp_mantenimiento)
);
----Creación de la tabla mantenimiento--
create table mantenimiento(
codigo_mantenimiento varchar not null,
codigo_herramienta varchar not null,
codigo_emp_mantenimiento varchar not null,
codigo_barco varchar not null,
fecha_mantenimiento date not null,
constraint PK_codigo_mantenimiento primary key (codigo_mantenimiento)
);
----Creación de la tabla herramientas--
create table herramientas(
codigo_herramienta varchar not null,
nombre varchar not null,
descripcion varchar not null,
constraint PK_codigo_herramienta primary key (codigo_herramienta)
);
----Creación de la tabla recepcion_de_permisos--
create table recepcion_de_permisos(
codigo_recepcion varchar not null,
codigo_atraque varchar not null,
codigo_permiso varchar not null,
codigo_emp_portuario varchar not null,
fecha_recepcion date not null,
constraint PK_codigo_recepcion primary key (codigo_recepcion)
);
----Creación de la tabla permisos--
create table permisos(
codigo_permiso varchar not null,
tipo_permiso text not null,
descripcion text not null,
constraint PK_codigo_permiso primary key (codigo_permiso)
);
----Creación de la tabla emision_permisos--
create table emision_permisos(
codigo_emision varchar not null,
codigo_emp_portuario varchar not null,
codigo_permiso varchar not null,
fecha_emision date not null,
constraint PK_codigo_emision primary key (codigo_emision)
);
----Creación de la tabla empleado_dep_portuario--
create table empleado_dep_portuario(
codigo_emp_portuario varchar not null,
ci varchar not null,
nombre text not null,
contacto varchar  not null,
direccion varchar not null,
fecha_inicio_labor date not null,
constraint PK_codigo_emp_portuario primary key (codigo_emp_portuario)
);
----Creación de la tabla zarpes--
create table zarpes(
codigo_zarpe varchar not null,
codigo_barco varchar not null,
fecha date not null,
motivo text not null,
constraint PK_codigo_zarpe primary key (codigo_zarpe)
);
----Creación de la tabla pesca--
create table pesca(
codigo_registro_pesca varchar not null,
codigo_barco varchar not null,
codigo_contenedor varchar not null,
tipo_pesca text not null,
tipo_pescado text not null,
peso_pesca numeric not null,
constraint PK_codigo_registro_pesca primary key (codigo_registro_pesca)
);

----Creación de la tabla reventa_pesca--
create table reventa_pesca(
codigo_reventa varchar not null,
codigo_contenedor varchar not null,
codigo_vendedor varchar not null,
codigo_cliente varchar not null,
fecha_reventa date not null,
peso_vendido numeric not null,
precio_reventa numeric not null,
constraint PK_codigo_reventa primary key (codigo_reventa)
);

----Creación de la tabla contenedor--
create table contenedor(
codigo_contenedor varchar not null,
capacidad varchar not null,
constraint PK_codigo_contenedor primary key (codigo_contenedor)
);
----Creación de la tabla vendedor--
create table vendedor(
codigo_vendedor varchar not null,
ci_vendedor varchar not null,
nombre_vendedor text not null,
direccion varchar not null,
contacto varchar not null,
constraint PK_codigo_vendedor primary key (codigo_vendedor)
);
----Creación de la tabla cliente--
create table cliente(
codigo_cliente varchar not null,
ci_cliente varchar not null,
nombre_cliente text not null,
direccion varchar not null,
contacto varchar not null,
constraint PK_codigo_cliente primary key (codigo_cliente)
);

-----creacion de las llaves foraneas--
alter table atraque
	add constraint FK_atraque_grua foreign key (codigo_grua)
	references gruas (codigo_grua)
	on delete restrict on update restrict;
alter table atraque
	add constraint FK_atraque_codigobarco foreign key (codigo_barco)
	references barco (codigo_barco)
	on delete restrict on update restrict;
alter table recepcion_de_permisos
	add constraint FK_recepcion_codigoatraque foreign key (codigo_atraque)
	references atraque (codigo_atraque)
	on delete restrict on update restrict;
alter table recepcion_de_permisos
	add constraint FK_recepcion_codigopermisos foreign key (codigo_permiso)
	references permisos (codigo_permiso)
	on delete restrict on update restrict;	
alter table recepcion_de_permisos
	add constraint FK_recepcion_codigoemportuario foreign key (codigo_emp_portuario)
	references empleado_dep_portuario (codigo_emp_portuario)
	on delete restrict on update restrict;
	----------
	
alter table emision_permisos
	add constraint FK_recepcion_codigoemportuario foreign key (codigo_emp_portuario)
	references empleado_dep_portuario (codigo_emp_portuario)
	on delete restrict on update restrict;
alter table emision_permisos
	add constraint FK_recepcion_codigopermiso foreign key (codigo_permiso)
	references permisos (codigo_permiso)
	on delete restrict on update restrict;
alter table contenedor
	add constraint FK_recepcion_codigoregistropesca foreign key (codigo_registro_pesca)
	references pesca (codigo_registro_pesca)
	on delete restrict on update restrict;
alter table zarpes
	add constraint FK_recepcion_codigobarco foreign key (codigo_barco)
	references barco (codigo_barco)
	on delete restrict on update restrict;
alter table barco
	add constraint FK_recepcion_codigopermiso foreign key (codigo_permiso)
	references permisos (codigo_permiso)
	on delete restrict on update restrict;
	
	------------------
alter table mantenimiento
	add constraint FK_recepcion_codigoherramienta foreign key (codigo_herramienta)
	references herramientas (codigo_herramienta)
	on delete restrict on update restrict;	
alter table mantenimiento
	add constraint FK_recepcion_codigoempmantenimiento foreign key (codigo_emp_mantenimiento)
	references empleado_mantenimiento (codigo_emp_mantenimiento)
	on delete restrict on update restrict;
alter table mantenimiento
	add constraint FK_recepcion_codigobarco foreign key (codigo_barco)
	references barco (codigo_barco)
	on delete restrict on update restrict;
alter table pesca
	add constraint FK_recepcion_codigobarco foreign key (codigo_barco)
	references barco (codigo_barco)
	on delete restrict on update restrict;
	
	
alter table pesca
	add constraint FK_recepcion_codigocontenedor foreign key (codigo_contenedor)
	references contenedor (codigo_contenedor)
	on delete restrict on update restrict;
alter table reventa_pesca
	add constraint FK_recepcion_codigocontenedor foreign key (codigo_contenedor)
	references contenedor (codigo_contenedor)
	on delete restrict on update restrict;
alter table reventa_pesca
	add constraint FK_recepcion_codigovendedor foreign key (codigo_vendedor)
	references vendedor (codigo_vendedor)
	on delete restrict on update restrict;
	
alter table reventa_pesca
	add constraint FK_recepcion_codigocliente foreign key (codigo_cliente)
	references cliente (codigo_cliente)
	on delete restrict on update restrict;
	
alter table ingreso_astillero
	add constraint FK_ingreso_codigobarco foreign key (codigo_barco)
	references barco (codigo_barco)
	on delete restrict on update restrict;