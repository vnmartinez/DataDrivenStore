-- Categorias
INSERT INTO categorias (nome, descricao) VALUES
('Eletr�nicos', 'Dispositivos eletr�nicos e acess�rios'),
('Inform�tica', 'Computadores, notebooks e perif�ricos'),
('M�veis', 'M�veis para casa e escrit�rio'),
('Livros', 'Livros de diversos g�neros'),
('Esportes', 'Artigos esportivos e equipamentos');

-- Clientes
INSERT INTO clientes (nome, email, telefone, endereco) VALUES
('Jo�o Silva', 'joao.silva@email.com', '(11) 99999-9999', 'Rua das Flores, 123 - S�o Paulo/SP'),
('Maria Oliveira', 'maria.oliveira@email.com', '(21) 88888-8888', 'Avenida Brasil, 456 - Rio de Janeiro/RJ'),
('Carlos Souza', 'carlos.souza@email.com', '(31) 77777-7777', 'Rua da Paz, 789 - Belo Horizonte/MG'),
('Ana Costa', 'ana.costa@email.com', '(41) 66666-6666', 'Alameda Santos, 321 - Curitiba/PR'),
('Pedro Santos', 'pedro.santos@email.com', '(51) 55555-5555', 'Rua dos Andradas, 654 - Porto Alegre/RS'),
('Juliana Pereira', 'juliana.pereira@email.com', '(81) 44444-4444', 'Avenida Boa Viagem, 987 - Recife/PE'),
('Marcos Lima', 'marcos.lima@email.com', '(71) 33333-3333', 'Rua Chile, 159 - Salvador/BA'),
('Fernanda Rocha', 'fernanda.rocha@email.com', '(85) 22222-2222', 'Avenida Beira Mar, 753 - Fortaleza/CE'),
('Ricardo Alves', 'ricardo.alves@email.com', '(48) 11111-1111', 'Rua das Palmeiras, 951 - Florian�polis/SC'),
('Patr�cia Nunes', 'patricia.nunes@email.com', '(62) 10101-0101', 'Avenida Goi�s, 357 - Goi�nia/GO');

-- Produtos
INSERT INTO produtos (nome, descricao, preco, estoque, categoria_id) VALUES
--Categoria 1
('Smartphone X', 'Smartphone top de linha com c�mera de 48MP', 2999.90, 50, 1),
('Fone Bluetooth', 'Fone de ouvido sem fio com cancelamento de ru�do', 499.90, 100, 1),
('Smart TV 55"', 'TV 4K HDR com Android TV integrado', 3499.90, 30, 1),
('Tablet Pro', 'Tablet com tela de 10.1" e caneta stylus', 1899.90, 40, 1),
('Caixa de Som', 'Caixa de som port�til � prova d''�gua', 399.90, 80, 1),

--Categoria 2
('Notebook Ultra', 'Notebook i7 16GB RAM SSD 512GB', 4599.90, 25, 2),
('Mouse Gamer', 'Mouse �ptico com 6 bot�es program�veis', 249.90, 120, 2),
('Teclado Mec�nico', 'Teclado mec�nico retroiluminado', 349.90, 60, 2),
('Monitor 27"', 'Monitor Full HD 144Hz', 1299.90, 35, 2),
('HD Externo 1TB', 'HD externo USB 3.0 port�til', 399.90, 70, 2),

--Categoria 3
('Mesa Escrit�rio', 'Mesa de escrit�rio em MDF 140x70cm', 599.90, 20, 3),
('Cadeira Gamer', 'Cadeira ergon�mica com apoio lombar', 899.90, 15, 3),
('Sof� 3 Lugares', 'Sof� retr�til em couro sint�tico', 1999.90, 10, 3),
('Estante 6 Prateleiras', 'Estante em madeira maci�a', 799.90, 12, 3),
('Cama Box Casal', 'Cama box com colch�o ortop�dico', 1499.90, 8, 3),

--Categoria 4
('Dom Casmurro', 'Cl�ssico da literatura brasileira', 39.90, 200, 4),
('A Arte da Guerra', 'Estrat�gias militares aplic�veis aos neg�cios', 29.90, 150, 4),
('O Poder do H�bito', 'Como criar e mudar h�bitos', 49.90, 180, 4),
('1984', 'Romance dist�pico de George Orwell', 45.90, 120, 4),
('O Pequeno Pr�ncipe', 'Cl�ssico da literatura mundial', 35.90, 250, 4),

--Categoria 5
('Bicicleta Mountain Bike', 'Bicicleta aro 29 com 21 marchas', 1999.90, 18, 5),
('T�nis Corrida', 'T�nis para corrida com amortecimento', 299.90, 50, 5),
('Halteres 5kg', 'Par de halteres de 5kg cada', 99.90, 80, 5),
('Bola de Futebol', 'Bola oficial tamanho 5', 89.90, 100, 5),
('Raquete T�nis', 'Raquete profissional carbono', 499.90, 25, 5);