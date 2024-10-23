select
	p.pagamento_id, 
	t.descricao as tratamento_descricao, 
	p.valor as valor_pago, 
	p.data_pagamento
from 
	Pagamento p
inner join 
	Tratamento t on p.tratamento_id = t.tratamento_id;