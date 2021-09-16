update pedido_item
	set id_produto_fk = 3 where id_produto_fk = 7;

delete from produto 
	where produto.nome_produto = 'Casaco de Pele de Capivara';