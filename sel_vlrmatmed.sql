select
a.id, a.cod , a.nome, a.uni_con, a.bras,
a.tipo_ref, bb.tab, bb.cod, bb.data, bb.valor as valor_total, aa.fator,
 (bb.valor / aa.fator) as valor_unid from tbmatmed a
inner join tbvlrmem b on b.id_tbmatmed = a.id 
inner join geitens c on c.cod = a.cod 
left join tbmatmed aa on aa.tab in (98,99) and a.bras=aa.cod and a.tipo_ref=aa.tab 
left join tbvlrmem bb on bb.tab=aa.tab and bb.cod=aa.cod  and bb.data between :datai and :dataf
where 
a.tab = 5 and
a.SITUACAO = 'A' and 
a.classif = 1
and a.tipo_ref = '99' or (a.tipo_ref = '98')  and
c.gru = 3
GROUP by 
a.id, a.cod, a.nome, a.uni_con, a.bras,
a.tipo_ref, bb.tab, bb.cod, bb.data, bb.valor, aa.fator