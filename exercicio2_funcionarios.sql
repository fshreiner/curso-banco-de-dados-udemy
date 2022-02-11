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
WHERE DEPARTAMENTO = 'ROUPAS' 
OR DEPARTAMENTO = 'FILMES';


--O gestor de marketing pediu a lista das funcionarias (AS) = FEMININO que trabalhem no departamento 
--de filmes ou no departamento lar. Ele necessita enviar um email para as colaboradoras
--desses dois setores. OR +  AND *
SELECT * FROM FUNCIONARIOS
WHERE
( DEPARTAMENTO = 'Lar' AND SEXO = 'Feminino' )
OR
( DEPARTAMENTO = 'Filmes' AND SEXO = 'Feminino' );


--Traga os funcionarios do sexo masculino
--ou os funcionarios que trabalhem no setor Jardim
SELECT * FROM FUNCIONARIOS
WHERE
SEXO = 'Masculino' OR
DEPARTAMENTO = 'Jardim';