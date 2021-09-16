--Buscar os itens em baixa quantidade no estoque
select 
	p.nome_produto,
	p.qtd_estoque 
from produto p 
	where p.qtd_estoque <= 10;
    
--Buscar quantidade de produtos disponível por palavra chave (time);
select
	p.nome_produto,
	p.qtd_estoque
from produto p
	where p.nome_produto like '%Fluminense%'


--a)

-- Relação de funcionários que cadastraram os produtos.
select 
	f.nome_funcionario as colaborador, 
    p.nome_produto as produto 
from funcionario f 
    inner join produto p
    	on(f.id_funcionario = p.id_funcionario_fk);

-- selecionar nome do cliente que efetuou a compra nome do produto, qtd do produto e data de fabricação.
select 
	c.nome_cliente as cliente, 
	po.nome_produto as produto, 
    pi.qtd_produto, 
    po.data_fabricacao
from cliente c
	inner join pedido as p 
    	on(c.id_cliente = p.id_cliente_fk)
    inner join pedido_item as pi 
    	on(p.id_item_fk = pi.id_item)
    inner join produto as po 
    	on(po.id_produto = pi.id_produto_fk);

--b)

select 
	p.nome_produto as produto, 
    p.qtd_estoque as qtd_estoque, 
    pi.qtd_produto, 
    count(p.qtd_estoque) as qtd_comprada 
from produto p
	inner join pedido_item pi
    	on (pi.id_produto_fk = p.id_produto)
		where p.qtd_estoque > 1 group by p.id_produto, pi.qtd_produto;

--c)

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