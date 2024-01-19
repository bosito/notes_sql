--comentarios en sql jejeje que loco
--Incrtar rgistros en la tabla conversaciones "conversations"
 insert into conversations (id, title, image_url, type, created_by, created_at, updated_at) 
 values (default, 'Acadmlo sql', 'https://www.academlo.com/logo_academlo.png', 'group', 1, default, default);

insert into users  values (default, 'Diego', 'Luna', 'diego90@gmail.com', 'adgar123', null, '21456421', default, default);

insert into users  values (default, :firstname, :lastname, :email, :password, null, :phone,  default, default);
 
--obtener los registros de una tabla
select nombre_de_columnas_seleccionar from nombre_tablas;
select  * from conversations;

-- obtener los datos d una tabla de las columnas id, title, created_by
select  id, title, created_by from conversations;

select firstname from users where id = 1;

--actualizar un rgistro d la tabla users

update users set firstname = 'Jose Luis' where id = 1;

--norrar un dato d la tabla usrs

delete from users where id = 2;

insert into participants values (default, 1, 3,default, default), (default,1,5,default, default);

select * from participants p ;

insert into messages values (default, 3, 1, 'hola, ¿Como estas?', default), 
(default, 5, 1, 'bien, ¿Como van las clases', default);

update messages set message = 'hola, ¿Como estas?, bro' where id = 3;

select * from messages m;

--joins sirve para unir tablas 

--obten los nombres d los usuarios que unicamente stan enviando los mnsajes en la conversacion de acadmlo

-- A -> Usuarios
--B -> conversaciones 

select firstname, lastname , m.message, c.title from users u 
right join messages m  on m.sender_id = u.id
inner join conversations c on m.conversation_id = c.id;

-- saber el nombre complto del crador dee cada conversacion en la tabla conversations
-- | nombre-conversation | creador de la converzacion (nombre, apellidos) |