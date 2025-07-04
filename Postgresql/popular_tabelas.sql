-- Categorias
INSERT INTO categorias (nome, descricao) VALUES
('Eletrônicos', 'Dispositivos eletrônicos e acessórios'),
('Informática', 'Computadores, notebooks e periféricos'),
('Móveis', 'Móveis para casa e escritório'),
('Livros', 'Livros de diversos gêneros'),
('Esportes', 'Artigos esportivos e equipamentos');

-- Clientes
INSERT INTO clientes (nome, email, telefone, endereco) VALUES
('João Silva', 'joao.silva@email.com', '(11) 99999-9999', 'Rua das Flores, 123 - São Paulo/SP'),
('Maria Oliveira', 'maria.oliveira@email.com', '(21) 88888-8888', 'Avenida Brasil, 456 - Rio de Janeiro/RJ'),
('Carlos Souza', 'carlos.souza@email.com', '(31) 77777-7777', 'Rua da Paz, 789 - Belo Horizonte/MG'),
('Ana Costa', 'ana.costa@email.com', '(41) 66666-6666', 'Alameda Santos, 321 - Curitiba/PR'),
('Pedro Santos', 'pedro.santos@email.com', '(51) 55555-5555', 'Rua dos Andradas, 654 - Porto Alegre/RS'),
('Juliana Pereira', 'juliana.pereira@email.com', '(81) 44444-4444', 'Avenida Boa Viagem, 987 - Recife/PE'),
('Marcos Lima', 'marcos.lima@email.com', '(71) 33333-3333', 'Rua Chile, 159 - Salvador/BA'),
('Fernanda Rocha', 'fernanda.rocha@email.com', '(85) 22222-2222', 'Avenida Beira Mar, 753 - Fortaleza/CE'),
('Ricardo Alves', 'ricardo.alves@email.com', '(48) 11111-1111', 'Rua das Palmeiras, 951 - Florianópolis/SC'),
('Patrícia Nunes', 'patricia.nunes@email.com', '(62) 10101-0101', 'Avenida Goiás, 357 - Goiânia/GO');

-- Produtos
INSERT INTO produtos (nome, descricao, preco, estoque, categoria_id) VALUES
--Categoria 1
('Smartphone X', 'Smartphone top de linha com câmera de 48MP', 2999.90, 50, 1),
('Fone Bluetooth', 'Fone de ouvido sem fio com cancelamento de ruído', 499.90, 100, 1),
('Smart TV 55"', 'TV 4K HDR com Android TV integrado', 3499.90, 30, 1),
('Tablet Pro', 'Tablet com tela de 10.1" e caneta stylus', 1899.90, 40, 1),
('Caixa de Som', 'Caixa de som portátil à prova d''água', 399.90, 80, 1),

--Categoria 2
('Notebook Ultra', 'Notebook i7 16GB RAM SSD 512GB', 4599.90, 25, 2),
('Mouse Gamer', 'Mouse óptico com 6 botões programáveis', 249.90, 120, 2),
('Teclado Mecânico', 'Teclado mecânico retroiluminado', 349.90, 60, 2),
('Monitor 27"', 'Monitor Full HD 144Hz', 1299.90, 35, 2),
('HD Externo 1TB', 'HD externo USB 3.0 portátil', 399.90, 70, 2),

--Categoria 3
('Mesa Escritório', 'Mesa de escritório em MDF 140x70cm', 599.90, 20, 3),
('Cadeira Gamer', 'Cadeira ergonômica com apoio lombar', 899.90, 15, 3),
('Sofá 3 Lugares', 'Sofá retrátil em couro sintético', 1999.90, 10, 3),
('Estante 6 Prateleiras', 'Estante em madeira maciça', 799.90, 12, 3),
('Cama Box Casal', 'Cama box com colchão ortopédico', 1499.90, 8, 3),

--Categoria 4
('Dom Casmurro', 'Clássico da literatura brasileira', 39.90, 200, 4),
('A Arte da Guerra', 'Estratégias militares aplicáveis aos negócios', 29.90, 150, 4),
('O Poder do Hábito', 'Como criar e mudar hábitos', 49.90, 180, 4),
('1984', 'Romance distópico de George Orwell', 45.90, 120, 4),
('O Pequeno Príncipe', 'Clássico da literatura mundial', 35.90, 250, 4),

--Categoria 5
('Bicicleta Mountain Bike', 'Bicicleta aro 29 com 21 marchas', 1999.90, 18, 5),
('Tênis Corrida', 'Tênis para corrida com amortecimento', 299.90, 50, 5),
('Halteres 5kg', 'Par de halteres de 5kg cada', 99.90, 80, 5),
('Bola de Futebol', 'Bola oficial tamanho 5', 89.90, 100, 5),
('Raquete Tênis', 'Raquete profissional carbono', 499.90, 25, 5);