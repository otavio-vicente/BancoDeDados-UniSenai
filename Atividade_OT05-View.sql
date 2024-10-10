/*Atividades VIEW*/

/*Atividade 1*/
CREATE VIEW view_sem_salario AS
SELECT idvendedor, nome, data_nasc
FROM vendedor where condicao;


use mercado;
/*Atividade 2*/
create view data_desc as
select v.data_venda, p.descricao from produto p
join mercado.vendas_has_produto vp on vp.idproduto = p.idproduto
join vendas v on v.idvenda = vp.idvenda
group by v.data_venda 
order by v.data_venda desc;

SELECT * FROM data_desc;
DROP VIEW data_desc;


/*Atividade 3*/
create view qtdTotalVendas as
select sum(vp.quantidade) as Quant_Vendas 
from vendas_has_produto vp;

SELECT * FROM qtdTotalVendas;
DROP VIEW qtdTotalVendas;


/*Atividade 4*/
create view produto_categoria as
select p.descricao, c.descricao as descricao_categoria from produto p
join categoria c on c.idcategoria = p.idcategoria;

SELECT * FROM produto_categoria;
DROP VIEW produto_categoria;