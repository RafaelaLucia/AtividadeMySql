
-- Criando a Database db_ecommerce
CREATE DATABASE db_ecommerce;
use db_ecommerce;

-- Criando a tabela tb_produtos com seus respectivos atributos
CREATE TABLE tb_produtos(
    id bigint auto_increment PRIMARY KEY, 
    nome varchar(255) not null,
	preco decimal not null,
    descricao varchar(255) not null,
    marca varchar(255) not null,
    quantidade_Estoque bigint not null
);

-- Inserindo dados na tabela tb_colaboradores
INSERT INTO tb_produtos(nome, preco, descricao, marca, quantidade_Estoque) 
values ("Balança Digital de Cozinha", 18.00 ,"Cor: Branca, Limite de Peso: 10Kg, Vidro temperado", "SF-400", 200),
("Headphone Wireless", 94.34 ,"Cor: Preta, Sem Fio - Modelo TAH1205BK/00", "PHILIPS", 100),
("Ventilador de Mesa", 139.90 ,"Cor: Preta ou Prata, Fonte de Energia Elétrica, 3 velocidades - 6 lâminas - 110 volts", "MONDIAL", 50),
("Console Playstation®5", 4550.00 ,"Leitor de BluRay, E/S Integrada - SSD Ultrarápido", "Sony", 20),
("Monitor UltraWide", 1495.00 ,"25 Polegadas, Resolução 2560x1080 - VGA e HDMI - Taxa atualização 120", "LG", 1000),
("Iphone 11", 2881.80 ,"Cores: Branco/Preto/Vermelho - SO IOS 14 - 4G 64GB", "Apple", 720),
("Livro Introdução à Programação Com Phyton: Algoritmos e Lógica de Programação Para Iniciantes", 49.90 ,"328 páginas - Idioma Português - Data de Lançamento: 08/01/2019 - Dimensões 23.4 x 17.2 x 2 cm", "Novatec Editora", 123),
("Relógio Inteligente Smartwatch", 165.90 ,"Cor: Preto - 49 Milímetros - Bluethoot, NFC, GPS - À prova d'água", "Shopmix", 10);

-- Mostrar Todos
SELECT * FROM tb_produtos;

-- Mostrar Todos que possuem preço maior que R$500,00
SELECT * FROM tb_produtos WHERE preco > 500;

-- Mostrar Todos que possuem preço menor que R$500,00
SELECT * FROM tb_produtos WHERE preco < 500;

-- Atualizar quantidade do item de id 8 para 500
UPDATE tb_produtos SET quantidade_Estoque = 500 WHERE id = 8; 