create database agenda;

use agenda;
drop table evento;

 create table evento (
	idEvento int not null primary key auto_increment,
	nomeEvento varchar(45),
    dataEvento date,
    descricaoEvento longtext,
    statusEvento varchar(45)
);

SELECT * FROM agenda.evento;

insert into evento values (1, 'Início do Ano Letivo', '2023-02-07', 'O início do ano letivo para os estudantes do Ensino Fundamental e 
Educação de Jovens e Adultos (EJA) matriculados na rede municipal de ensino será no dia 7 de fevereiro.', 'Realizado');


