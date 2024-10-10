use mercado;

/*Atividade 1
Mostre o total de vendas em que o produto “Escova dental” foi vendido.
Chame o resultado dessa consulta de “total_venda_escovas”;*/
SELECT SUM(quantidade) AS total_venda_escovas FROM vendas_has_produto where idproduto = 1;

/*Atividade 2
Mostre o valor total da venda de id “2” (considere o preço dos produtos
vendidos e sua quantidade);
*/
SELECT 
    p.preco, 
    vp.quantidade, 
    (p.preco * vp.quantidade) AS valor_total_venda
FROM 
    produto p
JOIN 
    vendas_has_produto vp ON p.idproduto = vp.idproduto where idvenda = 2;
    
/*Atividade 3
Selecione todos os campos da tabela produto e a descrição de sua categoria, cujo os
produtos sejam da categoria “Higiene pessoal” e cuja descrição do produto termine com a
palavra “dental” .*/

select p.*, c.descricao from produto p 
join categoria c ON p.idcategoria = c.idcategoria
WHERE c.descricao = 'Higiene pessoal'
  AND p.descricao LIKE '%dental';
  
/*Atividade 4
Selecione todos os produtos da categoria “higiene pessoal” ou “limpeza”;*/
SELECT p.*
FROM produto p
INNER JOIN categoria c ON p.idcategoria = c.idcategoria
WHERE c.descricao IN ('Higiene pessoal', 'Limpeza');

/*Atividade 5
Mostre a média dos valores dos produtos da venda do dia 23/01. Chame o
resultado dessa consulta de “media_produtos”;*/

select v.data_venda, p.preco from produto p
join mercado.vendas_has_produto vp on vp.idproduto = p.idproduto
join mercado.vendas v on vp.idvenda = v.idvenda
where v.data_venda = '2021-01-23';

/*Atividade 6
Selecione os produtos que não estejam na categoria “cama, mesa e banho” e
“limpeza”*/

select p.* from produto p
join categoria c on c.idcategoria = p.idcategoria
where c.descricao != 'Cama, mesa e banho' and c.descricao != 'Limpeza';

/*Atividade 7
Selecione a descrição do produto e o valor do produto com maior preço
cadastrado;*/

SELECT p.descricao, p.preco 
FROM produto p
ORDER BY p.preco DESC
LIMIT 1;

/*Se você usar ASC (que é o padrão), os resultados seriam ordenados em ordem crescente, do menor para o maior. No seu caso, 
usar DESC garante que o produto com o maior preço apareça primeiro.*/

/*Atividade 8
Apresente qual foi o produto mais vendido e nomeie de Total_de_Vendas;*/

select vp.idproduto, sum(quantidade) as Total_de_Vendas from vendas_has_produto vp
join produto p on p.idproduto = vp.idproduto
GROUP BY p.descricao
ORDER BY Total_de_Vendas DESC
LIMIT 1;

/*Ordena os resultados pela soma das vendas em ordem decrescente.
Limita o resultado a apenas um produto, que será o mais vendido.*/

/*Atividade 9
Apresente o dia que que houve a menor quantidade de produtos vendidos
(menos se vendeu);*/

SELECT vp.idvenda, v.data_venda, SUM(vp.quantidade) AS Total_Quantidade_Vendida
FROM vendas_has_produto vp
JOIN vendas v ON v.idvenda = vp.idvenda 
GROUP BY v.data_venda
ORDER BY Total_Quantidade_Vendida
LIMIT 1;

/*O GROUP BY é utilizado para agrupar linhas que têm valores 
iguais em colunas específicas.

O ORDER BY é usado para ordenar os resultados de uma consulta. Você pode ordenar os 
dados em ordem crescente (ASC) ou decrescente (DESC) com base em uma ou mais colunas.*/

/*Atividade 10
Selecione o nome das categorias que tiveram produtos vendidos;*/
select p.idproduto, c.descricao as NomeCategoria 
from produto p
join mercado.vendas_has_produto vp on vp.idproduto = p.idproduto
join categoria c on c.idcategoria = p.idcategoria
group by p.idproduto, c.descricao
order by NomeCategoria;

/*Atividade 11
Apresente o total de produtos vendidos entre as vendas dos dias 08-07 e 10-07;*/

select sum(vp.quantidade) as total_qtd_vendas
from vendas_has_produto vp
join vendas v on v.idvenda = vp.idvenda
where v.data_venda between '2021-07-08' AND '2021-07-10';
  
