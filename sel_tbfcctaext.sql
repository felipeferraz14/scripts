select distinct(c.nome), d.nome , sum(a.valor_c) from fclanext a
inner join fcctaext b on b.id = a.id_fcctaext
inner join tbconven c on c.cod = b.con
inner join tbclinica d on d.cod = b.clinica
where b.mespro = '07' and b.anopro = '2016' and b.con ='04' and b.tipo_cta ='I'
group by 1 ,2