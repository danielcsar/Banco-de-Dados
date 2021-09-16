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