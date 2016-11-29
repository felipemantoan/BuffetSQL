use buffet;

--buscar todos os funcionários atendentes
SELECT nome as Atendente, ramal as Ramal 
FROM funcionarios F, atendimento A WHERE F.id = a.id_func;

--view
CREATE VIEW VWpedidos AS SELECT p.id as [Nro. Pedido], c.nome as Cliente, f.nome as Atendente, dt_pedido as Data
FROM pedidos p, contratantes c, funcionarios f 
WHERE c.id = p.id_cont AND p.id_atend = f.id;


SELECT * FROM VWpedidos;


--Obter de pedidos por atentende
SELECT p.id as Pedido, c.nome as [Cliente], p.dt_pedido as [ Data do Pedido] 
FROM contratantes c, pedidos p, funcionarios f 
WHERE id_atend = 5 AND p.id_atend = f.id AND c.id = p.id_cont; 


--obter pedidos do clientes de pessoa fisica
SELECT p.id as Pedido, f.nome as [Funcionário] , c.nome as [Contratante]
FROM  pessoa_fisica pf, contratantes c, funcionarios f, atendimento a, pedidos p 
WHERE f.id = a.id_func and p.id_atend = a.id_func 
and c.id = p.id_cont and pf.id_cont = c.id;

--itens do pedido
SELECT p.id ,c.prato, c.preco
FROM itens_pedido it, pedidos p, cardapio c 
WHERE it.id_pedido = 1 and p.id = it.id_pedido and c.id = it.id_prato;

--valor do pedido
CREATE VIEW VW_total as SELECT p.id as [Pedido], SUM(c.preco) as [Valor]
FROM itens_pedido it, pedidos p, cardapio c 
WHERE p.id = it.id_pedido and c.id = it.id_prato GROUP BY p.id;

select * from VW_total;
