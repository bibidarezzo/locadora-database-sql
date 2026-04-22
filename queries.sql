-- Projeto: Sistema de Locadora
-- Desenvolvedora: Gabriela Darezzo

-- 1 - Clientes solteiros
SELECT * FROM cliente
WHERE cod_cliente NOT IN (SELECT cod_cli FROM conjuge);

-- 2 - Clientes casados
SELECT * FROM cliente
WHERE cod_cliente IN (SELECT cod_cli FROM conjuge);

-- 3 - Categorias sem CD
SELECT * FROM categoria
WHERE cod_cat NOT IN (SELECT cod_cat FROM titulo);

-- 4 - Gravadoras sem CDs
SELECT * FROM gravadora
WHERE cd_grav NOT IN (SELECT cd_grav FROM titulo);

-- 5 - Funcionários com dependentes e sem pedidos
SELECT * FROM funcionario
WHERE cod_fun IN (SELECT cod_fun FROM dependente)
AND cod_fun NOT IN (SELECT cod_fun FROM pedido);

-- 6 - Funcionários que atenderam clientes casados
SELECT * FROM funcionario
WHERE cod_fun IN (
    SELECT cod_fun FROM pedido 
    WHERE cod_cliente IN (SELECT cod_cli FROM conjuge)
);

-- 7 - Cliente com maior renda
SELECT * FROM cliente
WHERE renda_cli = (SELECT MAX(renda_cli) FROM cliente);

-- 8 - CD mais caro
SELECT * FROM titulo
WHERE val_cd = (SELECT MAX(val_cd) FROM titulo);

-- 9 - Aumento de 20% para funcionários sem dependentes
UPDATE funcionario 
SET sal_func = sal_func * 1.20
WHERE cod_fun NOT IN (SELECT cod_fun FROM dependente);

-- 10 - Aumento de 10% para funcionários com dependentes
UPDATE funcionario 
SET sal_func = sal_func * 1.10
WHERE cod_fun IN (SELECT cod_fun FROM dependente);

-- 11 - Aumento de 100 na renda de clientes solteiros
UPDATE cliente 
SET renda_cli = renda_cli + 100
WHERE cod_cliente NOT IN (SELECT cod_cli FROM conjuge);
