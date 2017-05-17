select
max (b.data) as Data,
a.id, a.cod , a.nome, a.classif, a.uni_con, a.bras,
max (b.valor) as Valor_Cobranca,
c.custo from tbmatmed a
inner join tbvlrmem b on b.id_tbmatmed = a.id
inner join geitens c on c.cod = a.cod
inner join tbmatmed d on d.bras = a.id
where
a.id = d.bras and
a.tab = 5 and
a.SITUACAO = 'A'  and
a.classif = 2
GROUP by
a.id,  a.cod, a.nome, a.classif, a.uni_con, a.bras,
--b.valor,
c.custo
order by a.cod
