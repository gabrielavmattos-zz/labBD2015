select CodigoProduto as Codigo_Produto, DadosprodutoVenda.value('(/produtoVenda/linhaProduto/nomeLinha)[1]', 'varchar(40)') as Nome_Produto, DadosprodutoVenda.value('(/produtoVenda/quantidade)[1]', 'numeric(6)') as Quantidade, DadosprodutoVenda.value('(/produtoVenda/linhaProduto/marca)[1]', 'varchar(40)') as Marca_Produto, DadosprodutoVenda.value('(/produtoVenda/precoVenda)[1]', 'numeric(4,2)') as Preco_venda, DadosprodutoVenda.value('(/produtoVenda/tipoProduto/nomeTipo)[1]', 'varchar(40)') as Nome_Tipo
	from produtoVenda;