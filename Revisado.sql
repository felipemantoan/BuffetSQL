use buffet;
--Tabela de contratantes
INSERT INTO contratantes (nome, telefone, cep, cidade, bairro, endereco) 
VALUES ('Fenando Valadar','(19)5555-2016', '27.001-001', 'Mogi Mirim', 'Centro', 'Rua 02 de Julho n° 333')
INSERT INTO contratantes (nome, telefone, cep, cidade, bairro, endereco)
VALUES ('Maria Duarte','(19)96666-2020', '13.000-099', 'Mogi Guaçu', 'Centro', 'Av Floriano Peixoto n° 515')
INSERT INTO contratantes (nome, telefone, cep, cidade, bairro, endereco)
VALUES ('Ana Paula Galvão','(19)8345-1111', '71.111-222', 'Itapira', 'Jardim Magali', 'Rua Argentina n° 51')
INSERT INTO contratantes (nome, telefone, cep, cidade, bairro, endereco)
VALUES ('Alberto da Silva','(19)99988-2233', '31.788-877', 'Mogi Mirim', 'Centro', 'Rua Padre Roque n° 333')

--tabela de pessoas fisicas
INSERT INTO pessoa_fisica
VALUES (1, '21.111.222-3', '123.321.000-11'),
(2, '55.111.333-2', '123.456.789-13')


--tabela de pessoas juridicas
INSERT INTO pessoa_juridica
VALUES (3, '34.231.222/1234-21', 'Imobiliaria Galvão'), 
(4, '99.909.090/0000-12', 'Casa de Construções Ltda.')

--tabela de funcionarios
--tabela de funcionarios
INSERT INTO funcionarios
VALUES ('Helen de Souza', '33.444-555-9', '666.777.000-99', '(19)92020-1212', 'Av Brumado n°45', 'Bairro do Ipê', 'Mogi Mirim', 1200, '1990/10/25')
INSERT INTO funcionarios
VALUES ('Ricardo Neves', '55.233.111-0', '565.999.888-77', '(19)91212-1323', 'Rua Tancredo Neves n°89', 'Bairro Santa Úrsula', 'Mogi Mirim', 1000, '1988/06/12')
INSERT INTO funcionarios
VALUES ('Luís Henrique de Andrade', '56.155.887-4', '454.216.789-00', '(11)93334-2121', 'Rua Francisco Otair n°90', 'Bairro Independencia', 'Mogi Guaçu', 1000, '1994/09/30')
INSERT INTO funcionarios
VALUES ('Thiago Borges', '67.134.222-3', '123.766.988-17', '(11)92223-6778', 'Rua 15 de Novembro n°65', 'Bairro Figueredo', 'Itapira', 2000, '1982/11/02')
INSERT INTO funcionarios
VALUES ('Elisa Caetano', '91.321.211-3', '154.876.909-13', '(19)8321-0001', 'Rua Francisco Guimarães n°342', 'Bairro Santa Mônica', 'Mogi Mirim', 1000, '1995/03/29')
INSERT INTO funcionarios
VALUES ('Marria Liberdade', '73.100.211-5', '022.033.123-31', '(19)8345-1101', 'Rua 11 de Setembro n°661', 'Bairro Cubatão', 'Itapira', 1500, '1991/03/23')

--tabela de produção
INSERT INTO producao
VALUES ('Doceiro', 4)
INSERT INTO producao
VALUES ('Cozinheiro', 6) 
INSERT INTO producao
VALUES ('Confeiteiro', 1) 
INSERT INTO producao
VALUES ('Garçom', 3) 

--tabela de atendimento
INSERT INTO atendimento
VALUES (45000, 2)
INSERT INTO atendimento
VALUES (45111, 5)

--tabela de cardapio
INSERT INTO cardapio
VALUES ('Brownies', 2, 'açúcar, farinha de trigo, manteiga, chocolate em pó, chocolate amargo, Ovos', 5.50)
INSERT INTO cardapio
VALUES (' Torta de Limão', 1, ' Massa: biscoito de maisena, margarina
Recheio: leite condensado, creme de leite, suco de limões, raspas de limões
Cobertura: claras de ovo, açúcar', 8.90)
INSERT INTO cardapio
VALUES ('Pizza', 1, ' Massa: farinha de trigo, manteiga, sal, água fervida levemente morna ,gemas, ovos
Recheio: batata, requeijão, sal a gosto', 25)
INSERT INTO cardapio
VALUES (' Mouse de Morango', 2, 'Leite condensado, creme de leite, gelatina sabor morango, água', 9.50)

--tabela de pedidos
INSERT INTO pedidos(id_atend, id_cont)
VALUES (2,2)
INSERT INTO pedidos(id_atend, id_cont)
VALUES (5,1)
INSERT INTO pedidos(id_atend, id_cont)
VALUES (5,3)
INSERT INTO pedidos(id_atend, id_cont)
VALUES (2,4)

--tabela de itens pedidos
INSERT INTO itens_pedido
VALUES(2, 1, 40)
INSERT INTO itens_pedido
VALUES(1, 3, 35)
INSERT INTO itens_pedido
VALUES(4, 3, 20)
INSERT INTO itens_pedido
VALUES(3, 4, 15)
INSERT INTO itens_pedido
VALUES(1, 2, 50)
INSERT INTO itens_pedido
VALUES(4, 1, 30)
