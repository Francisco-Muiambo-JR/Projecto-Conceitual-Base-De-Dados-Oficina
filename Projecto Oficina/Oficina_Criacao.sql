-- Criacao de Base de dados de Oficina
create database Oficina;
use Oficina;

-- Criacao da tabela de cliente
create table cliente(
	idCliente int auto_increment primary key,
    Nome varchar(20) not null,
    SobreNome varchar(20) not null,
    Endereco varchar(50) not null,
    BI char(9) unique
);

-- Criacao da tabela de mecanico
create table mecanico(
	idMecanico int auto_increment primary key,
	Nome varchar(20) not null,
	SobreNome varchar(20) not null,
    BI char(9) unique,
    Endereco varchar(50) not null,
    Especialidade varchar(25)
);

-- Criacao da tabela de equipe
create table equipe(
	idEquipe int primary key,
    Nome varchar(25)
);

-- Criacao da tabela de veiculo
create table veiculo(
	idVeiculo int auto_increment primary key,
	matricula varchar(8) unique,
    marca varchar(45),
    idCliente int,
    idEquipe int,
    constraint fk_cliente_veiculo foreign key (idCliente) references cliente(idCliente),
    constraint fk_equipe_veiculo foreign key (idEquipe) references equipe(idEquipe)
);

-- Criacao da tabela de mecanico_equipe
create table mecanico_equipe(
	idEquipe int,
    idMecanico int,
    primary key (idEquipe, idMecanico),
    constraint fk_mecanico foreign key (idMecanico) references mecanico(idMecanico),
    constraint fk_equipe foreign key (idEquipe) references equipe(idEquipe)
);

-- Criacao da tabela servico
create table servico(
	idServico int auto_increment primary key,
    tipo enum('Revisao', 'Conserto') default 'Revisao',
    Nome varchar(50),
    valor double
);

-- Criacao da tabela fornecedor
create table fornecedor(
	idFornecedor int auto_increment primary key,
    Nome varchar(50),
	BI char(9) unique
);

-- Criacao da tabela peca
create table peca(
	idPeca int auto_increment primary key,
    Nome varchar(50),
    valor double,
    idFornecedor int,
	constraint fk_peca_fornecedor foreign key (idFornecedor) references fornecedor(idFornecedor)
);

-- Criacao da tabela Estado_servico
create table Estado_servico(
	idServico int,
    idVeiculo int,
	estado ENUM('Aguardando Atendimento', 'Em Diagnóstico', 'Aguardando Peças', 
                'Em Reparação', 'Em Teste', 'Serviço Concluído', 
                'Entregue ao Cliente', 'Cancelado') DEFAULT 'Aguardando Atendimento',
	data_inicio date,
    data_fim date,
    primary key (idServico, idVeiculo),
    constraint fk_estado_servico_servico foreign key (idServico) references servico(idServico),
    constraint fk_estado_servico_veiculo foreign key (idVeiculo) references veiculo(idVeiculo)
);

-- Criacao da tabela OrdemServico
create table OS(
	numero_OS int auto_increment primary key,
    data_emissao date,
    valor double,
    estado enum('Aberta', 'Em andamento', 'Concluída', 'Cancelada'),
    idEquipe int,
    constraint fk_OS_Equipe foreign key (idEquipe) references equipe(idEquipe)
);

-- Criacao da tabela OS_Servico
create table OS_Servico(
	numero_OS int,
    idServico int,
    quantidade int,
    valor double,
    primary key (numero_OS, idServico),
    constraint fk_OS foreign key (numero_OS) references OS(numero_OS),
    constraint fk_OS_servico foreign key (idServico) references servico(idServico)
);

-- Criacao da tabela servico_Peca
create table servico_peca(
	idServico int,
	idPeca int,
    quantidade int,
	constraint fk_servico_peca_servico foreign key (idServico) references servico(idServico),
	constraint fk_servico_peca_peca foreign key (idPeca) references peca(idPeca)
);

-- Criacao da tabela pagamento
create table pagamento(
	idPagamento int auto_increment primary key,
    idCliente int,
    idServico int,
    constraint fk_pagamento_cliente foreign key (idCliente) references cliente(idCliente),
	constraint fk_pagamento_servico foreign key (idServico) references servico(idServico)
);
