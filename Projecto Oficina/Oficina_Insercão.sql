-- Inserção de Clientes
insert into cliente (Nome, SobreNome, Endereco, BI) values
('João', 'Silva', 'Rua A, 123', '123456789'),
('Maria', 'Santos', 'Rua B, 456', '987654321'),
('Carlos', 'Oliveira', 'Rua C, 789', '123123123'),
('Ana', 'Costa', 'Rua D, 101', '321321321'),
('Pedro', 'Pereira', 'Rua E, 202', '456456456');

-- Inserção de Mecânicos
insert into mecanico (Nome, SobreNome, BI, Endereco, Especialidade) values
('Fernando', 'Souza', '111222333', 'Rua F, 303', 'Motor'),
('Lucas', 'Martins', '444555666', 'Rua G, 404', 'Suspensão'),
('Rafael', 'Almeida', '777888999', 'Rua H, 505', 'Elétrica'),
('Paulo', 'Lima', '101112131', 'Rua I, 606', 'Freios'),
('Roberto', 'Gomes', '141516171', 'Rua J, 707', 'Pintura'),
('Juliana', 'Ferreira', '181920212', 'Rua K, 808', 'Suspensão'),
('Mário', 'Costa', '222324252', 'Rua L, 909', 'Motor'),
('Tatiane', 'Martins', '262728292', 'Rua M, 1010', 'Freios'),
('Ricardo', 'Pereira', '303132333', 'Rua N, 1111', 'Pintura'),
('Gustavo', 'Santos', '343536373', 'Rua O, 1212', 'Elétrica');

-- Inserção de Equipes
insert into equipe (idEquipe, Nome) values
(1, 'Equipe A'),
(2, 'Equipe B'),
(3, 'Equipe C'),
(4, 'Equipe D');

-- Inserção de Veículos
insert into veiculo (matricula, marca, idCliente, idEquipe) values
('ABC1234', 'Toyota', 1, 1),
('DEF5678', 'Honda', 2, 1),
('GHI9012', 'Ford', 3, 2),
('JKL3456', 'Fiat', 4, 2),
('MNO7890', 'Volkswagen', 5, 3),
('PQR1234', 'BMW', 1, 3),
('STU5678', 'Chevrolet', 2, 4),
('VWX9012', 'Nissan', 3, 4),
('YZA3456', 'Hyundai', 4, 1),
('BCD7890', 'Peugeot', 5, 2);

-- Inserção de Serviços
insert into servico (tipo, Nome, valor) values
('Revisao', 'Troca de Óleo', 150.00),
('Conserto', 'Reparo de Freios', 200.00),
('Revisao', 'Alinhamento de Suspensão', 180.00),
('Conserto', 'Troca de Motor', 1500.00),
('Revisao', 'Verificação Elétrica', 120.00),
('Revisao', 'Troca de Pneus', 300.00),
('Conserto', 'Substituição de Peças de Freios', 500.00),
('Revisao', 'Inspeção Geral', 100.00),
('Conserto', 'Reparo de Radiador', 250.00),
('Revisao', 'Limpeza de Injeção Eletrônica', 200.00);

-- Inserção de Fornecedores
insert into fornecedor (Nome, BI) values
('Auto Peças A', '123456789'),
('Auto Peças B', '987654321'),
('Auto Peças C', '555555555'),
('Auto Peças D', '444444444');

-- Inserção de Peças
insert into peca (Nome, valor, idFornecedor) values
('Filtro de Óleo', 50.00, 1),
('Pastilha de Freio', 80.00, 2),
('Suspensão Traseira', 150.00, 3),
('Bateria', 200.00, 4),
('Óleo de Motor', 60.00, 1),
('Amortecedor', 100.00, 2),
('Cabo de Velas', 20.00, 3),
('Filtro de Ar', 30.00, 4),
('Corpo de Borboleta', 90.00, 1),
('Correia Dentada', 120.00, 2),
('Velas de Ignição', 25.00, 3),
('Radiador', 300.00, 4),
('Disco de Freio', 250.00, 1),
('Pneus', 350.00, 2),
('Alternador', 200.00, 3),
('Carter', 180.00, 4),
('Tampa de Válvula', 110.00, 1),
('Sensor de Oxigênio', 150.00, 2),
('Bomba de Combustível', 250.00, 3),
('Limpador de Parabrisa', 40.00, 4),
('Distribuidor', 80.00, 1),
('Molas', 200.00, 2);

-- Inserção de Estado_servico
insert into Estado_servico (idServico, idVeiculo, estado, data_inicio, data_fim) values
(1, 1, 'Em Diagnóstico', '2025-02-19', '2025-02-20'),
(2, 2, 'Em Reparação', '2025-02-19', '2025-02-22'),
(3, 3, 'Aguardando Peças', '2025-02-19', '2025-02-23'),
(4, 4, 'Em Teste', '2025-02-19', '2025-02-25'),
(5, 5, 'Serviço Concluído', '2025-02-19', '2025-02-20');

-- Inserção de Ordem de Serviço
insert into OS (data_emissao, valor, estado, idEquipe) values
('2025-02-19', 1000.00, 'Aberta', 1),
('2025-02-20', 2000.00, 'Em andamento', 2),
('2025-02-21', 1500.00, 'Concluída', 3),
('2025-02-22', 500.00, 'Cancelada', 4);

-- Inserção de OS_Serviço
insert into OS_Servico (numero_OS, idServico, quantidade, valor) values
(1, 1, 2, 300.00),
(2, 2, 1, 200.00),
(3, 3, 3, 450.00),
(4, 4, 1, 150.00);

-- Inserção de Servico_Peca
insert into servico_peca (idServico, idPeca, quantidade) values
(1, 1, 1),
(2, 2, 2),
(3, 3, 1),
(4, 4, 1),
(5, 5, 2);

-- Inserção de Pagamento
insert into pagamento (idCliente, idServico) values
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);

-- Inserindo associações na tabela mecanico_equipe
insert into mecanico_equipe (idEquipe, idMecanico) values
(1, 1), 
(1, 2), 
(1, 3), 
(2, 4), 
(2, 5), 
(3, 6), 
(3, 7), 
(4, 8), 
(4, 9), 
(4, 10); 

