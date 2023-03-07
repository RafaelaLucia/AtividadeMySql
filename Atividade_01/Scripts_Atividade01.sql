
-- Criando a Database servicos_Rh
CREATE DATABASE servicos_Rh;
use servicos_Rh;

-- Criando a tabela tb_colaboradores com seus respectivos atributos
CREATE TABLE tb_colaboradores(
    id bigint auto_increment PRIMARY KEY, 
    nome varchar(255) not null,
    cargo varchar(255) not null,
    departamento varchar(255) not null,
    salario decimal not null
);

-- Inserindo dados na tabela tb_colaboradores
INSERT INTO tb_colaboradores(nome, cargo, departamento, salario) 
values ("Lorena Orsi","Desenvolvedora Júnior","Desenvolvimento", 5100.00),
("Arthur Cervero", "Analista de Marketing", "Marketing", 5000.00),
("Giovanna Tezoni","Analista de Recursos Humanos","Recursos Humanos", 4500.00),
("Marília Pereira","Estagiária de Recursos Humanos","Recursos Humanos", 2000.00),
("Jonathan de Souza","Assistente Administrativo", "Administração", 1500.00),
("Júlia Dias","Gerente de Vendas", "Vendas", 12000.00);

-- Mostrar Todos
SELECT * FROM tb_colaboradores;

-- Mostrar Todos que possuem salário maior que R$2000,00
SELECT * FROM tb_colaboradores WHERE salario > 2000;

-- Mostrar Todos que possuem salário menor que R$2000,00
SELECT * FROM tb_colaboradores WHERE salario < 2000;

-- Atualizar salário do usuário de id 5 para R$2100,00
UPDATE tb_colaboradores SET salario = 2100.00 WHERE id = 5; 