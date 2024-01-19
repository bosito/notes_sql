-- hola otra vez estoy practicando postges sql
--la idea es hacer todo el crud para una aplicacion de tarreas
-- la clasica todolist

insert into "user" (id, firstname, email, "password", active, create_at, update_at)
values (default, 'Eduardo', 'deduardo21@gmail.com', 'eduardo123', default, default, default);

insert into "user" values(default, 'Diana', 'dianita@gmail.com', 'ñañita', default, default, default);

insert into "user" (id, firstname, email, "password")values (default, 'Diego', 'diego20@gmail.com', 'diego12345');

insert into "user" (firstname, email, "password")values ('delete_user', 'delete_user40@gmail.com', 'delete_user12345');

select * from "user";

select * from "user" where  active = false or id < 5;

select * from "user" where  firstname = 'Eduardo';


--actualiza dotos en una tabla
update "user" set firstname = 'Jose Luis' where id = 6; select * from "user";

delete from "user" where id = 7;
select * from status s 

insert into status values (default, 'En proceso...', 'CCD518', 1);
insert into status values (default, 'En evaluación...', 'D5911B', 1);
insert into status values (default, 'En proceso de revicion...', 'A1F475', 3);

select * from status s ;

select * from status where id = (select id from "user" where firstname = 'Eduardo'); --and firstname = 'Diana' );