-- Active: 1787702169376@@127.0.0.1@5432@bd_aula@public

DROP TABLE aluno;
DROP TABLE curso;


CREATE TABLE curso(
    id_curso INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    nome VARCHAR(60) NOT NULL UNIQUE
);

CREATE TABLE aluno(
    id_aluno INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    nome VARCHAR(80) NOT NULL,
    id_curso INTEGER NOT NULL REFERENCES curso(id_curso)
);


SELECT * FROM curso;

SELECT * FROM aluno;

INSERT INTO curso (nome) VALUES
('Sistemas de Informacao'),
('Administracao'),
('Direito'),
('Ciencia da Computacao');


INSERT INTO aluno (nome, id_curso) VALUES
('Ana Beatriz Souza', 1),
('Carlos Henrique Lima', 1),
('Daniela Martins', 2),
('Eduardo Pereira', 3),
('Fernanda Rocha', 1);


SELECT
    id_aluno AS id,
    nome AS alunos,
    id_curso
FROM
    aluno
ORDER BY
    nome ASC;


SELECT
    id_curso AS id,
    nome AS cursos
FROM
    curso
ORDER BY
    nome;


SELECT
    nome,
    id_curso
FROM
    aluno
WHERE
    id_curso = 1;


SELECT
    c.nome AS curso,
    c.id_curso
FROM
    curso c
WHERE
    c.nome = 'Sistemas de Informacao';


SELECT table_name,
       column_name,
       data_type,
       character_maximum_length AS tamanho,
       is_nullable              AS aceita_nulo,
       is_identity              AS e_identidade
FROM information_schema.columns
WHERE table_schema = 'public'
  AND table_name IN ('curso', 'aluno')
ORDER BY table_name, ordinal_position;


SELECT indexname, indexdef FROM pg_indexes WHERE tablename = 'curso';


--Alunos e os curso
SELECT
    a.nome AS alunos,
    c.nome AS cursos
FROM
    aluno a
    JOIN
        curso c
    ON
        c.id_curso = a.id_curso
ORDER BY
    c.nome DESC;



--Quantidade de alunos por curso
SELECT
    c.nome AS cursos,
    COUNT(a.id_aluno) AS qtd_alunos
FROM
    curso c
    JOIN
        aluno a
    ON
        a.id_curso = c.id_curso
GROUP BY
    c.nome
ORDER BY
    qtd_alunos DESC;

DROP TABLE IF EXISTS notas_alunos;

CREATE TABLE notas_alunos(
    id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    aluno_nome TEXT NOT NULL,
    turma TEXT NOT NULL,
    disciplina TEXT NOT NULL,
    nota INTEGER NOT NULL,
    faltas INTEGER NOT NULL,
    data_avaliacao DATE NOT NULL
);

SELECT * FROM notas_alunos;

INSERT INTO notas_alunos (aluno_nome, turma, disciplina, nota, faltas, data_avaliacao) VALUES
('Aluno 01','A','Matematica', 85, 2, '2025-09-01'),
('Aluno 02','A','Matematica', 72, 0, '2025-09-01'),
('Aluno 03','A','Matematica', 90, 1, '2025-09-01'),
('Aluno 04','A','Matematica', 60, 3, '2025-09-01'),
('Aluno 05','A','Matematica', 55, 0, '2025-09-01'),
('Aluno 06','B','Matematica', 78, 2, '2025-09-02'),
('Aluno 07','B','Matematica', 88, 1, '2025-09-02'),
('Aluno 08','B','Matematica', 95, 0, '2025-09-02'),
('Aluno 09','B','Matematica', 47, 4, '2025-09-02'),
('Aluno 10','B','Matematica', 68, 2, '2025-09-02'),
('Aluno 11','C','Portugues', 74, 1, '2025-09-03'),
('Aluno 12','C','Portugues', 81, 0, '2025-09-03'),
('Aluno 13','C','Portugues', 66, 2, '2025-09-03'),
('Aluno 14','C','Portugues', 59, 3, '2025-09-03'),
('Aluno 15','C','Portugues', 90, 0, '2025-09-03'),
('Aluno 16','A','Portugues', 85, 0, '2025-09-04'),
('Aluno 17','A','Portugues', 77, 1, '2025-09-04'),
('Aluno 18','A','Portugues', 92, 0, '2025-09-04'),
('Aluno 19','A','Portugues', 45, 5, '2025-09-04'),
('Aluno 20','A','Portugues', 69, 2, '2025-09-04'),
('Aluno 21','B','Sistemas', 88, 0, '2025-09-05'),
('Aluno 22','B','Sistemas', 78, 2, '2025-09-05'),
('Aluno 23','B','Sistemas', 83, 1, '2025-09-05'),
('Aluno 24','B','Sistemas', 91, 0, '2025-09-05'),
('Aluno 25','B','Sistemas', 55, 3, '2025-09-05'),
('Aluno 26','C','Sistemas', 66, 2, '2025-09-06'),
('Aluno 27','C','Sistemas', 72, 1, '2025-09-06'),
('Aluno 28','C','Sistemas', 79, 0, '2025-09-06'),
('Aluno 29','C','Sistemas', 84, 0, '2025-09-06'),
('Aluno 30','C','Sistemas', 90, 0, '2025-09-06'),
('Aluno 31','A','Matematica', 82, 1, '2025-09-07'),
('Aluno 32','A','Matematica', 74, 2, '2025-09-07'),
('Aluno 33','B','Portugues', 69, 1, '2025-09-07'),
('Aluno 34','B','Portugues', 71, 0, '2025-09-07'),
('Aluno 35','C','Matematica', 95, 0, '2025-09-08'),
('Aluno 36','C','Matematica', 58, 4, '2025-09-08'),
('Aluno 37','A','Sistemas', 63, 2, '2025-09-08'),
('Aluno 38','A','Sistemas', 77, 1, '2025-09-08'),
('Aluno 39','B','Sistemas', 85, 0, '2025-09-09'),
('Aluno 40','B','Sistemas', 49, 5, '2025-09-09'),
('Aluno 41','C','Portugues', 88, 0, '2025-09-09'),
('Aluno 42','C','Portugues', 82, 1, '2025-09-09'),
('Aluno 43','A','Matematica', 70, 2, '2025-09-10'),
('Aluno 44','A','Matematica', 68, 3, '2025-09-10'),
('Aluno 45','B','Portugues', 95, 0, '2025-09-10'),
('Aluno 46','B','Portugues', 52, 4, '2025-09-10'),
('Aluno 47','C','Sistemas', 76, 1, '2025-09-11'),
('Aluno 48','C','Sistemas', 89, 0, '2025-09-11'),
('Aluno 49','A','Sistemas', 94, 0, '2025-09-11'),
('Aluno 50','B','Matematica', 61, 2, '2025-09-11');

SELECT 
    aluno_nome,
    turma,
    disciplina,
    nota,
    faltas
FROM
    notas_alunos;

SELECT 
    nota,
    disciplina,
    aluno_nome
FROM 
   notas_alunos
ORDER BY
    nota ASC
LIMIT
   10;


SELECT
   disciplina, aluno_nome, turma, nota
FROM
    notas_alunos
WHERE
    nota >= 90
LIMIT
  7;



SELECT
   disciplina, aluno_nome, turma, nota
FROM
    notas_alunos
WHERE
    nota <= 59
ORDER BY
    nota DESC;



SELECT
   disciplina, aluno_nome, turma, nota
FROM
    notas_alunos
WHERE
    nota >= 70 AND disciplina = 'Matematica'
ORDER BY
    nota DESC;



SELECT
   disciplina, aluno_nome, turma, nota
FROM
    notas_alunos
WHERE
    nota >= 70 AND disciplina = 'Portugues'
ORDER BY
    nota DESC;


SELECT
    disciplina,
    AVG(nota) AS "Média_Notas"
FROM
    notas_alunos

GROUP BY
  disciplina;


SELECT
    disciplina,
    COUNT(*) AS "Avaliações",
    ROUND(AVG(nota), 2) AS "Média"
FROM
    notas_alunos
GROUP BY
     disciplina;