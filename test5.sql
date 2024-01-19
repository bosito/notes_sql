insert into estudiantes (matricula, nombre, apellido, fecha_nacimiento, sexo, correo, carrera_id, telefono, generacion_id) values (1, 'Jandy', 'Colbrun', '1997-04-16', 'F', 'jcolbrun0@nps.gov', null, '961-298-6537', null);
insert into estudiantes (matricula, nombre, apellido, fecha_nacimiento, sexo, correo, carrera_id, telefono, generacion_id) values (2, 'Ella', 'Chace', '1997-10-30', 'F', 'echace1@chicagotribune.com', null, '931-990-8721', null);
insert into estudiantes (matricula, nombre, apellido, fecha_nacimiento, sexo, correo, carrera_id, telefono, generacion_id) values (3, 'Lew', 'Thebeaud', '1995-04-05', 'M', 'lthebeaud2@vkontakte.ru', null, '561-331-8826', null);
insert into estudiantes (matricula, nombre, apellido, fecha_nacimiento, sexo, correo, carrera_id, telefono, generacion_id) values (4, 'Keri', 'Buxcey', '1996-10-31', 'F', 'kbuxcey3@cbsnews.com', null, '767-820-1413', null);
insert into estudiantes (matricula, nombre, apellido, fecha_nacimiento, sexo, correo, carrera_id, telefono, generacion_id) values (5, 'Russell', 'Feeley', '1990-12-14', 'M', 'rfeeley4@blinklist.com', null, '900-691-7194', null);
insert into estudiantes (matricula, nombre, apellido, fecha_nacimiento, sexo, correo, carrera_id, telefono, generacion_id) values (6, 'Bambie', 'Rockhall', '1995-09-09', 'F', 'brockhall5@yolasite.com', null, '940-993-2518', null);
insert into estudiantes (matricula, nombre, apellido, fecha_nacimiento, sexo, correo, carrera_id, telefono, generacion_id) values (7, 'Rustin', 'Blaxter', '1999-08-13', 'M', 'rblaxter6@hhs.gov', null, '426-873-8616', null);
insert into estudiantes (matricula, nombre, apellido, fecha_nacimiento, sexo, correo, carrera_id, telefono, generacion_id) values (8, 'Maddie', 'Hallibone', '1997-05-26', 'M', 'mhallibone7@goodreads.com', null, '507-348-0882', null);
insert into estudiantes (matricula, nombre, apellido, fecha_nacimiento, sexo, correo, carrera_id, telefono, generacion_id) values (9, 'Carmelina', 'Acosta', '1995-01-30', 'F', 'cacosta8@github.com', null, '145-276-7264', null);
insert into estudiantes (matricula, nombre, apellido, fecha_nacimiento, sexo, correo, carrera_id, telefono, generacion_id) values (10, 'Levey', 'Dunkerley', '1993-06-24', 'M', 'ldunkerley9@bloglovin.com', null, '826-489-3320', null);


select * from estudiantes e ;
select * from carrera c ;

insert into carrera values (default, 'Licenciatura en informatica');
insert into carrera values (default, 'Ingeniería en Computación');
insert into carrera values (default, 'Ingeniería en Mecatronica');

insert into generacion values (default, 'Generacion enero 2021 - 2025');
insert into generacion values (default, 'Generacion agosto 2021 - 2025');

insert into clases values (default, 'Programación Orientada a Objetos');
insert into clases values (default, 'Administración de base de datos');
insert into clases values (default, 'Estadistica');

insert into grupo values (1, 1);
insert into grupo values (3, 1);
insert into grupo values (5, 1);
insert into grupo values (9, 2);
insert into grupo values (8, 2);
insert into grupo values (4, 2);
insert into grupo values (7, 3);
insert into grupo values (10, 3);
insert into grupo values (1, 3);
insert into grupo values (2, 3);
insert into grupo values (3, 3);
insert into grupo values (5, 3);

-- join
select * from grupo;
select c.nombre as "nombre_clase", e.nombre as "nombre_estudiante", e.apellido as "apellido_estudiante" from grupo g
join clases c on c.id = g.clase_id
join estudiantes e on e.matricula = g.matricula;



