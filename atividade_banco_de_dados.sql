CREATE DATABASE ESCOLA;
USE ESCOLA;

CREATE TABLE ALUNO(
	PK_ID_ALUNO INT AUTO_INCREMENT PRIMARY KEY,
    NOME_ALUNO VARCHAR(100),
    DATA_NASCIMENTO_ALUNO DATE,
    CPF_ALUNO CHAR(11),
	GENERO_ALUNO ENUM('F', 'M', 'O'),
    ENDERECO_ALUNO VARCHAR(100)
);

INSERT INTO ALUNO(
NOME_ALUNO,
DATA_NASCIMENTO_ALUNO, 
CPF_ALUNO, 
GENERO_ALUNO, 
ENDERECO_ALUNO
) VALUES 
("JOAO DA SILVA", "20051008", "40598720302", "M", "AV. 9 DE JULHO"),
("GABRIEL DA SILVA", "20040908", "12345678909", "M", "AV. 90 DE JULHO"),
("VINICIUS DA SILVA", "20100808", "98765432100", "M", "AV. 22 DE JULHO"),
("GUILHERME DA SILVA", "20080708", "32165498711", "M", "AV. 10 DE JULHO"),
("DEBORA DA SILVA", "20090608", "45678912322", "F", "AV. 40 DE JULHO"),
("ARTHU DA SILVA", "20061108", "78912345633", "M", "AV. 5 DE JULHO"),
("DENIS DA SILVA", "20081208", "65432109844", "M", "AV. 6 DE JULHO"),
("CRISTIANO DA SILVA", "20111024", "23456789055", "M", "AV. 7 DE JULHO"),
("RODRIGO GOES DA SILVA", "20121031", "34567890166", "M", "AV. 8 DE JULHO"),
("LUCAS DA SILVA", "20081008", "87654321077", "M", "AV. 20 DE JULHO");

CREATE TABLE AULA(
	PK_ID_AULA INT AUTO_INCREMENT PRIMARY KEY,
    HORARIO_AULA TIME NOT NULL,
    DATA_AULA DATE NOT NULL,
    DURACAO_AULA INT NOT NULL,
    DISCIPLINA_AULA VARCHAR(50),
    DESCRICAO_AULA VARCHAR(100)
);

INSERT INTO AULA(
	HORARIO_AULA,
    DATA_AULA,
    DURACAO_AULA,
    DISCIPLINA_AULA,
    DESCRICAO_AULA
) VALUES 
("09:00:00", "2024-11-10", 90, "Introdução ao SQL", "Aula introdutória sobre SQL e bancos de dados."),
("10:30:00", "2024-11-11", 120, "Fundamentos de Programação", "Aprender os conceitos básicos de programação."),
("14:00:00", "2024-11-12", 90, "Desenvolvimento Web", "Aula sobre desenvolvimento de aplicações web."),
("08:00:00", "2024-11-13", 60, "Estruturas de Dados", "Introdução a estruturas de dados e algoritmos."),
("11:00:00", "2024-11-14", 120, "Algoritmos Avançados", "Estudo de algoritmos complexos e sua aplicação."),
("13:00:00", "2024-11-15", 90, "Banco de Dados Relacional", "Conceitos avançados de bancos de dados relacionais."),
("15:00:00", "2024-11-16", 120, "Programação Orientada a Objetos", "Fundamentos de programação orientada a objetos."),
("09:00:00", "2024-11-17", 90, "Testes de Software", "Aula sobre testes e qualidade de software."),
("10:30:00", "2024-11-18", 60, "Interface de Usuário", "Princípios de design de interface de usuário."),
("14:00:00", "2024-11-19", 90, "DevOps e Integração Contínua", "Introdução ao DevOps e práticas de integração contínua.");

create table Professor (
	pk_id_professor int auto_increment primary key,
    nome_do_professor varchar(50) not null,
    estado_civil_professor enum("Solteiro","Casado","Viuvo"),	
    mae_do_professor varchar(50),
    cpf_do_professor char(12),
    cidade_professor varchar(50),
    disciplina_professor varchar(50)
);

insert into Professor
(nome_do_professor, estado_civil_professor, mae_do_professor, cpf_do_professor,	cidade_professor, disciplina_professor) 
values	
('Ferrari da silva', 'Viuvo', 'Juliana', '512238173921', 'Sao paulo', 'Matematica'),
('Annita Marcone', 'Casado', 'Maria', '325961215817', 'Sao paulo', 'Historia'),
('CoblleBolt Fernando', 'Casado', 'Fernanda', '721514204613', 'Sao paulo', 'Portugues'),
('Bruce Wayne', 'Solteiro', 'Bianca', '141222518101', 'Sao paulo', 'Ciencias'),
('Robin da silva', 'Casado', 'Luana', '111623225147', 'Sao paulo', 'Biologia'),
('Messi da silva', 'Solteiro', 'Amanda', '942018122210', 'Sao paulo', 'Geografia'),
('Lautaro Martinez', 'Solteiro', 'Bruna', '121933251712', 'Sao paulo', 'Filosofia'),
('Angelica filho', 'Solteiro', 'Joana', '510132182024', 'Sao paulo', 'Sociologia'),
('Luciano Hulk', 'Solteiro', 'Joana', '236141203217', 'Sao paulo', 'Educacao fisica'),
('Post Malone', 'Solteiro', 'Bianca', '817251542201', 'Sao paulo', 'Quimica');

alter table Professor
change column cpf_do_professor cpf_professor varchar(15); /* alterando o tamanho do campo do CPF*/

insert into Professor /*Adicionado mais 3 registros*/
(nome_do_professor, estado_civil_professor, mae_do_professor, cpf_professor,cidade_professor, disciplina_professor) 
values	
('Rodri da Silva', 'Solteiro', 'Juliana', '512238173921123', 'Sao paulo', 'Matematica'),
('Vinicius Junior', 'Casado', 'Maria', '325961215817123', 'Sao paulo', 'Historia'),
('Cristiano Ronaldo', 'Casado', 'Fernanda', '721514204613123', 'Sao paulo', 'Portugues');

ALTER TABLE Professor DROP COLUMN cidade_professor; /*removendo a cidade*/

UPDATE PROFESSOR 
SET DISCIPLINA_PROFESSOR = 'Literatura' 
WHERE PK_ID_PROFESSOR = 9;

UPDATE PROFESSOR 
SET DISCIPLINA_PROFESSOR = 'Gramatica' 
WHERE PK_ID_PROFESSOR = 10;

UPDATE PROFESSOR 
SET DISCIPLINA_PROFESSOR = 'Historia' 
WHERE PK_ID_PROFESSOR = 11;

UPDATE PROFESSOR 
SET DISCIPLINA_PROFESSOR = 'Portugues' 
WHERE PK_ID_PROFESSOR = 12;

UPDATE PROFESSOR 
SET DISCIPLINA_PROFESSOR = 'Matematica' 
WHERE PK_ID_PROFESSOR = 13;

SELECT DISCIPLINA_PROFESSOR, NOME_DO_PROFESSOR FROM PROFESSOR;

DELETE FROM PROFESSOR
WHERE PK_ID_PROFESSOR IN (7, 10, 12);

alter table Professor
ADD column EMAIL varchar(100);

SET SQL_SAFE_UPDATES = 0;

UPDATE PROFESSOR 
SET EMAIL = 'Solicitação em andamento';

alter table Professor
change column  estado_civil_professor  estado_civil_professor varchar(10); /* alterando o tamanho do campo de estado civil*/

alter table Professor
ADD column formacao_professor varchar(50);

select * from professor;


start transaction; /* preparo para exclusão de registros */
	SET SQL_SAFE_UPDATES = 0; 
	delete from Paciente; /* Deletando TODOS OS REGISTROS da sua tabela */
	SET SQL_SAFE_UPDATES = 1;  
	select * from Paciente;
Rollback; /* volta atrás */
Commit; /* confirma a exclusão */ 





