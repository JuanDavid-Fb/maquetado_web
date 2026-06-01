create database tiendita;
use tiendita;
create table productos(  
	 id_producto int primary key auto_increment,
     nombre_producto varchar(50),
     descripcion_producto varchar(200),
     precio_venta_producto decimal (18),
     activo_producto boolean
     );
use tiendita;
select * from productos; -- read (leer)

insert into productos (nombre_producto, descripcion_producto, precio_venta_producto, activo_producto)
values ("colgate","crema dental blanqueadora",4500,1);

insert into productos (nombre_producto, descripcion_producto, precio_venta_producto, activo_producto)
values
("suzuki","Motocicleta",130000,1),
("Yamaha","Crypton",500000,1),
("Postobon","Gaseosa",4500,1),
("Nike","Air Max 1",100000,1),
("Shaft","casco",1500,1),
("Polo","Camiseta",3500000,1),
("Ferrari","automovil",23000000,1),
("Nvidia","Tarjeta Grafica",57000,1),
("Adidas","Ropa deportiva",120000,1),
("Apple","Telefono",87000,1); -- create (crear masivo)

update productos set nombre_producto = "cliets adans" where id_producto = 5; -- update (actualizar o editar)
DELETE FROM productos WHERE id_producto = 15;
use proveedores;
create table proveedores (
	id_producto int primary key auto_increment,
	nombre_proveedor varchar(50),
	descripcion_proveedor varchar(200),
    precio_venta_proveedor decimal (18),
	activo_proveedor boolean
     );
use tiendita;
select * from proveedores; -- read (leer)

insert into proveedores (nombre_proveedor,descripcion_proveedor,precio_venta_proveedor,activo_proveedor)
values
("Samsung","Televisor",2500000,1),
("Lenovo","Portatil",3200000,1),
("Coca-Cola","Bebida",3500,1),
("Puma","Tenis deportivos",180000,1),
("HJC","Casco motocicleta",220000,1),
("Levis","Jean",150000,1),
("Toyota","Automovil",85000000,1),
("AMD","Procesador",1200000,1),
("Reebok","Sudadera",140000,1),
("Xiaomi","Smartphone",1300000,1);

select* from proveedores;

alter table proveedores
add telefono_proveedor varchar (50) after precio_venta_proveedor;

insert into proveedores (nombre_proveedor,descripcion_proveedor,precio_venta_proveedor,telefono_proveedor,activo_proveedor)
values
("Samsung","Televisor",2500000,47372828,1),
("Lenovo","Portatil",3200000,5743892,1),
("Coca-Cola","Bebida",3500,567483923,1),
("Puma","Tenis deportivos",180000,74920384,1),
("HJC","Casco motocicleta",220000,7439201029,1),
("Levis","Jean",150000,1910203810,1),
("Toyota","Automovil",85000000,10029383718,1),
("AMD","Procesador",1200000,108371,1),
("Reebok","Sudadera",140000,19282819,1),
("Xiaomi","Smartphone",1300000,192928919182,1);


