 use botilleria;
 DELIMITER $$
CREATE PROCEDURE `Update_cliente` (id int, rut int, nombre varchar(30), direccion varchar(40), email varchar(100), telefono varchar(12))
BEGIN
update cliente
set clienteRut= rut, clienteNombre=nombre, clienteDireccion=direccion, clienteEmail=email, clienteTelefono=telefono 
where id = idCliente;
END$$

DELIMITER ;

 DELIMITER $$
CREATE PROCEDURE `Update_productos` (id int, descripcion varchar(100), proveedor int, valor int, cantidad int)
BEGIN
update cliente
set productoDescripcion=descripcion, productoProveedor=proveedor, productoValor=valor, productoCantidad=cantidad 
where id = productoCodigo;
END$$

DELIMITER ;

 DELIMITER $$
CREATE PROCEDURE `Update_factura` (id int, fecha date, codigo varchar(15), cantidad int)
BEGIN
update factura
set factfecha=fecha, factcodigo=codigo, factcantidad=cantidad
where id = FactNro;
END$$

DELIMITER ;






