select 
	nota_fiscal.numero_nota as id_nota, 
	pedido.data_pedido,
	cliente.nome_cliente, 
	cliente.cpf_cliente, 
	cliente.endereco_cliente, 
	produto.nome_produto as produto,
	pedido_item.qtd_produto, 
	produto.valor_unitario,
	pedido_item.qtd_produto * produto.valor_unitario as valor_total,
	nota_fiscal.razao_social, 
	nota_fiscal.cnpj, 
	nota_fiscal.endereco_ecommerce

from nota_fiscal
	inner join pedido 
		on (pedido.id_pedido = nota_fiscal.id_pedido_fk)
	inner join cliente 
		on (cliente.id_cliente = pedido.id_cliente_fk)
	inner join pedido_item 
		on (pedido_item.id_item = pedido.id_item_fk)
	inner join produto 
		on (produto.id_produto = pedido_item.id_produto_fk)