/* Considerando o que vc aprendeu sobre performance, resolva os exercicios abaixo */

USE EXERCICIO;

SELECT COUNT(*) FROM FUNCIONARIOS;

--Traga os funcionarios que trabalhem
--no departamento de filmes OU no
--departamento de roupas
SELECT
    IDFUNCIONARIO,
    NOME,
    EMAIL,
    SEXO,
    DEPARTAMENTO,
    ADMISSAO,
    SALARIO,
    CARGO,
    IDREGIAO
FROM
    FUNCIONARIOS
WHERE DEPARTAMENTO = 'FILMES' 
OR DEPARTAMENTO = 'ROUPAS';


--O gestor de marketing pediu a lista das funcionarias (AS) = FEMININO que trabalhem no departamento 
--de filmes ou no departamento lar. Ele necessita enviar um email para as colaboradoras
--desses dois setores. OR +  AND *
SELECT
    NOME,
    EMAIL,
    SEXO,
    DEPARTAMENTO
FROM
    FUNCIONARIOS
WHERE
    SEXO = 'FEMININO' 
AND (DEPARTAMENTO = 'FILMES' OR DEPARTAMENTO = 'LAR');


--Traga os funcionarios do sexo masculino
--ou os funcionarios que trabalhem no setor Jardim
SELECT * FROM FUNCIONARIOS
WHERE
SEXO = 'Masculino' OR
DEPARTAMENTO = 'Jardim';