insert into funcionario (nome_funcionario, cpf_funcionario) 
	values
('Joana','11111111111'),
('Ana','22222222222'),
('Paloma','33333333333'),
('Joaquim','44444444444'),
('Adriana','55555555555');

insert into categoria (nome_categoria, descricao_categoria)
	values
('Camisa','Camisa de Time'),
('Casaco','Para o Frio'),
('Chinelo','Para tudo'),
('Calça','Para o frio'),
('Short/Bermuda','Para o calor');

insert into usuario (login_usuario)
	values
('@João'),
('@Maria'),
('@Pedro'),
('@Tiago'),
('@Enzo');

insert into produto
(nome_produto, descricao_produto, qtd_estoque, data_fabricacao, valor_unitario, id_categoria_fk, id_funcionario_fk)
	values
('Camisa do Flamengo', 'Manto 3 (Preto c/ Dourado)', 200, '2021-01-01', 249.99, 1, 3),
('Camisa do Vasco', 'Preto c/ Branco', 10, '2021-01-01', 10.99, 1, 3),
('Camisa do Fluminense', 'Vermelha/Verde/Branco',30,'2005-10-02', 50, 1, 2),
('Camisa do Botafogo(Série B)', 'Branco c/ Preto',600,'2016-12-30', 100.56, 1, 1),
('Calça do Vasco', 'Coloquei aqui mas sei que não vai vender', 40, '1999-05-20', 0.99, 4, 1),
('Short do Fluminense', 'Bom pro calor', 50, '1989-02-15', 46.30, 5, 2),
('Casaco de Pele de Capivara', 'Só existe um no mundo', 1, '2021-09-15', 9999999.99, 2, 1),
('Chinelo do Botafogo', 'Parece confortável na série B', 5, '2005-07-05', 48.69, 3, 3);
  
insert into pedido_item (id_usuario_fk, id_produto_fk, qtd_produto)
	values
(1,2,5),
(1,1,2),
(5,8,4),
(2,3,1),
(4,7,1),
(3,4,10);

insert into cliente (nome_cliente, email_cliente, cpf_cliente, nasc_cliente, endereco_cliente, id_usuario_pk)
    values
('João da Silva', 'joao@joao.com', '66666666666', '2000-05-01', 'Rua Um, 2', 1),
('Maria dos Santos', 'maria@maria.com', '77777777777', '1995-06-04', 'Rua Dois, 3',2),
('Pedro Castro', 'pedro@pedro.com', '88888888888', '1989-03-20', 'Rua Tres, 4',3),
('Tiago Silva', 'tiago@tiago.com', '99999999999', '2001-08-19', 'Rua Quatro, 5', 4),
('Enzo Raia', 'enzo@enzo.com', '00000000000', '2012-03-12', 'Rua Cinco, 6',5);

insert into pedido (id_item_fk, id_cliente_fk, data_pedido)
	values
('1','5','2021-09-01'),
('2','4','2021-09-02'),
('3','3','2021-09-03'),
('4','2','2021-09-04'),
('5','1','2021-09-05');

insert into nota_fiscal(id_pedido_fk, razao_social, cnpj, endereco_ecommerce)
	values
(1,'Confecção Melhores do Rio ME','12345678901234','Rua Zero, Número 1 - Bairro Dois, Teresópolis/RJ' ),
(2,'Confecção Melhores do Rio ME','12345678901234','Rua Zero, Número 1 - Bairro Dois, Teresópolis/RJ' ),
(3,'Confecção Melhores do Rio ME','12345678901234','Rua Zero, Número 1 - Bairro Dois, Teresópolis/RJ' ),
(4,'Confecção Melhores do Rio ME','12345678901234','Rua Zero, Número 1 - Bairro Dois, Teresópolis/RJ' ),
(5,'Confecção Melhores do Rio ME','12345678901234','Rua Zero, Número 1 - Bairro Dois, Teresópolis/RJ' )