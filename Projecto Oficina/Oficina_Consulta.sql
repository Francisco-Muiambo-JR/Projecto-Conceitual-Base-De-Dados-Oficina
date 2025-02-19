-- Quais são os clientes cadastrados na oficina?
select * from cliente;

-- Quais são os mecânicos e suas especialidades?
select concat(Nome, ' ', SobreNome) as NomeCompleto, Especialidade 
from mecanico;

-- Quais são os veículos de um cliente específico?
select * from veiculo;
select idVeiculo, matricula, marca
from veiculo v join cliente c on v.idCliente = c.idCliente
where c.Nome = 'João';

-- Quais serviços estão associados a um veículo específico?
select * from servico;
select * from Estado_servico;
select marca, matricula, s.idServico, tipo, Nome 
from servico s join Estado_servico e on s.IdServico = e.IdServico
				join veiculo v on v.IdVeiculo = e.IdVeiculo
                where v.marca = 'Toyota';

-- Quais serviços estão sendo realizados em um veículo com status 'Em Reparação'?
select s.idServico, tipo, Nome 
from servico s join Estado_servico e on s.IdServico = e.IdServico
				join veiculo v on v.IdVeiculo = e.IdVeiculo
                where e.estado = 'Em Reparação';

-- Quais mecânicos estão em uma equipe específica?
select * from equipe;
select * from mecanico_equipe;
select m.idMecanico, concat(m.Nome, ' ', m.SobreNome) as NomeCompleto
from mecanico m join mecanico_equipe me on m.IdMecanico = me.IdMecanico
				join equipe e on e.IdEquipe = me.IdEquipe
                where e.Nome = 'Equipe A';

-- Quais peças foram utilizadas em um serviço específico?
select * from servico;
select * from peca;
select * from servico_peca;
select p.idPeca, p.Nome
from peca p join servico_peca s using(idPeca)
			join servico ss using(idServico)
            where ss.Nome = 'Troca de Motor';
            
-- Quantos veiculos cada cliente tem
select Nome, SobreNome, count(*) as total
from cliente join veiculo using(idCliente)
group by idCliente;

-- Lista de clientes com mais de 1 veiculo
select Nome, SobreNome, count(*) as total
from cliente join veiculo using(idCliente)
group by idCliente
having total > 1;

-- clientes que pagaram em Ordem
select * from cliente join pagamento using(idCliente)
order by idCliente ASC;

-- 