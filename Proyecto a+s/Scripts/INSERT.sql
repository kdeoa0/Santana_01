 use botilleria;
 
 DELIMITER $$
CREATE PROCEDURE `Insert_cliente` (rut int, nombre varchar(30), direccion varchar(40), email varchar(100), telefono varchar(12))
BEGIN
insert into cliente(clienteRut, clienteNombre, clienteDireccion, clienteEmail, clienteTelefono)
values (rut, nombre, direccion, email, telefono);
END$$
 DELIMITER ;

 DELIMITER $$
CREATE PROCEDURE `Insert_productos` (descripcion varchar(100), proveedor int, valor int, cantidad int)
BEGIN
insert into productos(productoDescripcion, productoProveedor, productoValor, productoCantidad)
values (descripcion, proveedor, valor, cantidad);
END$$
 DELIMITER ;
 
  DELIMITER $$
CREATE PROCEDURE `Insert_factura` (fecha date, codigo varchar(15), cantidad int)
BEGIN
insert into factura (factfecha, factcodigo, factcantidad)
Values  (fecha, codigo, cantidad);
END$$
 DELIMITER ;