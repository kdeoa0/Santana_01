create database botilleria character set utf8mb4 collate utf8mb4_spanish2_ci;

use botilleria;

  CREATE TABLE cliente (
  idCliente int auto_increment primary key,
  clienteRut int NOT NULL ,
  clienteNombre varchar(30) NOT NULL,
  clienteDireccion varchar(40) NOT NULL,
  clienteEmail varchar(100) DEFAULT NULL,
  clienteTelefono varchar(12) DEFAULT NULL
  );
  
  CREATE TABLE productos (
  productoCodigo int auto_increment primary key,
  productoDescripcion varchar(100) NOT NULL,
  productoProveedorID int NOT NULL,
  productoValor int NOT NULL,
  productoCantidad int NOT NULL
  );

CREATE TABLE FACTURA(
FactNro int not null primary key auto_increment,
factproveedorid int not null,
factfecha date default null,
factcodigo varchar (15) not null,
factvalor int not null,
factcantidad int not null,
idproducto int,
nombre varchar(30),
rut int,
foreign key (rut) references cliente(clienteRut),
foreign key (nombre) references cliente(clienteNombre),
foreign key (idproducto) references productos(productoCodigo)
);


CREATE TABLE compras (
	IdCompras int auto_increment primary key,
	comprasFacturaNro int NOT NULL,
	comprasFecha date DEFAULT NULL,
    foreign key (comprasFacturaNro) references FACTURA(FactNro),
    foreign key (comprasFecha) references FACTURA(factfecha)
  );
  

  CREATE TABLE boleta (
  boletaNro int NOT NULL auto_increment primary key,
  boletaFecha date DEFAULT NULL,
  boletaCodigo int,
  boletaValorProd int NOT NULL,
  foreign key (boletaCodigo) references productos(productoCodigo),
  foreign key (boletaValorProd) references productos(productoValor)
  );
  

  
  CREATE TABLE inventario (
  inventarioNro int NOT NULL auto_increment primary key,
  inventarioCodigo int NOT NULL,
  inventarioFechaCompra date NOT NULL,
  inventarioStock int NOT NULL,
  foreign key (inventarioCodigo) references productos(productoCodigo),
  foreign key (inventarioFechaCompra) references FACTURA(factfecha)
  );
  
  DELIMITER $$
CREATE PROCEDURE `SP_mostrarboleta` ()
BEGIN
Select * from Boleta;
END$$

DELIMITER ;

call SP_mostrarBoleta;

insert into factura (factfkproveedorid, factfecha, factfkcodigo, factvalor, factcantidad)
Values ( '1', 'enzo',  '03/05', '001', '500', '1');
insert into factura (factfkproveedorid, factfecha, factfkcodigo, factvalor, factcantidad)
values ('2', 'seba', '03/04', '002', '300', '2');
insert into factura (factfkproveedorid, factfecha, factfkcodigo, factvalor, factcantidad)
values ('3', 'kidel', '05/06', '003', '200', '3');


select * from Factura;


insert into venta (ventafkboletanro, ventafkclienterut)
	values ('002','125694589');
insert into venta (ventafkboletanro, ventafkclienterut)
	values ('003', '164875977');
    
select * from Venta;

insert into inventario (inventarioFKcodigo, inventarioFKestado, Inventariofechacompra, InventarioStock)
	Values ( '01','bueno', '05/06', '100');
insert into inventsario (incentarioFKCodigo, InventarioFKestado, Inventariofechacompra, InventarioStock)
	Values ('02','promedio', '06/05', '150');
insert into inventario (inventarioFkcodigo, inventarioFKestado, Inventariofechacompra, inventarioStock)
	Values ('03', 'excelente', '03/02', '140');
    
Select * from inventario;
 

