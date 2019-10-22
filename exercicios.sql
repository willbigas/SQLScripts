/* exercicio 1 */
select A.NomeProduto, B.NomeCategoria
from produtos A inner join categorias B 
on A.CategoriaID = B.CategoriaID
order by B.NomeCategoria;

/* exercicio 2 */
SELECT SUM(A.QUANTIDADE) AS TOTAL_COMPRAS, B.clienteID FROM PEDIDOS_ITEM A 
INNER JOIN pedidos B ON A.PEDIDOID = B.PEDIDOID
GROUP BY B.clienteID ORDER BY TOTAL_COMPRAS DESC
LIMIT 1;

/* exercicio 3 */
select A.nome, A.email, B.nomedepartamento
from fornecedores_contatos A inner join departamentos B
on A.departamentoID = B.departamentoID
order by B.nomedepartamento;

/* exercicio 4 */
select count(distinct A.NomeProduto) as produtos_cadastrados,
count(distinct B.NomeCliente) as clientes_cadastrados,
count(distinct C.NomeFornecedor) as fornecedores_cadastrados
from produtos A join clientes B join fornecedores C;

/* exercicio 5 */
select A.clienteID, A.NomeCliente, B.pedidoID
from clientes A left join pedidos B 
on B.clienteID = A.clienteID 
where pedidoID is null;

/* exercicio 7 */
select NomeCliente, CEP from clientes
where CEP between '9000' and '9999';

/* exercicio 8 */
select A.quantidade , B.NomeProduto
 from pedidos_item A join produtos B
 on A.produtoID = B.produtoID 
 where quantidade > 10;
 
 /* exercicio 9 */ 
 select NomeCliente, Cidade from clientes where Cidade like 'São Paulo';
 
 /* exercicio 10 */ 
 select A.NomeCliente, B.sigla
 from clientes A join estados B
 on a.estado = b.codestado where Ucase(sigla) in ('rs','sc','pr');
 
 /* exercicio 11 */ 
 select NomeCliente, Nivel from clientes 
 where NomeCliente like 'A%' or NomeCliente like 'B%'
 and Nivel like 'user';
 
 /* exercicio 12 */ 
 select A.NomeCliente as nome, A.Email as email, 'cliente' as tipo 
 from clientes A union all
 select B.nome, B.email, 'fornecedor' from fornecedores_contatos B;
 
 /* exercicio 13 */
 select A.NomeCliente, B.NomeProduto
 from clientes A cross join produtos B;
 
 /* exercicio 14 */ 
 select NomeCliente, Email, Usuario, Senha 
 from clientes where Usuario = Senha;
 
 /* exercicio 15 */ 
 select UnidadesEmEstoque from produtos 
 order by UnidadesEmEstoque desc limit 10;
 
 /* exercicio 16 */ 
 select * from clientes;
 
 



 










