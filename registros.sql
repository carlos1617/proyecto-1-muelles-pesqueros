---Ingreso de registros a la tabla 'gruas'
insert into gruas values ('g001','fija','30t');
insert into gruas values ('g002','porta contenedores','20t');
insert into gruas values ('g003','movil','10t');
insert into gruas values ('g004','sobre ruedas','5t');
---Ingreso de registros a la tabla 'permisos'
insert into permisos values ('pp001','comercial artesanal','pesca usando tecnicas tradicionales');
insert into permisos values ('pp002','comercial industrial','pesca con fines comerciales mediante la captura masiva de especies marinas');
insert into permisos values ('pp004','comercial ornamental','pesca con la finalidad de capturar especies que pueden mantenerse vivos en pecesar o acuarios');
insert into permisos values ('pp005','exploratoria','pesca con el fin de determinar la existencia de recursos pesqueros');
---Ingreso de registros a la tabla 'barco'--
insert into barco values ('b001','pp001','5','ecuatoriana');
insert into barco values ('b002','pp001','7','japonesa');
insert into barco values ('b003','pp002','30','china');
insert into barco values ('b004','pp004','6','ecuatoriana');
insert into barco values ('b005','pp002','50','koreana');
insert into barco values ('b006','pp002','32','francesa');
insert into barco values ('b007','pp005','10','ecuatoriana');
insert into barco values ('b008','pp002','40','italiana');
---Ingreso de registros a la tabla 'atraque'--
insert into atraque values ('a001','g001','b003','2001-05-17');
insert into atraque values ('a002','g001','b005','2001-10-12');
insert into atraque values ('a003','g002','b006','2002-01-01');
insert into atraque values ('a004','g003','b007','2002-07-22');
insert into atraque values ('a005','g004','b002','2002-09-25');
insert into atraque values ('a006','g004','b004','2002-12-22');
insert into atraque values ('a007','g001','b008','2003-02-12');
insert into atraque values ('a008','g004','b001','2003-05-25');
insert into atraque values ('a009','g004','b003','2001-07-12');
---Ingreso de registros a la tabla 'empleado_dep_portuario'--
insert into empleado_dep_portuario values ('e001','1315475358','carlos palma','0988379640','barrio 4 de noviembre', '2001-05-10');
insert into empleado_dep_portuario values ('e002','1354515451','juan pueblo','0905874695','calle 12 av 10', '2001-07-12');
insert into empleado_dep_portuario values ('e003','0982147685', 'esteban ramirez','0982163871','calle 13 av 8', '2002-05-28');
insert into empleado_dep_portuario values ('e004','0854155156', 'simón perez','0917689502','calle 113 av 201', '2003-01-05');
---Ingreso de registros a la tabla 'emision_permisos'--
insert into emision_permisos values ('ep001','e001','pp001','2001-07-16');
insert into emision_permisos values ('ep002','e002','pp004','2001-09-22');
insert into emision_permisos values ('ep003','e003','pp002','2002-05-29');
insert into emision_permisos values ('ep004','e001','pp005','2001-08-18');
insert into emision_permisos values ('ep005','e002','pp001','2002-09-02');
insert into emision_permisos values ('ep006','e004','pp002','2003-01-07');
insert into emision_permisos values ('ep007','e002','pp004','2002-04-01');
---Ingreso de registros a la tabla 'cliente'--
insert into cliente values ('c001','1315475982','pedro salazar','calle 8 av 12','0982452151');
insert into cliente values ('c002','1312478692','eduardo mendoza','calle 22 av 15','0924685130');
insert into cliente values ('c003','0982181841','mario ortiz','calle 112 av 110','0925874631');
insert into cliente values ('c004','1387159350','fortunato miranda','calle 4 av 1','0980013584');
insert into cliente values ('c005','0988379451','juan alvez','calle 10 av 15','0936840210');
---Ingreso de registros a la tabla 'contenedor'--
insert into contenedor values ('co001','300');
insert into contenedor values ('co002','1000');
insert into contenedor values ('co003','4000');
insert into contenedor values ('co004','100');
insert into contenedor values ('co005','500');
insert into contenedor values ('co006','120');
insert into contenedor values ('co007','5000');
---Ingreso de registros a la tabla 'pesca'--
insert into pesca values ('cp001','b001','co001','pesca de bajura ','dorado','100');
insert into pesca values ('cp002','b003','co002','pesca de altura ','atun','1000');
insert into pesca values ('cp003','b005','co005','pesca de altura ','sardina','3000');
insert into pesca values ('cp004','b004','co003','pesca de bajura ','camotillo','80');
insert into pesca values ('cp005','b007','co004','pesca de altura ','Pez espada','500');
insert into pesca values ('cp006','b008','co006','pesca de altura ','atun','5000');
insert into pesca values ('cp007','b002','co007','pesca de altura ','albacora','100');

---Ingreso de registros a la tabla 'empleado_mantenimiento'--
insert into empleado_mantenimiento values ('em001','1315745218','enrique saltos','098523178','calle 10 av 34','mecanico naval','2001-05-01');
insert into empleado_mantenimiento values ('em002','0980505129','felipe espinal','0923262848','calle 8 av 10','biologo marino','2001-08-12');
insert into empleado_mantenimiento values ('em003','1317896452','adolfo perez','0926984750','calle 111 av 15','mecanico naval','2002-01-31');
---Ingreso de registros a la tabla 'herramientas'--
insert into herramientas values ('h001','soldadora','soldadora manual');
insert into herramientas values ('h002','llaves','juego de llaves');
insert into herramientas values ('h003','destornilladores','juego de destornilladores de diferente cabezas');
insert into herramientas values ('h004','martillo','martillo');
insert into herramientas values ('h005','alicates','alicates de diferentes tamaños');
insert into herramientas values ('h006','cinta','cinta aislante');
insert into herramientas values ('h008','varita telescópica','vara telescópica con imán');
insert into herramientas values ('h009','multímetro','multimetro para mantenimiento de circuitos');
insert into herramientas values ('h010','taladro','taladro con bateria recargable');
insert into herramientas values ('h011','extractor','extractor de filtro de aceite');
---Ingreso de registros a la tabla 'mantenimiento'--
insert into mantenimiento values ('man001','h001','em001','b001','2001-05-30');
insert into mantenimiento values ('man002','h003','em003','b005','2001-10-31');
insert into mantenimiento values ('man003','h011','em001','b007','2002-12-27');
insert into mantenimiento values ('man004','h004','em002','b004','2002-12-28');
---Ingreso de registros a la tabla 'recepcion_de_permisos'--
insert into recepcion_de_permisos values ('core001','a001','pp001','e001','2001-05-17');
insert into recepcion_de_permisos values ('core002','a002','pp002','e003','2001-10-12');
insert into recepcion_de_permisos values ('core003','a003','pp002','e002','2002-01-01');
insert into recepcion_de_permisos values ('core004','a004','pp005','e004','2002-07-22');
insert into recepcion_de_permisos values ('core005','a005','pp001','e002','2002-09-25');
insert into recepcion_de_permisos values ('core006','a006','pp004','e003','2002-12-12');
insert into recepcion_de_permisos values ('core007','a007','pp002','e004','2003-02-12');
insert into recepcion_de_permisos values ('core008','a008','pp001','e001','2003-05-25');
---Ingreso de registros a la tabla 'vendedor'--
insert into vendedor values ('v001','1317409834','margarita lópez','calle 12 av 16','0965743210');
insert into vendedor values ('v002','0936845416','marco miranda','calle 13 av 24','0913587690');
insert into vendedor values ('v003','0939856473','vecente mendoza','calle 18 av 21','0981742010');
---Ingreso de registros a la tabla 'reventa_pesca'--
insert into reventa_pesca values ('rp001','co001','v001','c002','2001-05-19','100','2000');
insert into reventa_pesca values ('rp002','co002','v003','c001','2001-10-15','3000','60000');
insert into reventa_pesca values ('rp003','co004','v002','c003','2001-10-15','80','1600');
insert into reventa_pesca values ('rp004','co003','v003','c001','2001-05-18','1000','20000');
insert into reventa_pesca values ('rp005','co007','v001','c002','2002-07-25','500','10000');
insert into reventa_pesca values ('rp006','co001','v002','c001','2003-07-19','200','4000');
---Ingreso de registros a la tabla 'zarpes'--
insert into zarpes values ('z001','b001','2003-05-19','pesca artesanal');
insert into zarpes values ('z002','b003','2002-02-01','pesca industrial');
insert into zarpes values ('z003','b004','2003-01-12','pesca ornamental');
insert into zarpes values ('z005','b002','2001-12-16','pesca artesanal');
insert into zarpes values ('z006','b001','2001-12-18','pesca industrial');
insert into zarpes values ('z007','b002','2001-12-25','pesca artesanal');
insert into zarpes values ('z004','b005','2002-12-01','retorno al país de origen');
insert into zarpes values ('z008','b003','2002-03-25','pesca artesanal');
insert into zarpes values ('z009','b002','2003-04-25','pesca artesanal');
---Ingreso de registros a la tabla 'ingreso_astillero'
insert into ingreso_astillero values ('i001','b006','2002-01-02','ingreso para reciclar');
insert into ingreso_astillero values ('i002','b007','2002-07-23','ingreso para dehuese');
insert into ingreso_astillero values ('i003','b008','2003-02-13','ingreso para reciclar');