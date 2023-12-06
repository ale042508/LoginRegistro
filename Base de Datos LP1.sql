Use ProyectoFinalLP1;

Create Table Cliente
(
Cli_ID Int Identity(1,1) Primary Key,
Cli_Usuario Varchar(20) Not Null,
Cli_Contrasena Varchar(20) Not Null,
Cli_Nombres Varchar(50) Not Null,
Cli_Apellidos Varchar(50) Not Null,
Cli_Tel_Celular Varchar(10) Not Null,
Seg_ID Int Not Null
);

Insert Into Cliente(Cli_Usuario, Cli_Contrasena, Cli_Nombres, Cli_Apellidos, Cli_Tel_Celular, Seg_ID) Values ('ARosa', '123', 'Alejandro Jose', 'Rosa Depratt', '8492205776', 1);
Insert Into Cliente(Cli_Usuario, Cli_Contrasena, Cli_Nombres, Cli_Apellidos, Cli_Tel_Celular, Seg_ID) Values ('VRosa', 'qsy', 'Victor Jose', 'Rosa Depratt', '8293405776', 2);

Create Table Seguros
(
Seg_ID Int Identity(1,1) Primary Key,
Seg_Nombre Varchar(20) Not Null,
Seg_No_Afiliado Varchar(20) Not Null,
Seg_Tipo_Plan Varchar(14) Not Null,
Seg_Activo Char Not Null
);

Insert Into Seguros(Seg_Nombre, Seg_No_Afiliado, Seg_Tipo_Plan, Seg_Activo) Values('Mapfre', '46862382', 'Complementario', 'A');
Insert Into Seguros(Seg_Nombre, Seg_No_Afiliado, Seg_Tipo_Plan, Seg_Activo) Values('Mapfre', '45861352', 'Complementario', 'A');

Create Table Especialidades
(
Esp_ID Int Identity(1,1) Primary Key,
Esp_Nombre Varchar(20) Not Null,
);

Insert Into Especialidades(Esp_Nombre) Values ('Anestesiolog�a');
Insert Into Especialidades(Esp_Nombre) Values ('Cardiolog�a');
Insert Into Especialidades(Esp_Nombre) Values ('Endocrinolog�a');
Insert Into Especialidades(Esp_Nombre) Values ('Estomatolog�a');
Insert Into Especialidades(Esp_Nombre) Values ('Farmacolog�a Cl�nica');
Insert Into Especialidades(Esp_Nombre) Values ('Gastroenterolog�a');
Insert Into Especialidades(Esp_Nombre) Values ('Gen�tica');
Insert Into Especialidades(Esp_Nombre) Values ('Geriatr�a');
Insert Into Especialidades(Esp_Nombre) Values ('Hematolog�a');
Insert Into Especialidades(Esp_Nombre) Values ('Hepatolog�a');
Insert Into Especialidades(Esp_Nombre) Values ('Infectolog�a');
Insert Into Especialidades(Esp_Nombre) Values ('Neumolog�a');
Insert Into Especialidades(Esp_Nombre) Values ('Neurolog�a');
Insert Into Especialidades(Esp_Nombre) Values ('Nutriolog�a');
Insert Into Especialidades(Esp_Nombre) Values ('Pediatr�a');
Insert Into Especialidades(Esp_Nombre) Values ('Psiquiatr�a');
Insert Into Especialidades(Esp_Nombre) Values ('Ginecolog�a');
Insert Into Especialidades(Esp_Nombre) Values ('No disponible');

Create Table Doctores
(
Doc_ID Int Identity(1,1) Primary Key,
Doc_Nombre Varchar(20) Not Null,
Esp_ID Int Not Null
);

Insert Into Doctores(Doc_Nombre, Esp_ID) Values ('Nicole De Jesus', 1);
Insert Into Doctores(Doc_Nombre, Esp_ID) Values ('Jose Ramon', 1);
Insert Into Doctores(Doc_Nombre, Esp_ID) Values ('Victor Castro', 2);
Insert Into Doctores(Doc_Nombre, Esp_ID) Values ('Nathaly Alvarez', 2);
Insert Into Doctores(Doc_Nombre, Esp_ID) Values ('Conrado Depratt', 3);
Insert Into Doctores(Doc_Nombre, Esp_ID) Values ('Salomon Rosa', 3);
Insert Into Doctores(Doc_Nombre, Esp_ID) Values ('Elizabeth Jaquez', 4);
Insert Into Doctores(Doc_Nombre, Esp_ID) Values ('Laura Rosa', 4);
Insert Into Doctores(Doc_Nombre, Esp_ID) Values ('Carlos Arache', 4);
Insert Into Doctores(Doc_Nombre, Esp_ID) Values ('Esteban Morillo', 5);
Insert Into Doctores(Doc_Nombre, Esp_ID) Values ('Mario Polanco', 5);
Insert Into Doctores(Doc_Nombre, Esp_ID) Values ('Silvio de la Rosa', 6);
Insert Into Doctores(Doc_Nombre, Esp_ID) Values ('Fausto Huerta', 6);
Insert Into Doctores(Doc_Nombre, Esp_ID) Values ('Ronald Felipe', 7);
Insert Into Doctores(Doc_Nombre, Esp_ID) Values ('Carlos Soriano', 7);
Insert Into Doctores(Doc_Nombre, Esp_ID) Values ('Kevin Martinez', 8);
Insert Into Doctores(Doc_Nombre, Esp_ID) Values ('Manuela Cruz', 8);
Insert Into Doctores(Doc_Nombre, Esp_ID) Values ('Elizabeth Alcantara', 9);
Insert Into Doctores(Doc_Nombre, Esp_ID) Values ('Beatriz Padron', 9);
Insert Into Doctores(Doc_Nombre, Esp_ID) Values ('Elisa Funes', 10);
Insert Into Doctores(Doc_Nombre, Esp_ID) Values ('Celina Marquez', 10);
Insert Into Doctores(Doc_Nombre, Esp_ID) Values ('Sarah Jostrom', 11);
Insert Into Doctores(Doc_Nombre, Esp_ID) Values ('Usain Bolt', 11);
Insert Into Doctores(Doc_Nombre, Esp_ID) Values ('Michael Phelps', 11);
Insert Into Doctores(Doc_Nombre, Esp_ID) Values ('Kevin Durant', 12);
Insert Into Doctores(Doc_Nombre, Esp_ID) Values ('Stephen Curry', 12);
Insert Into Doctores(Doc_Nombre, Esp_ID) Values ('Lebron James', 13);
Insert Into Doctores(Doc_Nombre, Esp_ID) Values ('Angel Gonzales', 13);
Insert Into Doctores(Doc_Nombre, Esp_ID) Values ('Linda Mateo', 14);
Insert Into Doctores(Doc_Nombre, Esp_ID) Values ('Gustavo Paniagua', 14);
Insert Into Doctores(Doc_Nombre, Esp_ID) Values ('Zahira Sanchez', 15);
Insert Into Doctores(Doc_Nombre, Esp_ID) Values ('Daniela Gutierrez', 16);
Insert Into Doctores(Doc_Nombre, Esp_ID) Values ('Emely Orozco', 17);
Insert Into Doctores(Doc_Nombre, Esp_ID) Values ('Carlos Minyeti', 16);
Insert Into Doctores(Doc_Nombre, Esp_ID) Values ('No disponible', 18);

Create Table FechaDisponible
(
FD_ID Int Identity(1,1) Primary Key,
FD_Dia Varchar(20) Not Null,
FD_Dia_Num Int Not Null,
FD_Tanda Varchar(20) Not Null,
Doc_ID Int Not Null,
);

Insert Into FechaDisponible(FD_Dia, FD_Dia_Num, FD_Tanda, Doc_ID) Values ('Lunes', 1, 'Ma�ana', 1);
Insert Into FechaDisponible(FD_Dia, FD_Dia_Num, FD_Tanda, Doc_ID) Values ('Martes', 2, 'Ma�ana', 1);
Insert Into FechaDisponible(FD_Dia, FD_Dia_Num, FD_Tanda, Doc_ID) Values ('Jueves', 4, 'Ma�ana', 1);
Insert Into FechaDisponible(FD_Dia, FD_Dia_Num, FD_Tanda, Doc_ID) Values ('Viernes', 5, 'Ma�ana', 1);
Insert Into FechaDisponible(FD_Dia, FD_Dia_Num, FD_Tanda, Doc_ID) Values ('Martes', 2, 'Ma�ana', 2);
Insert Into FechaDisponible(FD_Dia, FD_Dia_Num, FD_Tanda, Doc_ID) Values ('Martes', 2, 'Tarde', 2);
Insert Into FechaDisponible(FD_Dia, FD_Dia_Num, FD_Tanda, Doc_ID) Values ('Lunes', 1, 'Ma�ana', 3);
Insert Into FechaDisponible(FD_Dia, FD_Dia_Num, FD_Tanda, Doc_ID) Values ('Miercoles', 3, 'Tarde', 3);
Insert Into FechaDisponible(FD_Dia, FD_Dia_Num, FD_Tanda, Doc_ID) Values ('Viernes', 5, 'Ma�ana', 3);
Insert Into FechaDisponible(FD_Dia, FD_Dia_Num, FD_Tanda, Doc_ID) Values ('Martes', 2, 'Tarde', 4);
Insert Into FechaDisponible(FD_Dia, FD_Dia_Num, FD_Tanda, Doc_ID) Values ('Miercoles', 3, 'Ma�ana', 4);
Insert Into FechaDisponible(FD_Dia, FD_Dia_Num, FD_Tanda, Doc_ID) Values ('Jueves', 4, 'Ma�ana', 4);
Insert Into FechaDisponible(FD_Dia, FD_Dia_Num, FD_Tanda, Doc_ID) Values ('Jueves', 4, 'Ma�ana', 5);
Insert Into FechaDisponible(FD_Dia, FD_Dia_Num, FD_Tanda, Doc_ID) Values ('Miercoles', 3, 'Ma�ana', 5);
Insert Into FechaDisponible(FD_Dia, FD_Dia_Num, FD_Tanda, Doc_ID) Values ('Viernes', 5, 'Ma�ana', 5);
Insert Into FechaDisponible(FD_Dia, FD_Dia_Num, FD_Tanda, Doc_ID) Values ('Viernes', 5, 'Tarde', 5);
Insert Into FechaDisponible(FD_Dia, FD_Dia_Num, FD_Tanda, Doc_ID) Values ('Lunes', 1, 'Ma�ana', 6);
Insert Into FechaDisponible(FD_Dia, FD_Dia_Num, FD_Tanda, Doc_ID) Values ('Martes', 2, 'Ma�ana', 6);
Insert Into FechaDisponible(FD_Dia, FD_Dia_Num, FD_Tanda, Doc_ID) Values ('Viernes', 5, 'Ma�ana', 6);
Insert Into FechaDisponible(FD_Dia, FD_Dia_Num, FD_Tanda, Doc_ID) Values ('Martes', 2, 'Tarde', 7);
Insert Into FechaDisponible(FD_Dia, FD_Dia_Num, FD_Tanda, Doc_ID) Values ('Miercoles', 3, 'Tarde', 7);
Insert Into FechaDisponible(FD_Dia, FD_Dia_Num, FD_Tanda, Doc_ID) Values ('Jueves', 4, 'Tarde', 7);
Insert Into FechaDisponible(FD_Dia, FD_Dia_Num, FD_Tanda, Doc_ID) Values ('Lunes', 1, 'Ma�ana', 8);
Insert Into FechaDisponible(FD_Dia, FD_Dia_Num, FD_Tanda, Doc_ID) Values ('Martes', 2, 'Ma�ana', 8);
Insert Into FechaDisponible(FD_Dia, FD_Dia_Num, FD_Tanda, Doc_ID) Values ('Miercoles', 3, 'Ma�ana', 8);
Insert Into FechaDisponible(FD_Dia, FD_Dia_Num, FD_Tanda, Doc_ID) Values ('Lunes', 1, 'Tarde', 9);
Insert Into FechaDisponible(FD_Dia, FD_Dia_Num, FD_Tanda, Doc_ID) Values ('Martes', 2, 'Tarde', 9);
Insert Into FechaDisponible(FD_Dia, FD_Dia_Num, FD_Tanda, Doc_ID) Values ('Miercoles', 3, 'Tarde', 9);
Insert Into FechaDisponible(FD_Dia, FD_Dia_Num, FD_Tanda, Doc_ID) Values ('Lunes', 1, 'Ma�ana', 10);
Insert Into FechaDisponible(FD_Dia, FD_Dia_Num, FD_Tanda, Doc_ID) Values ('Martes', 2, 'Tarde', 10);
Insert Into FechaDisponible(FD_Dia, FD_Dia_Num, FD_Tanda, Doc_ID) Values ('Miercoles', 3, 'Ma�ana', 12);
Insert Into FechaDisponible(FD_Dia, FD_Dia_Num, FD_Tanda, Doc_ID) Values ('Jueves', 4, 'Ma�ana', 12);
Insert Into FechaDisponible(FD_Dia, FD_Dia_Num, FD_Tanda, Doc_ID) Values ('Martes', 2, 'Tarde', 11);
Insert Into FechaDisponible(FD_Dia, FD_Dia_Num, FD_Tanda, Doc_ID) Values ('Lunes', 1, 'Ma�ana', 11);
Insert Into FechaDisponible(FD_Dia, FD_Dia_Num, FD_Tanda, Doc_ID) Values ('Miercoles', 3, 'Ma�ana', 11);
Insert Into FechaDisponible(FD_Dia, FD_Dia_Num, FD_Tanda, Doc_ID) Values ('Martes', 2, 'Tarde', 13);
Insert Into FechaDisponible(FD_Dia, FD_Dia_Num, FD_Tanda, Doc_ID) Values ('Martes', 2, 'Tarde', 14);
Insert Into FechaDisponible(FD_Dia, FD_Dia_Num, FD_Tanda, Doc_ID) Values ('Jueves', 4, 'Ma�ana', 13);
Insert Into FechaDisponible(FD_Dia, FD_Dia_Num, FD_Tanda, Doc_ID) Values ('Miercoles', 3, 'Ma�ana', 14);
Insert Into FechaDisponible(FD_Dia, FD_Dia_Num, FD_Tanda, Doc_ID) Values ('Lunes', 1, 'Tarde', 14);
Insert Into FechaDisponible(FD_Dia, FD_Dia_Num, FD_Tanda, Doc_ID) Values ('Viernes', 5, 'Ma�ana', 15);
Insert Into FechaDisponible(FD_Dia, FD_Dia_Num, FD_Tanda, Doc_ID) Values ('Martes', 2, 'Tarde', 16);
Insert Into FechaDisponible(FD_Dia, FD_Dia_Num, FD_Tanda, Doc_ID) Values ('Lunes', 1, 'Tarde', 16);
Insert Into FechaDisponible(FD_Dia, FD_Dia_Num, FD_Tanda, Doc_ID) Values ('Miercoles', 3, 'Ma�ana', 16);
Insert Into FechaDisponible(FD_Dia, FD_Dia_Num, FD_Tanda, Doc_ID) Values ('Viernes', 5, 'Ma�ana', 17);
Insert Into FechaDisponible(FD_Dia, FD_Dia_Num, FD_Tanda, Doc_ID) Values ('Martes', 2, 'Tarde', 17);
Insert Into FechaDisponible(FD_Dia, FD_Dia_Num, FD_Tanda, Doc_ID) Values ('Jueves', 4, 'Ma�ana', 18);
Insert Into FechaDisponible(FD_Dia, FD_Dia_Num, FD_Tanda, Doc_ID) Values ('Miercoles', 3, 'Tarde', 18);
Insert Into FechaDisponible(FD_Dia, FD_Dia_Num, FD_Tanda, Doc_ID) Values ('Miercoles', 3, 'Ma�ana', 19);
Insert Into FechaDisponible(FD_Dia, FD_Dia_Num, FD_Tanda, Doc_ID) Values ('Lunes', 1, 'Ma�ana', 19);
Insert Into FechaDisponible(FD_Dia, FD_Dia_Num, FD_Tanda, Doc_ID) Values ('Martes', 2, 'Tarde', 19);
Insert Into FechaDisponible(FD_Dia, FD_Dia_Num, FD_Tanda, Doc_ID) Values ('Lunes', 1, 'Tarde', 20);
Insert Into FechaDisponible(FD_Dia, FD_Dia_Num, FD_Tanda, Doc_ID) Values ('Martes', 2, 'Tarde', 20);
Insert Into FechaDisponible(FD_Dia, FD_Dia_Num, FD_Tanda, Doc_ID) Values ('Miercoles', 3, 'Tarde', 21);
Insert Into FechaDisponible(FD_Dia, FD_Dia_Num, FD_Tanda, Doc_ID) Values ('Viernes', 5, 'Ma�ana', 20);
Insert Into FechaDisponible(FD_Dia, FD_Dia_Num, FD_Tanda, Doc_ID) Values ('Martes', 2, 'Ma�ana', 21);
Insert Into FechaDisponible(FD_Dia, FD_Dia_Num, FD_Tanda, Doc_ID) Values ('Miercoles', 3, 'Tarde', 20);
Insert Into FechaDisponible(FD_Dia, FD_Dia_Num, FD_Tanda, Doc_ID) Values ('Martes', 2, 'Ma�ana', 22);
Insert Into FechaDisponible(FD_Dia, FD_Dia_Num, FD_Tanda, Doc_ID) Values ('Lunes', 1, 'Ma�ana', 22);
Insert Into FechaDisponible(FD_Dia, FD_Dia_Num, FD_Tanda, Doc_ID) Values ('Miercoles', 3, 'Ma�ana', 22);
Insert Into FechaDisponible(FD_Dia, FD_Dia_Num, FD_Tanda, Doc_ID) Values ('Jueves', 4, 'Ma�ana', 23);
Insert Into FechaDisponible(FD_Dia, FD_Dia_Num, FD_Tanda, Doc_ID) Values ('Miercoles', 3, 'Tarde', 23);
Insert Into FechaDisponible(FD_Dia, FD_Dia_Num, FD_Tanda, Doc_ID) Values ('Viernes', 5, 'Ma�ana', 23);
Insert Into FechaDisponible(FD_Dia, FD_Dia_Num, FD_Tanda, Doc_ID) Values ('Martes', 2, 'Tarde', 24);
Insert Into FechaDisponible(FD_Dia, FD_Dia_Num, FD_Tanda, Doc_ID) Values ('Lunes', 1, 'Ma�ana', 24);
Insert Into FechaDisponible(FD_Dia, FD_Dia_Num, FD_Tanda, Doc_ID) Values ('Miercoles', 3, 'Ma�ana', 24);
Insert Into FechaDisponible(FD_Dia, FD_Dia_Num, FD_Tanda, Doc_ID) Values ('Lunes', 1, 'Tarde', 25);
Insert Into FechaDisponible(FD_Dia, FD_Dia_Num, FD_Tanda, Doc_ID) Values ('Viernes', 5, 'Ma�ana', 25);
Insert Into FechaDisponible(FD_Dia, FD_Dia_Num, FD_Tanda, Doc_ID) Values ('Lunes', 1, 'Tarde', 25);
Insert Into FechaDisponible(FD_Dia, FD_Dia_Num, FD_Tanda, Doc_ID) Values ('Martes', 2, 'Ma�ana', 26);
Insert Into FechaDisponible(FD_Dia, FD_Dia_Num, FD_Tanda, Doc_ID) Values ('Lunes', 1, 'Ma�ana', 26);
Insert Into FechaDisponible(FD_Dia, FD_Dia_Num, FD_Tanda, Doc_ID) Values ('Jueves', 4, 'Tarde', 26);
Insert Into FechaDisponible(FD_Dia, FD_Dia_Num, FD_Tanda, Doc_ID) Values ('Jueves', 4, 'Ma�ana', 27);
Insert Into FechaDisponible(FD_Dia, FD_Dia_Num, FD_Tanda, Doc_ID) Values ('Miercoles', 3, 'Ma�ana', 27);
Insert Into FechaDisponible(FD_Dia, FD_Dia_Num, FD_Tanda, Doc_ID) Values ('Viernes', 5, 'Tarde', 27);
Insert Into FechaDisponible(FD_Dia, FD_Dia_Num, FD_Tanda, Doc_ID) Values ('Martes', 2, 'Ma�ana', 28);
Insert Into FechaDisponible(FD_Dia, FD_Dia_Num, FD_Tanda, Doc_ID) Values ('Jueves', 4, 'Tarde', 28);
Insert Into FechaDisponible(FD_Dia, FD_Dia_Num, FD_Tanda, Doc_ID) Values ('Miercoles', 3, 'Tarde', 28);
Insert Into FechaDisponible(FD_Dia, FD_Dia_Num, FD_Tanda, Doc_ID) Values ('Lunes', 1, 'Ma�ana', 29);
Insert Into FechaDisponible(FD_Dia, FD_Dia_Num, FD_Tanda, Doc_ID) Values ('Martes', 2, 'Tarde', 29);
Insert Into FechaDisponible(FD_Dia, FD_Dia_Num, FD_Tanda, Doc_ID) Values ('Lunes', 1, 'Ma�ana', 30);
Insert Into FechaDisponible(FD_Dia, FD_Dia_Num, FD_Tanda, Doc_ID) Values ('Martes', 2, 'Ma�ana', 30);
Insert Into FechaDisponible(FD_Dia, FD_Dia_Num, FD_Tanda, Doc_ID) Values ('Miercoles', 3, 'Tarde', 31);
Insert Into FechaDisponible(FD_Dia, FD_Dia_Num, FD_Tanda, Doc_ID) Values ('Lunes', 1, 'Ma�ana', 31);
Insert Into FechaDisponible(FD_Dia, FD_Dia_Num, FD_Tanda, Doc_ID) Values ('Martes', 2, 'Ma�ana', 31);
Insert Into FechaDisponible(FD_Dia, FD_Dia_Num, FD_Tanda, Doc_ID) Values ('Lunes', 1, 'Ma�ana', 32);
Insert Into FechaDisponible(FD_Dia, FD_Dia_Num, FD_Tanda, Doc_ID) Values ('Martes', 2, 'Tarde', 32);
Insert Into FechaDisponible(FD_Dia, FD_Dia_Num, FD_Tanda, Doc_ID) Values ('Lunes', 1, 'Ma�ana', 33);
Insert Into FechaDisponible(FD_Dia, FD_Dia_Num, FD_Tanda, Doc_ID) Values ('Lunes', 1, 'Ma�ana', 34);
Insert Into FechaDisponible(FD_Dia, FD_Dia_Num, FD_Tanda, Doc_ID) Values ('Martes', 2, 'Tarde', 33);
Insert Into FechaDisponible(FD_Dia, FD_Dia_Num, FD_Tanda, Doc_ID) Values ('Miercoles', 3, 'Tarde', 33);
Insert Into FechaDisponible(FD_Dia, FD_Dia_Num, FD_Tanda, Doc_ID) Values ('Viernes', 5, 'Ma�ana', 34);
Insert Into FechaDisponible(FD_Dia, FD_Dia_Num, FD_Tanda, Doc_ID) Values ('Lunes', 1, 'Tarde', 33);
Insert Into FechaDisponible(FD_Dia, FD_Dia_Num, FD_Tanda, Doc_ID) Values ('Martes', 2, 'Ma�ana', 32);
Insert Into FechaDisponible(FD_Dia, FD_Dia_Num, FD_Tanda, Doc_ID) Values ('Jueves', 4, 'Tarde', 33);
Insert Into FechaDisponible(FD_Dia, FD_Dia_Num, FD_Tanda, Doc_ID) Values ('Miercoles', 3, 'Ma�ana', 34);
Insert Into FechaDisponible(FD_Dia, FD_Dia_Num, FD_Tanda, Doc_ID) Values ('No disponible', 0, 'No disponible', 35);

Create Table Cita
(
Cita_ID Int Identity(1,1) Primary Key,
Cli_ID Int Not Null,
Doc_ID Int Not Null,
FD_ID Int Not Null
);

Drop Table Cita;
Drop Table FechaDisponible;
Drop Table Doctores;
Drop Table Especialidades;
Drop Table Seguros;
Drop Table Cliente;
