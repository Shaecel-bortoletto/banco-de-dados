show databases;
use dbinfox;
show tables;
create table tb_cliente(
idcli int primary key,
cpfcli varchar(15) unique,
nomecli varchar (50) not null,
cep varchar (15) not null,
tipo varchar (100) not null,
logradouro varchar (50) not null,
numero varchar (15) not null,
bairro varchar (30) not null,
cidade varchar (30) not null,
uf  varchar (20) not null,
fone1 varchar(15) not null,
fone2 varchar(15) not null,
emailcli varchar (50) not null
);
show tables;



