use mercado;

/*Atividade 1*/
select v.*
from vendas v
inner join mercado.vendas_has_produto p on v.idvenda = p.idvenda
where p.idproduto = 1;

/*Atividade 2*/

select v.data_venda
from vendas v
inner join mercado.vendas_has_produto p on v.idvenda = p.idvenda
where p.idproduto = 2;

/*Atividade 3*/

select p.descricao, v.data_venda from produto p, vendas v
inner join mercado.vendas_has_produto vp on v.idvenda = vp.idvenda
where v.data_venda = '2021-01-23';

/*Atividade 4*/

select c.descricao from categoria c, vendas v
inner join mercado.vendas_has_produto vp on v.idvenda = vp.idvenda;

/*Atividade 5*/

select v.* from vendas v, categoria c, produto p
inner join mercado.vendas_has_produto vp on p.idproduto = vp.idproduto
where c.descricao != 'Higiene pessoal';
