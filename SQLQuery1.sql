/*use Exemplo
go

create table Produtos(
	id int identity primary key not null,
	nomeproduto varchar(50) not null,
	descricao text not null,
	preco decimal(10,2) not null,
	datacadastro datetime default getDate()
)
*/

/*insert into Produtos (nomeproduto,descricao,preco) values 
					 ('Caneta','Caneta BIC Azul',5.6), 
					 ('Borracha','Borracha Branca',4.9)



select * from Produtos*/

drop table Produtos
go
use master
go
drop database Exemplo

