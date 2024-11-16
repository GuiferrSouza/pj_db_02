CREATE TABLE fabricante (
    id UNIQUEIDENTIFIER PRIMARY KEY,
    nome VARCHAR(100),
    telefone VARCHAR(15),
    endereco VARCHAR(255),
    cnpj VARCHAR(18),
    email VARCHAR(100)
);

CREATE TABLE categoria (
    id UNIQUEIDENTIFIER PRIMARY KEY,
    nome VARCHAR(100),
    descricao TEXT
);

CREATE TABLE cliente (
    id UNIQUEIDENTIFIER PRIMARY KEY,
    nome VARCHAR(100),
    email VARCHAR(100),
    telefone VARCHAR(15),
    endereco VARCHAR(255),
    data_cadastro DATE
);

CREATE TABLE estoque (
    id UNIQUEIDENTIFIER PRIMARY KEY,
    descricao VARCHAR(255),
    codigo VARCHAR(50) UNIQUE,
    preco DECIMAL(10, 2),
    disponivel INT,
    unidade_medida VARCHAR(20),
    peso DECIMAL(10, 2),
    volume DECIMAL(10, 2),
    data_entrada DATE,
    status VARCHAR(100)
);

CREATE TABLE estoque_categoria (
    id_estoque UNIQUEIDENTIFIER,
    id_categoria UNIQUEIDENTIFIER,
    PRIMARY KEY (id_estoque, id_categoria),
    FOREIGN KEY (id_estoque) REFERENCES estoque(id),
    FOREIGN KEY (id_categoria) REFERENCES categoria(id)
);

CREATE TABLE estoque_fabricante (
    id_estoque UNIQUEIDENTIFIER,
    id_fabricante UNIQUEIDENTIFIER,
    PRIMARY KEY (id_estoque, id_fabricante),
    FOREIGN KEY (id_estoque) REFERENCES estoque(id),
    FOREIGN KEY (id_fabricante) REFERENCES fabricante(id)
);

CREATE TABLE pedido (
    id UNIQUEIDENTIFIER PRIMARY KEY,
    data_pedido DATE,
    status VARCHAR(100),
    valor_total DECIMAL(10, 2)
);

CREATE TABLE pedido_cliente (
    id_pedido UNIQUEIDENTIFIER,
    id_cliente UNIQUEIDENTIFIER,
    PRIMARY KEY (id_pedido, id_cliente),
    FOREIGN KEY (id_pedido) REFERENCES pedido(id),
    FOREIGN KEY (id_cliente) REFERENCES cliente(id)
);

CREATE TABLE pedido_estoque (
    id_pedido UNIQUEIDENTIFIER,
    id_estoque UNIQUEIDENTIFIER,
    quantidade INT,
    preco_unitario DECIMAL(10, 2),
    PRIMARY KEY (id_pedido, id_estoque),
    FOREIGN KEY (id_pedido) REFERENCES pedido(id),
    FOREIGN KEY (id_estoque) REFERENCES estoque(id)
);

CREATE TABLE pedido_fabricante (
    id_pedido UNIQUEIDENTIFIER,
    id_fabricante UNIQUEIDENTIFIER,
    data_fornecimento DATE,
    PRIMARY KEY (id_pedido, id_fabricante),
    FOREIGN KEY (id_pedido) REFERENCES pedido(id),
    FOREIGN KEY (id_fabricante) REFERENCES fabricante(id)
);