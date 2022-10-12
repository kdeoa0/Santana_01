use botilleria;
 
 DELIMITER $$
CREATE PROCEDURE `select_cliente` (idi int)
BEGIN
select * from cliente where id =idi;
END$$
 DELIMITER ;
 
  DELIMITER $$
CREATE PROCEDURE `select_productos` (idi int)
BEGIN
select * from productos where id =idi;
END$$
 DELIMITER ;
 
  DELIMITER $$
CREATE PROCEDURE `select_FACTURA` (idi int)
BEGIN
select * from FACTURA where id =idi;
END$$
 DELIMITER ;
 
  DELIMITER $$
CREATE PROCEDURE `select_compras` (idi int)
BEGIN
select * from compras where id =idi;
END$$
 DELIMITER ;
 
  DELIMITER $$
CREATE PROCEDURE `select_boleta` (idi int)
BEGIN
select * from boleta where id =idi;
END$$
 DELIMITER ;
 
  DELIMITER $$
CREATE PROCEDURE `select_inventario` (idi int)
BEGIN
select * from inventario where id =idi;
END$$
 DELIMITER ;