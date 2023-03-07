
-- Criando a Database escolaGen
CREATE DATABASE escolaGen;
use escolaGen;

-- Criando a tabela tb_estudantes com seus respectivos atributos
CREATE TABLE tb_estudantes(
    id bigint auto_increment PRIMARY KEY, 
    nome varchar(255) not null,
    curso varchar(255) not null,
    frequencia varchar(255) not null,
    email varchar(300) not null,
    mediaNotas decimal not null
);

-- Inserindo dados na tabela tb_estudantes
INSERT INTO tb_estudantes(nome, curso, frequencia,email, mediaNotas) 
values ("Lorena Orsi","Análise e Desenvolvimento de Sistemas", 85 , "loreorsi@gmail.com",7.8),
("Carolina Zaghetti", "Redes de Computadores", 92,"carolzz@outlook.com", 10),
("Giovanna Tezoni","Análise e Desenvolvimento de Sistema",98, "tezoniGi@gmail.com",9.2),
("Andre Felipe","Redes de Computadores",94, "meunomeeandre@gmail.com", 5.4),
("Rafael Ximenes","CyberSegurança", 84.0,"xinim@outlook.com", 8),
("Matheus Neves","CyberSeguranca", 90.0, "nevesmatias@outlook.com",6);

-- Mostrar Todos
SELECT * FROM tb_estudantes;

-- Mostrar Todos que possuem média de nota maior que 7
SELECT * FROM tb_estudantes WHERE mediaNotas > 7;

-- Mostrar Todos que possuem média de nota menor que 7
SELECT * FROM tb_estudantes WHERE mediaNotas < 7;

-- Atualizar nota do estudande de id 6 para 8.2
UPDATE tb_estudantes SET mediaNotas = 8.2 WHERE id = 6; 