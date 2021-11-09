---consulta 1 Histórico de zarpes de pesca artesanal por bandera.--
select 
	extract (year from zarpes.fecha) as fecha,
		zarpes.motivo as motivo,
		barco.bandera as bandera,
		count (zarpes.motivo) as zarpes
from zarpes
	inner join barco on barco.codigo_barco = zarpes.codigo_barco
where zarpes.motivo ='pesca artesanal'
	group by
	extract (year from zarpes.fecha),
	zarpes.motivo,
	barco.bandera
---consulta 2 Histórico de atraques por bandera.--
select
	extract (year from atraque.fecha) as fecha,
		barco.bandera as bandera,
		atraque.codigo_barco as codigo_barco,
		count (barco.codigo_barco) as atraques
from atraque
	inner join barco on barco.codigo_barco = atraque.codigo_barco
	group by
	extract (year from atraque.fecha),
	atraque.codigo_barco,
	barco.bandera
--Consulta 3 Histórico de número de tripulantes controlados por el muelle pesquero por año.--
create or replace view prueba_view (fecha, total)
as select 
		extract (year from atraque.fecha) as fecha,
		sum (barco.numero_tripulantes) as total_tripulantes
from atraque
		inner join barco on barco.codigo_barco = atraque.codigo_barco
group by
		extract (year from atraque.fecha)
		order by extract (year from atraque.fecha) ;
select * from prueba_view;
--Consulta 4 Histórico de la atención de cada grúa por año.--
create or replace view prueba_view1 (fecha, total)
as select 
		extract (year from atraque.fecha) as fecha,
		count (gruas.codigo_grua) as total
from atraque
		inner join gruas on gruas.codigo_grua = atraque.codigo_grua
group by
  extract (year from atraque.fecha)
	order by extract (year from atraque.fecha) ;
select * from prueba_view1;