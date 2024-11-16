-- Os dados inseridos aqui foram gerados para fins de demonstração. Não retiramos de fontes oficiais...
-- Inserção na tabela de categorias
INSERT INTO categoria (id, nome, descricao)
VALUES
    (NEWID(), 'Disjuntores', 'Dispositivos de proteção contra sobrecarga e curto-circuito, usados para proteger circuitos elétricos e equipamentos.'),
    (NEWID(), 'Fios e Cabos', 'Cabos elétricos utilizados para conduzir corrente elétrica, com diversas bitolas e tipos para diferentes aplicações.'),
    (NEWID(), 'Conectores', 'Conectores elétricos para união de fios, terminais e outros componentes em sistemas elétricos.'),
    (NEWID(), 'Relés', 'Dispositivos de controle eletromagnético utilizados para automatizar o acionamento de circuitos elétricos.'),
    (NEWID(), 'Interruptores', 'Dispositivos para controle manual ou automático de circuitos elétricos, permitindo a interrupção do fluxo de corrente.'),
    (NEWID(), 'Sensores', 'Sensores de temperatura, umidade, proximidade, entre outros, usados em sistemas de automação e controle de processos.'),
    (NEWID(), 'Transformadores', 'Equipamentos para conversão de tensão em sistemas de distribuição de energia elétrica.'),
    (NEWID(), 'Contatores', 'Dispositivos eletromagnéticos utilizados para comutar circuitos de alta corrente, como motores e equipamentos industriais.'),
    (NEWID(), 'Quadros de Distribuição', 'Painéis que centralizam e distribuem energia elétrica para diferentes circuitos, protegendo-os com dispositivos de proteção.'),
    (NEWID(), 'Caixas de Junção', 'Caixas utilizadas para proteger conexões elétricas, organizando e facilitando a manutenção de instalações elétricas.');

-- Inserção na tabela de fabricantes
INSERT INTO fabricante (id, nome, telefone, endereco, cnpj, email)
VALUES
    (NEWID(), 'Siemens', '11' + CAST(ABS(CHECKSUM(NEWID())) % 10000000000 AS VARCHAR(15)), 'Avenida das Nações Unidas, 12551 - São Paulo, SP', '12.345.678/0001-90', 'siemens@email.com'),
    (NEWID(), 'General Electric', '11' + CAST(ABS(CHECKSUM(NEWID())) % 10000000000 AS VARCHAR(15)), 'Rua dos Três Irmãos, 800 - Rio de Janeiro, RJ', '34.567.890/0001-23', 'ge@email.com'),
    (NEWID(), 'Bosch', '11' + CAST(ABS(CHECKSUM(NEWID())) % 10000000000 AS VARCHAR(15)), 'Rua Coronel Fernando Prestes, 453 - São Paulo, SP', '45.678.901/0001-34', 'bosch@email.com'),
    (NEWID(), 'ABB', '11' + CAST(ABS(CHECKSUM(NEWID())) % 10000000000 AS VARCHAR(15)), 'Avenida das Indústrias, 2100 - São Bernardo do Campo, SP', '56.789.012/0001-45', 'abb@email.com'),
    (NEWID(), 'Emerson', '11' + CAST(ABS(CHECKSUM(NEWID())) % 10000000000 AS VARCHAR(15)), 'Rua dos Trabalhos, 1200 - Campinas, SP', '67.890.123/0001-56', 'emerson@email.com'),
    (NEWID(), 'Schneider Electric', '11' + CAST(ABS(CHECKSUM(NEWID())) % 10000000000 AS VARCHAR(15)), 'Avenida das Indústrias, 1200 - São Paulo, SP', '78.901.234/0001-67', 'schneider@email.com'),
    (NEWID(), 'Rockwell Automation', '11' + CAST(ABS(CHECKSUM(NEWID())) % 10000000000 AS VARCHAR(15)), 'Rua das Empresas, 1300 - São Paulo, SP', '89.012.345/0001-78', 'rockwell@email.com'),
    (NEWID(), 'Mitsubishi Electric', '11' + CAST(ABS(CHECKSUM(NEWID())) % 10000000000 AS VARCHAR(15)), 'Rua Jaguari, 2000 - São Paulo, SP', '90.123.456/0001-89', 'mitsubishi@email.com'),
    (NEWID(), 'Panasonic', '11' + CAST(ABS(CHECKSUM(NEWID())) % 10000000000 AS VARCHAR(15)), 'Rua João Ramalho, 500 - São Paulo, SP', '01.234.567/0001-90', 'panasonic@email.com'),
    (NEWID(), 'Festo', '11' + CAST(ABS(CHECKSUM(NEWID())) % 10000000000 AS VARCHAR(15)), 'Avenida São João, 1000 - São Paulo, SP', '12.345.678/0001-11', 'festo@email.com'),
    (NEWID(), 'Honeywell', '11' + CAST(ABS(CHECKSUM(NEWID())) % 10000000000 AS VARCHAR(15)), 'Rua dos Trabalhadores, 400 - Rio de Janeiro, RJ', '23.456.789/0001-22', 'honeywell@email.com'),
    (NEWID(), 'Caterpillar', '11' + CAST(ABS(CHECKSUM(NEWID())) % 10000000000 AS VARCHAR(15)), 'Rua dos Maquinistas, 700 - Campinas, SP', '34.567.890/0001-33', 'caterpillar@email.com'),
    (NEWID(), 'Weidmüller', '11' + CAST(ABS(CHECKSUM(NEWID())) % 10000000000 AS VARCHAR(15)), 'Avenida Castelo Branco, 1500 - São Paulo, SP', '45.678.901/0001-44', 'weidmueller@email.com'),
    (NEWID(), 'SKF', '11' + CAST(ABS(CHECKSUM(NEWID())) % 10000000000 AS VARCHAR(15)), 'Rua João Frazão, 550 - São Paulo, SP', '56.789.012/0001-55', 'skf@email.com'),
    (NEWID(), 'Baldor Electric', '11' + CAST(ABS(CHECKSUM(NEWID())) % 10000000000 AS VARCHAR(15)), 'Rua Taubaté, 820 - São Paulo, SP', '67.890.123/0001-66', 'baldor@email.com'),
    (NEWID(), 'Siemens Energy', '11' + CAST(ABS(CHECKSUM(NEWID())) % 10000000000 AS VARCHAR(15)), 'Avenida José Benassi, 3000 - São Paulo, SP', '78.901.234/0001-77', 'siemens_energy@email.com'),
    (NEWID(), 'Furukawa Electric', '11' + CAST(ABS(CHECKSUM(NEWID())) % 10000000000 AS VARCHAR(15)), 'Rua Campos Sales, 800 - São Paulo, SP', '89.012.345/0001-88', 'furukawa@email.com'),
    (NEWID(), 'Hitachi', '11' + CAST(ABS(CHECKSUM(NEWID())) % 10000000000 AS VARCHAR(15)), 'Avenida JK, 1500 - São Paulo, SP', '90.123.456/0001-99', 'hitachi@email.com'),
    (NEWID(), 'Nidec', '11' + CAST(ABS(CHECKSUM(NEWID())) % 10000000000 AS VARCHAR(15)), 'Rua Almirante Tamandaré, 900 - São Paulo, SP', '01.234.567/0001-01', 'nidec@email.com');

-- Inserção na tabela de clientes
INSERT INTO cliente (id, nome, email, telefone, endereco, data_cadastro)
VALUES
    (NEWID(), 'Hospital das Clínicas', 'hospclinicas@email.com', '11' + CAST(ABS(CHECKSUM(NEWID())) % 10000000000 AS VARCHAR(15)), 'Avenida Doutor Enéas de Carvalho Aguiar, São Paulo, SP', DATEADD(DAY, -(ABS(CHECKSUM(NEWID())) % 3650), GETDATE())),
    (NEWID(), 'Petrobras', 'petrobras@email.com', '11' + CAST(ABS(CHECKSUM(NEWID())) % 10000000000 AS VARCHAR(15)), 'Avenida Chile, 65 - Rio de Janeiro, RJ', DATEADD(DAY, -(ABS(CHECKSUM(NEWID())) % 3650), GETDATE())),
    (NEWID(), 'Vale', 'vale@email.com', '11' + CAST(ABS(CHECKSUM(NEWID())) % 10000000000 AS VARCHAR(15)), 'Rua Tapajós, 500 - Belo Horizonte, MG', DATEADD(DAY, -(ABS(CHECKSUM(NEWID())) % 3650), GETDATE())),
    (NEWID(), 'Itaú Unibanco', 'itau@email.com', '11' + CAST(ABS(CHECKSUM(NEWID())) % 10000000000 AS VARCHAR(15)), 'Avenida Brigadeiro Faria Lima, São Paulo, SP', DATEADD(DAY, -(ABS(CHECKSUM(NEWID())) % 3650), GETDATE())),
    (NEWID(), 'Ambev', 'ambev@email.com', '11' + CAST(ABS(CHECKSUM(NEWID())) % 10000000000 AS VARCHAR(15)), 'Avenida Antártica, 1010 - São Paulo, SP', DATEADD(DAY, -(ABS(CHECKSUM(NEWID())) % 3650), GETDATE())),
    (NEWID(), 'Gerdau', 'gerdau@email.com', '11' + CAST(ABS(CHECKSUM(NEWID())) % 10000000000 AS VARCHAR(15)), 'Avenida 9 de Julho, 3000 - Porto Alegre, RS', DATEADD(DAY, -(ABS(CHECKSUM(NEWID())) % 3650), GETDATE())),
    (NEWID(), 'Braskem', 'braskem@email.com', '11' + CAST(ABS(CHECKSUM(NEWID())) % 10000000000 AS VARCHAR(15)), 'Rua Aristides L. Marques, 410 - São Paulo, SP', DATEADD(DAY, -(ABS(CHECKSUM(NEWID())) % 3650), GETDATE())),
    (NEWID(), 'Embaplast', 'embaplast@email.com', '11' + CAST(ABS(CHECKSUM(NEWID())) % 10000000000 AS VARCHAR(15)), 'Rua Perimetral, 1220 - Curitiba, PR', DATEADD(DAY, -(ABS(CHECKSUM(NEWID())) % 3650), GETDATE())),
    (NEWID(), 'JBS', 'jbs@email.com', '11' + CAST(ABS(CHECKSUM(NEWID())) % 10000000000 AS VARCHAR(15)), 'Rua dos Três Irmãos, 100 - Goiânia, GO', DATEADD(DAY, -(ABS(CHECKSUM(NEWID())) % 3650), GETDATE())),
    (NEWID(), 'Hyundai', 'hyundai@email.com', '11' + CAST(ABS(CHECKSUM(NEWID())) % 10000000000 AS VARCHAR(15)), 'Rua das Industrias, 2100 - São Bernardo do Campo, SP', DATEADD(DAY, -(ABS(CHECKSUM(NEWID())) % 3650), GETDATE())),
    (NEWID(), 'Embasa', 'embasa@email.com', '11' + CAST(ABS(CHECKSUM(NEWID())) % 10000000000 AS VARCHAR(15)), 'Avenida Emílio Azevedo, 1500 - Salvador, BA', DATEADD(DAY, -(ABS(CHECKSUM(NEWID())) % 3650), GETDATE())),
    (NEWID(), 'Magazine Luiza', 'magazineluiza@email.com', '11' + CAST(ABS(CHECKSUM(NEWID())) % 10000000000 AS VARCHAR(15)), 'Rua Cardoso Pimentel, 300 - Franca, SP', DATEADD(DAY, -(ABS(CHECKSUM(NEWID())) % 3650), GETDATE())),
    (NEWID(), 'Cemig', 'cemig@email.com', '11' + CAST(ABS(CHECKSUM(NEWID())) % 10000000000 AS VARCHAR(15)), 'Avenida Barbacena, 1400 - Belo Horizonte, MG', DATEADD(DAY, -(ABS(CHECKSUM(NEWID())) % 3650), GETDATE())),
    (NEWID(), 'Claro', 'claro@email.com', '11' + CAST(ABS(CHECKSUM(NEWID())) % 10000000000 AS VARCHAR(15)), 'Rua dos Três Irmãos, 1900 - São Paulo, SP', DATEADD(DAY, -(ABS(CHECKSUM(NEWID())) % 3650), GETDATE())),
    (NEWID(), 'TIM Brasil', 'tim@email.com', '11' + CAST(ABS(CHECKSUM(NEWID())) % 10000000000 AS VARCHAR(15)), 'Rua Cardoso Pimentel, 2800 - Rio de Janeiro, RJ', DATEADD(DAY, -(ABS(CHECKSUM(NEWID())) % 3650), GETDATE())),
    (NEWID(), 'Gol Linhas Aéreas', 'gol@email.com', '11' + CAST(ABS(CHECKSUM(NEWID())) % 10000000000 AS VARCHAR(15)), 'Avenida JK, 1800 - São Paulo, SP', DATEADD(DAY, -(ABS(CHECKSUM(NEWID())) % 3650), GETDATE())),
    (NEWID(), 'Vivo', 'vivo@email.com', '11' + CAST(ABS(CHECKSUM(NEWID())) % 10000000000 AS VARCHAR(15)), 'Avenida São Gabriel, 2100 - São Paulo, SP', DATEADD(DAY, -(ABS(CHECKSUM(NEWID())) % 3650), GETDATE())),
    (NEWID(), 'Natura', 'natura@email.com', '11' + CAST(ABS(CHECKSUM(NEWID())) % 10000000000 AS VARCHAR(15)), 'Rua Corumbá, 1500 - São Paulo, SP', DATEADD(DAY, -(ABS(CHECKSUM(NEWID())) % 3650), GETDATE())),
    (NEWID(), 'Alcoa', 'alcoa@email.com', '11' + CAST(ABS(CHECKSUM(NEWID())) % 10000000000 AS VARCHAR(15)), 'Avenida das Indústrias, 800 - São Paulo, SP', DATEADD(DAY, -(ABS(CHECKSUM(NEWID())) % 3650), GETDATE()));

-- Inserção na tabela de estoque
INSERT INTO estoque (id, descricao, codigo, preco, disponivel, unidade_medida, peso, volume, data_entrada, status)
VALUES
    (NEWID(), 'Disjuntor 10A', 'DIS-001', CAST(RAND() * (500 - 50) + 50 AS DECIMAL(10, 2)), ABS(CHECKSUM(NEWID())) % 100, 'unidade', CAST(RAND() * (1 - 0.1) + 0.1 AS DECIMAL(10, 2)), CAST(RAND() * (0.5 - 0.05) + 0.05 AS DECIMAL(10, 2)), DATEADD(DAY, -ABS(CHECKSUM(NEWID())) % 365, GETDATE()), 'Ativo'),
    (NEWID(), 'Contator 25A', 'CON-002', CAST(RAND() * (300 - 50) + 50 AS DECIMAL(10, 2)), ABS(CHECKSUM(NEWID())) % 100, 'unidade', CAST(RAND() * (1.5 - 0.3) + 0.3 AS DECIMAL(10, 2)), CAST(RAND() * (0.6 - 0.1) + 0.1 AS DECIMAL(10, 2)), DATEADD(DAY, -ABS(CHECKSUM(NEWID())) % 365, GETDATE()), 'Ativo'),
    (NEWID(), 'Relé Térmico 20A', 'REL-003', CAST(RAND() * (200 - 30) + 30 AS DECIMAL(10, 2)), ABS(CHECKSUM(NEWID())) % 100, 'unidade', CAST(RAND() * (0.8 - 0.2) + 0.2 AS DECIMAL(10, 2)), CAST(RAND() * (0.3 - 0.05) + 0.05 AS DECIMAL(10, 2)), DATEADD(DAY, -ABS(CHECKSUM(NEWID())) % 365, GETDATE()), 'Ativo'),
    (NEWID(), 'Sensor de Temperatura', 'SEN-004', CAST(RAND() * (1000 - 100) + 100 AS DECIMAL(10, 2)), ABS(CHECKSUM(NEWID())) % 100, 'unidade', CAST(RAND() * (0.5 - 0.05) + 0.05 AS DECIMAL(10, 2)), CAST(RAND() * (0.1 - 0.01) + 0.01 AS DECIMAL(10, 2)), DATEADD(DAY, -ABS(CHECKSUM(NEWID())) % 365, GETDATE()), 'Ativo'),
    (NEWID(), 'Fusível 15A', 'FUS-005', CAST(RAND() * (50 - 5) + 5 AS DECIMAL(10, 2)), ABS(CHECKSUM(NEWID())) % 100, 'unidade', CAST(RAND() * (0.3 - 0.1) + 0.1 AS DECIMAL(10, 2)), CAST(RAND() * (0.02 - 0.005) + 0.005 AS DECIMAL(10, 2)), DATEADD(DAY, -ABS(CHECKSUM(NEWID())) % 365, GETDATE()), 'Ativo'),
    (NEWID(), 'Cabos Elétricos 2.5mm²', 'CAB-006', CAST(RAND() * (800 - 100) + 100 AS DECIMAL(10, 2)), ABS(CHECKSUM(NEWID())) % 100, 'metro', CAST(RAND() * (1.5 - 0.5) + 0.5 AS DECIMAL(10, 2)), CAST(RAND() * (0.2 - 0.05) + 0.05 AS DECIMAL(10, 2)), DATEADD(DAY, -ABS(CHECKSUM(NEWID())) % 365, GETDATE()), 'Ativo'),
    (NEWID(), 'Interruptor Unipolar', 'INT-007', CAST(RAND() * (150 - 20) + 20 AS DECIMAL(10, 2)), ABS(CHECKSUM(NEWID())) % 100, 'unidade', CAST(RAND() * (0.4 - 0.1) + 0.1 AS DECIMAL(10, 2)), CAST(RAND() * (0.05 - 0.01) + 0.01 AS DECIMAL(10, 2)), DATEADD(DAY, -ABS(CHECKSUM(NEWID())) % 365, GETDATE()), 'Ativo'),
    (NEWID(), 'Tomada 10A', 'TOM-008', CAST(RAND() * (70 - 10) + 10 AS DECIMAL(10, 2)), ABS(CHECKSUM(NEWID())) % 100, 'unidade', CAST(RAND() * (0.3 - 0.1) + 0.1 AS DECIMAL(10, 2)), CAST(RAND() * (0.02 - 0.005) + 0.005 AS DECIMAL(10, 2)), DATEADD(DAY, -ABS(CHECKSUM(NEWID())) % 365, GETDATE()), 'Ativo'),
    (NEWID(), 'Relé de Sobrecarga 25A', 'REL-009', CAST(RAND() * (250 - 50) + 50 AS DECIMAL(10, 2)), ABS(CHECKSUM(NEWID())) % 100, 'unidade', CAST(RAND() * (0.7 - 0.3) + 0.3 AS DECIMAL(10, 2)), CAST(RAND() * (0.1 - 0.05) + 0.05 AS DECIMAL(10, 2)), DATEADD(DAY, -ABS(CHECKSUM(NEWID())) % 365, GETDATE()), 'Ativo'),
    (NEWID(), 'Disjuntor Diferencial 30mA', 'DIS-010', CAST(RAND() * (500 - 80) + 80 AS DECIMAL(10, 2)), ABS(CHECKSUM(NEWID())) % 100, 'unidade', CAST(RAND() * (1.2 - 0.3) + 0.3 AS DECIMAL(10, 2)), CAST(RAND() * (0.25 - 0.05) + 0.05 AS DECIMAL(10, 2)), DATEADD(DAY, -ABS(CHECKSUM(NEWID())) % 365, GETDATE()), 'Ativo'),
    (NEWID(), 'Relé de Controle', 'REL-011', CAST(RAND() * (350 - 100) + 100 AS DECIMAL(10, 2)), ABS(CHECKSUM(NEWID())) % 100, 'unidade', CAST(RAND() * (0.5 - 0.2) + 0.2 AS DECIMAL(10, 2)), CAST(RAND() * (0.15 - 0.05) + 0.05 AS DECIMAL(10, 2)), DATEADD(DAY, -ABS(CHECKSUM(NEWID())) % 365, GETDATE()), 'Ativo'),
    (NEWID(), 'Conector Industrial', 'CON-012', CAST(RAND() * (50 - 10) + 10 AS DECIMAL(10, 2)), ABS(CHECKSUM(NEWID())) % 100, 'unidade', CAST(RAND() * (0.2 - 0.05) + 0.05 AS DECIMAL(10, 2)), CAST(RAND() * (0.05 - 0.01) + 0.01 AS DECIMAL(10, 2)), DATEADD(DAY, -ABS(CHECKSUM(NEWID())) % 365, GETDATE()), 'Ativo'),
    (NEWID(), 'Disjuntor 40A', 'DIS-013', CAST(RAND() * (550 - 80) + 80 AS DECIMAL(10, 2)), ABS(CHECKSUM(NEWID())) % 100, 'unidade', CAST(RAND() * (1.8 - 0.5) + 0.5 AS DECIMAL(10, 2)), CAST(RAND() * (0.3 - 0.1) + 0.1 AS DECIMAL(10, 2)), DATEADD(DAY, -ABS(CHECKSUM(NEWID())) % 365, GETDATE()), 'Ativo'),
    (NEWID(), 'Tomada 20A', 'TOM-014', CAST(RAND() * (120 - 30) + 30 AS DECIMAL(10, 2)), ABS(CHECKSUM(NEWID())) % 100, 'unidade', CAST(RAND() * (0.5 - 0.15) + 0.15 AS DECIMAL(10, 2)), CAST(RAND() * (0.05 - 0.01) + 0.01 AS DECIMAL(10, 2)), DATEADD(DAY, -ABS(CHECKSUM(NEWID())) % 365, GETDATE()), 'Ativo'),
    (NEWID(), 'Contator 10A', 'CON-015', CAST(RAND() * (250 - 50) + 50 AS DECIMAL(10, 2)), ABS(CHECKSUM(NEWID())) % 100, 'unidade', CAST(RAND() * (1.2 - 0.3) + 0.3 AS DECIMAL(10, 2)), CAST(RAND() * (0.4 - 0.1) + 0.1 AS DECIMAL(10, 2)), DATEADD(DAY, -ABS(CHECKSUM(NEWID())) % 365, GETDATE()), 'Ativo'),
    (NEWID(), 'Fusível 10A', 'FUS-016', CAST(RAND() * (30 - 5) + 5 AS DECIMAL(10, 2)), ABS(CHECKSUM(NEWID())) % 100, 'unidade', CAST(RAND() * (0.2 - 0.05) + 0.05 AS DECIMAL(10, 2)), CAST(RAND() * (0.01 - 0.005) + 0.005 AS DECIMAL(10, 2)), DATEADD(DAY, -ABS(CHECKSUM(NEWID())) % 365, GETDATE()), 'Ativo'),
    (NEWID(), 'Disjuntor 50A', 'DIS-100', CAST(RAND() * (600 - 100) + 100 AS DECIMAL(10, 2)), ABS(CHECKSUM(NEWID())) % 100, 'unidade', CAST(RAND() * (2.0 - 0.6) + 0.6 AS DECIMAL(10, 2)), CAST(RAND() * (0.35 - 0.15) + 0.15 AS DECIMAL(10, 2)), DATEADD(DAY, -ABS(CHECKSUM(NEWID())) % 365, GETDATE()), 'Ativo'),
	(NEWID(), 'Disjuntor 50A', 'DIS-017', CAST(RAND() * (600 - 100) + 100 AS DECIMAL(10, 2)), ABS(CHECKSUM(NEWID())) % 100, 'unidade', CAST(RAND() * (2.2 - 0.7) + 0.7 AS DECIMAL(10, 2)), CAST(RAND() * (0.4 - 0.2) + 0.2 AS DECIMAL(10, 2)), DATEADD(DAY, -ABS(CHECKSUM(NEWID())) % 365, GETDATE()), 'Ativo'),
    (NEWID(), 'Sensor de Presença', 'SEN-018', CAST(RAND() * (1200 - 200) + 200 AS DECIMAL(10, 2)), ABS(CHECKSUM(NEWID())) % 100, 'unidade', CAST(RAND() * (0.5 - 0.1) + 0.1 AS DECIMAL(10, 2)), CAST(RAND() * (0.15 - 0.05) + 0.05 AS DECIMAL(10, 2)), DATEADD(DAY, -ABS(CHECKSUM(NEWID())) % 365, GETDATE()), 'Ativo'),
    (NEWID(), 'Relé de Sinalização', 'REL-019', CAST(RAND() * (400 - 100) + 100 AS DECIMAL(10, 2)), ABS(CHECKSUM(NEWID())) % 100, 'unidade', CAST(RAND() * (0.6 - 0.2) + 0.2 AS DECIMAL(10, 2)), CAST(RAND() * (0.2 - 0.1) + 0.1 AS DECIMAL(10, 2)), DATEADD(DAY, -ABS(CHECKSUM(NEWID())) % 365, GETDATE()), 'Ativo'),
    (NEWID(), 'Chave Seccionadora 32A', 'CHA-020', CAST(RAND() * (650 - 150) + 150 AS DECIMAL(10, 2)), ABS(CHECKSUM(NEWID())) % 100, 'unidade', CAST(RAND() * (3.0 - 1.0) + 1.0 AS DECIMAL(10, 2)), CAST(RAND() * (0.4 - 0.1) + 0.1 AS DECIMAL(10, 2)), DATEADD(DAY, -ABS(CHECKSUM(NEWID())) % 365, GETDATE()), 'Ativo'),
    (NEWID(), 'Transformador 380V', 'TRA-021', CAST(RAND() * (5000 - 1000) + 1000 AS DECIMAL(10, 2)), ABS(CHECKSUM(NEWID())) % 100, 'unidade', CAST(RAND() * (50.0 - 15.0) + 15.0 AS DECIMAL(10, 2)), CAST(RAND() * (1.5 - 0.5) + 0.5 AS DECIMAL(10, 2)), DATEADD(DAY, -ABS(CHECKSUM(NEWID())) % 365, GETDATE()), 'Ativo'),
    (NEWID(), 'Luminária LED', 'LUM-022', CAST(RAND() * (350 - 50) + 50 AS DECIMAL(10, 2)), ABS(CHECKSUM(NEWID())) % 100, 'unidade', CAST(RAND() * (1.0 - 0.3) + 0.3 AS DECIMAL(10, 2)), CAST(RAND() * (0.2 - 0.05) + 0.05 AS DECIMAL(10, 2)), DATEADD(DAY, -ABS(CHECKSUM(NEWID())) % 365, GETDATE()), 'Ativo'),
    (NEWID(), 'Tomada de Energia 32A', 'TOM-023', CAST(RAND() * (150 - 30) + 30 AS DECIMAL(10, 2)), ABS(CHECKSUM(NEWID())) % 100, 'unidade', CAST(RAND() * (0.5 - 0.15) + 0.15 AS DECIMAL(10, 2)), CAST(RAND() * (0.05 - 0.01) + 0.01 AS DECIMAL(10, 2)), DATEADD(DAY, -ABS(CHECKSUM(NEWID())) % 365, GETDATE()), 'Ativo'),
    (NEWID(), 'Disjuntor 80A', 'DIS-024', CAST(RAND() * (700 - 150) + 150 AS DECIMAL(10, 2)), ABS(CHECKSUM(NEWID())) % 100, 'unidade', CAST(RAND() * (3.5 - 1.0) + 1.0 AS DECIMAL(10, 2)), CAST(RAND() * (0.5 - 0.15) + 0.15 AS DECIMAL(10, 2)), DATEADD(DAY, -ABS(CHECKSUM(NEWID())) % 365, GETDATE()), 'Ativo'),
    (NEWID(), 'Fusível 25A', 'FUS-025', CAST(RAND() * (40 - 10) + 10 AS DECIMAL(10, 2)), ABS(CHECKSUM(NEWID())) % 100, 'unidade', CAST(RAND() * (0.2 - 0.05) + 0.05 AS DECIMAL(10, 2)), CAST(RAND() * (0.03 - 0.01) + 0.01 AS DECIMAL(10, 2)), DATEADD(DAY, -ABS(CHECKSUM(NEWID())) % 365, GETDATE()), 'Ativo'),
    (NEWID(), 'Interruptor 4P', 'INT-026', CAST(RAND() * (250 - 50) + 50 AS DECIMAL(10, 2)), ABS(CHECKSUM(NEWID())) % 100, 'unidade', CAST(RAND() * (0.6 - 0.2) + 0.2 AS DECIMAL(10, 2)), CAST(RAND() * (0.1 - 0.05) + 0.05 AS DECIMAL(10, 2)), DATEADD(DAY, -ABS(CHECKSUM(NEWID())) % 365, GETDATE()), 'Ativo'),
    (NEWID(), 'Sensor de Nível', 'SEN-027', CAST(RAND() * (800 - 150) + 150 AS DECIMAL(10, 2)), ABS(CHECKSUM(NEWID())) % 100, 'unidade', CAST(RAND() * (0.7 - 0.2) + 0.2 AS DECIMAL(10, 2)), CAST(RAND() * (0.25 - 0.1) + 0.1 AS DECIMAL(10, 2)), DATEADD(DAY, -ABS(CHECKSUM(NEWID())) % 365, GETDATE()), 'Ativo'),
    (NEWID(), 'Disjuntor 100A', 'DIS-028', CAST(RAND() * (800 - 250) + 250 AS DECIMAL(10, 2)), ABS(CHECKSUM(NEWID())) % 100, 'unidade', CAST(RAND() * (4.0 - 1.2) + 1.2 AS DECIMAL(10, 2)), CAST(RAND() * (0.6 - 0.25) + 0.25 AS DECIMAL(10, 2)), DATEADD(DAY, -ABS(CHECKSUM(NEWID())) % 365, GETDATE()), 'Ativo'),
    (NEWID(), 'Cabos de Comunicação', 'CAB-029', CAST(RAND() * (500 - 150) + 150 AS DECIMAL(10, 2)), ABS(CHECKSUM(NEWID())) % 100, 'metro', CAST(RAND() * (0.5 - 0.1) + 0.1 AS DECIMAL(10, 2)), CAST(RAND() * (0.2 - 0.05) + 0.05 AS DECIMAL(10, 2)), DATEADD(DAY, -ABS(CHECKSUM(NEWID())) % 365, GETDATE()), 'Ativo'),
    (NEWID(), 'Relé de Controle de Temperatura', 'REL-030', CAST(RAND() * (600 - 100) + 100 AS DECIMAL(10, 2)), ABS(CHECKSUM(NEWID())) % 100, 'unidade', CAST(RAND() * (1.0 - 0.3) + 0.3 AS DECIMAL(10, 2)), CAST(RAND() * (0.2 - 0.05) + 0.05 AS DECIMAL(10, 2)), DATEADD(DAY, -ABS(CHECKSUM(NEWID())) % 365, GETDATE()), 'Ativo'),
    (NEWID(), 'Contator 50A', 'CON-031', CAST(RAND() * (250 - 50) + 50 AS DECIMAL(10, 2)), ABS(CHECKSUM(NEWID())) % 100, 'unidade', CAST(RAND() * (1.5 - 0.5) + 0.5 AS DECIMAL(10, 2)), CAST(RAND() * (0.3 - 0.1) + 0.1 AS DECIMAL(10, 2)), DATEADD(DAY, -ABS(CHECKSUM(NEWID())) % 365, GETDATE()), 'Ativo'),
    (NEWID(), 'Modulo de Relé', 'MOD-032', CAST(RAND() * (450 - 100) + 100 AS DECIMAL(10, 2)), ABS(CHECKSUM(NEWID())) % 100, 'unidade', CAST(RAND() * (2.0 - 0.5) + 0.5 AS DECIMAL(10, 2)), CAST(RAND() * (0.3 - 0.1) + 0.1 AS DECIMAL(10, 2)), DATEADD(DAY, -ABS(CHECKSUM(NEWID())) % 365, GETDATE()), 'Ativo');

DECLARE @totalPedidos INT = 50;
DECLARE @contador INT = 1;
DECLARE @totalClientes INT = (SELECT COUNT(*) FROM cliente);
DECLARE @totalEstoque INT = (SELECT COUNT(*) FROM estoque);
DECLARE @totalFabricantes INT = (SELECT COUNT(*) FROM fabricante);
DECLARE @totalCategorias INT = (SELECT COUNT(*) FROM categoria);

-- Inserção na tabela de pedidos
WHILE @contador <= @totalPedidos
BEGIN
    INSERT INTO pedido (id, data_pedido, status, valor_total)
    VALUES 
    (
        NEWID(),
        DATEADD(DAY, ABS(CHECKSUM(NEWID())) % 1827, '2020-01-01'), -- entre jan 2020 e dez 2022
        CASE 
            WHEN (RAND(CHECKSUM(NEWID())) * 3) < 1 THEN 'Em processamento'
            WHEN (RAND(CHECKSUM(NEWID())) * 3) < 2 THEN 'Concluído'
            ELSE 'Cancelado'
        END,
        ROUND(RAND(CHECKSUM(NEWID())) * 450 + 50, 2)
    );
    SET @contador = @contador + 1;
END;

-- Inserção na tabela relacional categoria_estoque
DECLARE @estoque_id UNIQUEIDENTIFIER;
DECLARE @categoria_id UNIQUEIDENTIFIER;

DECLARE estoque_cursor CURSOR FOR SELECT id FROM estoque; -- Cursor para percorrer todos os itens de estoque
OPEN estoque_cursor;
FETCH NEXT FROM estoque_cursor INTO @estoque_id;

WHILE @@FETCH_STATUS = 0
BEGIN
    SELECT TOP 1 @categoria_id = id -- Cat aleatória
    FROM categoria 
    ORDER BY NEWID();

    INSERT INTO estoque_categoria (id_estoque, id_categoria)
    VALUES (@estoque_id, @categoria_id);

    FETCH NEXT FROM estoque_cursor INTO @estoque_id;
END

CLOSE estoque_cursor;
DEALLOCATE estoque_cursor;

-- Inserção de dados na tabela relacional estoque_fabricante. 
INSERT INTO estoque_fabricante (id_estoque, id_fabricante)
SELECT e.id, f.id FROM estoque e CROSS JOIN fabricante f;

-- Inserção na tabela relacional pedido_cliente.
SET @contador = 1;
WHILE @contador <= @totalPedidos
BEGIN
    INSERT INTO pedido_cliente (id_pedido, id_cliente)
    SELECT p.id, c.id 
    FROM pedido p 
    CROSS JOIN cliente c
    WHERE p.id = (SELECT id FROM pedido ORDER BY NEWID() OFFSET @contador - 1 ROWS FETCH NEXT 1 ROWS ONLY)
    AND c.id = (SELECT id FROM cliente ORDER BY NEWID() OFFSET (ABS(CHECKSUM(NEWID())) % @totalClientes) ROWS FETCH NEXT 1 ROWS ONLY);
    SET @contador = @contador + 1;
END;

-- Inserção na tabela relacional pedido_estoque.
SET @contador = 1;
WHILE @contador <= @totalPedidos
BEGIN
    INSERT INTO pedido_estoque (id_pedido, id_estoque, quantidade, preco_unitario)
    SELECT p.id, e.id, ABS(CHECKSUM(NEWID())) % 10 + 1 AS quantidade, 
           ROUND(RAND(CHECKSUM(NEWID())) * (100 - 10) + 10, 2) AS preco_unitario
    FROM pedido p 
    CROSS JOIN estoque e 
    WHERE p.id = (SELECT id FROM pedido ORDER BY NEWID() OFFSET @contador - 1 ROWS FETCH NEXT 1 ROWS ONLY)
    AND e.id = (SELECT id FROM estoque ORDER BY NEWID() OFFSET (ABS(CHECKSUM(NEWID())) % @totalEstoque) ROWS FETCH NEXT 1 ROWS ONLY);
    SET @contador = @contador + 1;
END;

-- Inserção na tabela relacional pedido_fabricante.
SET @contador = 1;
WHILE @contador <= @totalPedidos
BEGIN
    INSERT INTO pedido_fabricante (id_pedido, id_fabricante, data_fornecimento)
    SELECT p.id, f.id, DATEADD(DAY, ABS(CHECKSUM(NEWID())) % 1826, '2015-01-01') AS data_fornecimento
    FROM pedido p 
    CROSS JOIN fabricante f 
    WHERE p.id = (SELECT id FROM pedido ORDER BY NEWID() OFFSET @contador - 1 ROWS FETCH NEXT 1 ROWS ONLY)
    AND f.id = (SELECT id FROM fabricante ORDER BY NEWID() OFFSET (ABS(CHECKSUM(NEWID())) % @totalFabricantes) ROWS FETCH NEXT 1 ROWS ONLY);
    SET @contador = @contador + 1;
END;
