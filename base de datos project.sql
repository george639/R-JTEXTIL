create database multiservicios

use multiservicios


create table empleados(
id int identity(1,1) PRIMARY KEY,
E_nombre varchar(50),
E_apellido varchar(50),
N_telefono int,
edad int

)

create table departamentos(
DepartamentoId int identity(1,1) PRIMARY KEY,
N_departamento varchar(30),
empleadosId int
FOREIGN KEY(empleadosId) references empleados(id)
)


create table clientes(
clienteId int identity(1,1) PRIMARY KEY,
N_cliente varchar(50),
A_cliente varchar(50),
N_Telefono int,
direccion varchar(70),
empleadosId int
FOREIGN KEY(empleadosId) references empleados(id)
)

create table servicios(
servicesId int identity(1,1) PRIMARY KEY,
N_servico varchar(20),
precio int,
clienteId int
FOREIGN KEY(clienteId) references clientes(clienteId)
)

create table orden(
OderId int identity(1,1) PRIMARY KEY,
N_orden varchar(20),
descripcion varchar(80),
direccion varchar(30),
clienteId int
FOREIGN KEY(clienteId) references clientes(clienteId)
)


-- insertando empleados --
insert into empleados(E_nombre,E_apellido,N_telefono,edad)
 values
('Carmen','parminia', 809222025,22),
('Pedro','Ramirez', 809113018,25),
('Jose','Alcantara', 809222818,28),
('Gabriel','Espinal', 809112018,20),
('Oscar','Marte', 809302018,29),
('Manuela','Batista', 809255018,32),
('Silvera','Peralta', 809223018,42),
('Leonardo','Encarnacion', 809225018,52),
('Paola','Mojica', 809222078,62),
('Marifer','esteves', 809222038,32)

-- insertando departamentos --
insert into departamentos(N_departamento)
 values
('Ti'),
('Rhh'),
('Limpieza'),
('contablidad'),
('Mareting'),
('Estrategia de mercado'),
('soporte '),
('Mesa de ayuda'),
('verdicado de servicios'),
('despacho')

-- insertando clientes --
insert into clientes(N_cliente,A_cliente,N_Telefono,direccion,empleadosId)
 values
('Pamela','parminia', 849776698,'gualey calle 2',2),
('Mayra','Ramirez', 849776698,'guachupita calle 67',5),
('Josefina','Alcantara', 809657818,'calero calle 907',4),
('Gabriela','Espinal', 809112018,'los mina calle 701',3),
('Julian','Marte', 809302018,'bayaguana calle 701',2),
('carmelo','Batista', 80569018,'san cristobal calle 701',1),
('pepin','Peralta', 809223018,'pintura calle 02 ',5),
('marta','Encarnacion', 809225018,'el 12 calle 5',10),
('alma','Mojica', 809222078,'san isidro calle 7  ',9),
('martina','esteves', 809222038,'tamarindo calle 4',3)


-- insertando servicios --
insert into servicios(N_servico,precio,clienteId)
 values
 ('Gps',500,1),
('soporte de equipos',30,2),
('seguridad infor.',70,3),
('Liempieza equipos e.',15,4),
('Reparacin equipos e.',25,5),
('Limpieza domestica',60,6),
('asistencia fina.',36,7),
('cuido de animales',74,8),
('venta de aparatos e.',57,9),
('asistensia transpor.',90,10)



-- insertando orden --
insert into orden(N_orden,descripcion,direccion,clienteId)
 values
('01','servicio de Gps', 'gualey calle 2',1),
('02','servicio de soporte de equipos', 'san isidro calle 7 ',2),
('03','servicio de soporte de seguridad infor', 'pintura calle 02 ',3),
('04','servicio Limpieza domestica', 'san cristobal calle 701',4),
('05','servicio de Gps','tamarindo calle 4',5),
('06','servicio de soporte de equipos','gualey calle 2',6),
('07','servicio de Gps', 'pintura calle 02',7),
('08','servicio de soporte de equipos', 'tamarindo calle 4',8),
('09','servicio de Gps','el 12 calle 5',9),
('10','servicio Limpieza domestica', 'los mina calle 701',10)



select * from empleados
select * from departamentos
select * from servicios
select * from orden




