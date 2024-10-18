use mercado;

DELIMITER //

CREATE PROCEDURE atualizar_preco_produto(
    IN p_id INT,
    IN p_novo_preco DECIMAL(10, 2)
)
BEGIN
    UPDATE produto
    SET preco = p_novo_preco
    WHERE idproduto = p_id;
END //

CREATE PROCEDURE aumentar_precos_produtos()
BEGIN
    UPDATE produto
    SET preco = preco * 1.10;
END //

DELIMITER //

CREATE PROCEDURE soma_quantidadeVendida(
    IN p_id INT
)
BEGIN
    SELECT 
        p.idproduto, 
        p.descricao, 
        SUM(vp.quantidade) AS quantidade_vendida, 
        (SUM(vp.quantidade) * p.preco * 0.01) + p.preco AS preco_calculado
    FROM 
        vendas_has_produto vp
    JOIN 
        produto p ON p.idproduto = vp.idproduto
    WHERE 
        p.idproduto = p_id
    GROUP BY 
        p.idproduto, p.descricao;
END //

DELIMITER ;

/*Crie uma procedure onde some a quantidade vendida de um determinado produto e aumente o
valor do mesmo utilizando a soma da quantidade como porcentagem, ou seja, se foram
vendidas 14 escovas de dentes o valor de escova de dente deve aumentar em 14%; Valor =
%. */

drop procedure soma_quantidadeVendida;

SET SQL_SAFE_UPDATES = 1;
/*Necessário desativar para rodar a segunda procedure.*/

CALL atualizar_preco_produto(1, 4.80);
CALL aumentar_precos_produtos();
CALL soma_quantidadeVendida(1);



