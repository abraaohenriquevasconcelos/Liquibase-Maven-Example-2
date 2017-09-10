--liquibase formatted sql

--changeset lucas:1;



create table pessoa(
	pes_id serial primary key, 
	pes_nome varchar(100), 
	pes_sexo char(1));

  
--rollback drop table test1;

--changeset lucas:2

insert into pessoa(pes_nome, pes_sexo)  values('Lucio', 'M');
insert into pessoa(pes_nome, pes_sexo)  values('Maria', 'F');

--rollback delete from test;