select 
	p.nome_produto as produto, 
    p.qtd_estoque as qtd_estoque, 
    pi.qtd_produto, 
    count(p.qtd_estoque) as qtd_comprada 
from produto p
	inner join pedido_item pi
    	on (pi.id_produto_fk = p.id_produto)
		where p.qtd_estoque > 1 group by p.id_produto, pi.qtd_produto;