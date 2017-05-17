select distinct d.doc, d.valor, d.parc, f.dt_pgto
from mfdesacr d
inner join mfconpag f on f.doc=d.doc and f.forn=d.cod
where d.conta=17 AND f.dt_pgto between '01.12.2015' and '31.12.2015'