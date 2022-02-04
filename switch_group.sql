create table Group_A(id integer, last_name varchar(20), first_name varchar(20));
create table Group_B(id integer, last_name varchar(20), first_name varchar(20));
insert into Group_A(id, last_name, first_name) values(10021, "Jones","Abby");
insert into Group_A(id, last_name, first_name) values(10028, "Kwan","Lisa");
insert into Group_A(id, last_name, first_name) values(10032, "Palmer","James");
insert into Group_A(id, last_name, first_name) values(10040, "Colin","Tiara");
insert into Group_A(id, last_name, first_name) values(10015, "Nielsen","Dave");
insert into Group_B(id, last_name, first_name) values(10008, "Hackett","Anna");
insert into Group_B(id, last_name, first_name) values(10012, "Dawson","Jayden");
insert into Group_B(id, last_name, first_name) values(10025, "Dupont","Sarah");
insert into Group_B(id, last_name, first_name) values(10018, "Krebs","Roy");

delimiter $$
create trigger switch_group after insert on Group_B for each row
begin
delete from Group_A where id=new.id;
end $$
delimiter ;

insert into Group_B values (10040,"Colin","Tiara");