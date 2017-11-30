/*CREATE DATABASE Papelaria
on
(
name='Papelaria_data',
filename='C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\Data\Papelaria_data.mdf',
size=20mb,
maxsize=100mb,
filegrowth=10mb)
log on
(
name='Papelaria_log',
filename='C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\Data\Papelaria_log.ldf',
size=30mb,
maxsize=200mb,
filegrowth=15mb
)
go
use Papelaria
go
create table Clientes(
	idCliente int identity primary key,
	nomeCliente varchar(50) not null,
	email varchar(50) not null,
	cpf varchar(15) not null unique,
	datacadastro datetime default getDate()
)
go
create table Categorias(
	idCategoria int identity primary key,
	titulo varchar(30) not null
)
go
create table Produtos(
	idProduto int identity primary key,
	nomeProduto varchar(50) not null,
	descricao text not null,
	idCategoria int foreign key references Categorias not null,
	preco decimal(10,2) not null
)
go
create table Funcionarios(
	idFuncionario int identity primary key,
	nomeFuncionario varchar(50) not null,
	cargo varchar(50) not null,
	departamento varchar(30)
)
go
create table Usuarios(
	idUsuario int identity primary key,
	idFuncionario int foreign key references Funcionarios not null,
	nomeUsuario varchar(20) not null,
	senha varchar(100) not null
)
go
create table Pedidos(
	idPedidos int identity primary key,
	idCliente int foreign key references Clientes not null,
	idFuncionario int foreign key references Funcionarios not null,
	dataPedido datetime default getDate()
)
go
create table DetalhesPedido(
	idDetalhes int identity primary key,
	idPedidos int foreign key references Pedidos not null,
	IdProduto int foreign key references Produtos not null,
	quantidadeComprada int not null,
)*/


/*insert into Categorias(titulo) 
	values ('Escolar'),('Informática')

select * from Categorias*/

/*insert into Produtos(nomeProduto,descricao,idCategoria,preco)
	values('Caneta','Caneta Preta',1,5.9)

select * from Produtos*/

/*update Produtos set descricao='Caneta Azul' where idProduto=3

select * from Produtos*/

--update Produtos set preco=preco*1.2 where idProduto between 2 and 5 

--delete from Produtos where idProduto > 6









