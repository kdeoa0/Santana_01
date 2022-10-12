use botilleria;

insert into cliente(clienteRut, clienteNombre, clienteDireccion, clienteEmail, clienteTelefono)
values ((2412124, "juan", "variata", "XxjuanxX@hotmail.com", "4334"),
		(241224, "jua", "variata", "XxjuaxX@hotmail.com", "43632344"),
		(2412124, "pedor", "variata", "XxpedorX@hotmail.com", "4113634"),
		(2412124, "rodri", "milkyway", "XrodriX@hotmail.com", "4354634"),
		(212124, "mari", "milkyway", "XmariX@hotmail.com", "43632"),
		(2412124, "leo", "chacabuco", "XleoxX@hotmail.com", "4346674"),
		(22124, "aqua", "milkyway", "XxaquaX@hotmail.com", "43634112"),
		(2414, "capri", "ñeñe", "XxcaprixX@hotmail.com", "43634221"),
		(241212, "libra", "valdivia", "XxlibraX@hotmail.com", "43616734"),
		(2124, "virgo", "chacabuco", "Xxvirgo@hotmail.com", "43673564"));

insert into productos(productoDescripcion, productoProveedor, productoValor, productoCantidad)
values (("la historia dejuan", 545, 23000, 100000),
		("la historia pedro", 545, 40000, 100000),
		("la historia diego", 555, 5000, 100000),
		("la historia rayen", 545, 7000, 100000),
		("la historia carla", 676, 8000, 100000),
		("la historia keloquzz", 545, 20000, 100000),
		("la historia mez klubien", 676, 2000, 100000),
		("la historia kkanka", 555, 1000, 100000),
		("la historia chin chun", 676, 200, 100000),
		("la historia kameha", 555, 7000, 100000));



insert into factura (factfecha, factcodigo, factcantidad)
Values ( ('2003-05-12', '069', '1'),
		( '2003-05-12', '420', '6'), 
        ( '2003-05-12', '007', '7'),
        ( '2003-06-12', '616', '4'),
        ( '2003-06-12', '691', '3'),
        ( '2003-06-12', '173', '5'),
        ( '2003-07-12', '124', '2'),
        ( '2003-08-12', '347', '1'),
        ( '2003-09-12', '521', '8'),
        ( '2003-06-12', '777', '9'));
        