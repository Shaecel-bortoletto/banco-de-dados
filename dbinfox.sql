show databases;
use dbinfox;
create table tb_usuarios(
iduser int primary key,
usuario varchar(50) not null,
fone varchar (15),
login varchar(50) not null unique,
senha varchar(50) not null,
perfil varchar(50) not null
);
-- descrevendo a tabela

describe tb_usuarios;

-- inserindo dados

insert into tb_usuarios (iduser, usuario, fone, login, senha, perfil)values
(1,'Anselmo Bortoletto','1111-1111','anselmo.bortoletto','123@senac','adm');
insert into tb_usuarios values
(2,'Marcio','1111-1111','marcio.roberto','123@senac','adm');
insert into tb_usuarios values
(3,'Leandro','3333-3333','leandro.1','123@senac','adm');
select * from tb_usuarios;



