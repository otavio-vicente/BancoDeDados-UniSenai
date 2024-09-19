use mercado;

/*Atividade 1*/
SELECT p.*
FROM produto p
INNER JOIN categoria c ON p.idcategoria = c.idcategoria
WHERE c.descricao = 'Higiene pessoal';

/*Atividade 2*/
SELECT p.preco, c.descricao
FROM produto p
INNER JOIN categoria c ON p.idcategoria = c.idcategoria
WHERE c.descricao = 'Limpeza';

/*Atividade 3*/
SELECT p.descricao AS produto_descricao, p.preco, c.descricao AS categoria_descricao
FROM produto p
INNER JOIN categoria c ON p.idcategoria = c.idcategoria;

/*Atividade 4*/
SELECT p.* FROM produto p
INNER JOIN categoria c on p.idcategoria = c.idcategoria
WHERE c.descricao != 'Frios e laticínios'; 

/*Atividade 5*/
SELECT 
    c.idcategoria AS idcategoria, 
    c.descricao AS descricao, 
    p.descricao AS descricao
FROM 
    categoria c
LEFT JOIN 
    produto p ON c.idcategoria = p.idcategoria;





