create database dbinfox;
use dbinfox;
show tables;
create table tb_clientes(
idcli int auto_increment primary key,
cpfcli varchar(15) not null,
nomecli varchar(50) not null,
cep varchar(50) not null,
tipo1  varchar(100) not null,
complemento varchar (50), 
bairro varchar (50) not null,
cidade varchar (50) not null,
uf char (2) not null,
fone1 varchar (50) not null,
fone2 varchar (50),
emailcli varchar (50) not null

);

insert into tb_clientes
values (null, '11111111111','Marco Souza','01100110','rua','casa','Parque do Carmo','Diadema','SP','01110001000)',null,'marco@gmail.com'),
(null, '22222222222','Pedro Santos','01100110','rua','casa','Parque do Carmo','Diadema','SP','01110001000)',null,'pedro@gmail.com'),
(null, '33333333333','Maria Silva','01100110','rua','casa','Parque do Carmo','Diadema','SP','01110001000)',null,'maria@gmail.com');

insert into tb_clientes
values (null, '09419076431','Marcio Roberto Leite Da Silva','01512010','rua','Apartamento','Liberdade','São Paulo','SP','011985374538)',null,'mrls.ti2050@gmail.com'),
(null, '44444444444','Alberto Oliveira','02200110','rua','casa','Parque Dom Pedro','Diadema','SP','01110001000)',null,'alberto@gmail.com'),
(null, '55555555555','Patricia Guimarães ','03300110','rua','casa','Parque do Carmo','Diadema','SP','01110001000)',null,'patricia@gmail.com');

select * from tb_clientes;

create table tb_usuarios(
iduser int primary key,
usuario varchar(50) not null,
fone varchar(15),
login varchar (50) not null unique,
senha varchar(50) not null,
perfil varchar(50) not null
);
describe tb_usuarios;
insert into tb_usuarios(iduser, usuario, fone, login, senha, perfil)
values(1,'Marcio Roberto leite da Silva','(11)91111-1111','marcio1','123@senac','adm'
),(2,'Anselmo Bortoletto','(11)92222-2222','anselmo1','123@senac','tecnico'),
(3,'Leandro Sales','(11)93333-3333','leandro1','123@senac','Recepcionista');
select * from tb_usuarios;


create table tb_os(
idos int auto_increment primary key,
dataos timestamp default current_timestamp,
tipo varchar (15) not null,
situacao varchar(20) not null,
equipamento varchar(200) not null,
defeito varchar(200) not null,
servico varchar(200),
tecnico varchar (200),
valor decimal(10,2),
idcli int not null

);

ALTER TABLE tb_os auto_increment = 10000;

insert into tb_os
values (null,null,'Orçamento','Aprovado','Notebook Lenovo','Não liga',null,null,null,1);

insert into tb_os
values (null,null,'Orçamento','Aguardando Aprovação','Notebook Lenovo','Não liga',null,null,null,2);

insert into tb_os
values (null,null,'Orçamento','Aguardando peça','Celular Lenovo','Não liga',null,null,null,2);

insert into tb_os
values (null,null,'Orçamento','Aguardando peça','Celular Lenovo','Não liga',null,null,null,1);

select * from tb_os;

alter table tb_os add constraint cliente_os
foreign key(idcli)
references tb_clientes(idcli)
on delete no action;

select
X.idos as OS, dataos as Data1, tipo as Tipo,situacao as Situacao,
equipamento as Equipamento, defeito as Defeito, servico as Servico, tecnico as Tecnico,
valor as Valor,
Y.nomecli as Nome, fone1 as Fone, emailcli as Email
from tb_os as X
inner join tb_clientes as Y on (X.idcli = Y.idcli);

describe tb_os;