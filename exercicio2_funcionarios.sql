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







--EXERCICIOS DML

SELECT
	C.IDCLIENTE,
	C.NOME,
	C.SEXO,
	C.EMAIL,
	C.CPF,
	E.RUA,
	E.BAIRRO,
	E.CIDADE,
	E.ESTADO,
	T.TIPO,
	T.NUMERO

FROM
    CLIENTE C

INNER JOIN ENDERECO E
ON C.IDCLIENTE = E.ID_CLIENTE

INNER JOIN TELEFONE T
ON C.IDCLIENTE = T.ID_CLIENTE;



/* RELATORIO DE HOMENS */

SELECT
	C.IDCLIENTE,
	C.NOME,
	C.SEXO,
	C.EMAIL,
	C.CPF,
	E.RUA,
	E.BAIRRO,
	E.CIDADE,
	E.ESTADO,
	T.TIPO,
	T.NUMERO

FROM
    CLIENTE C

INNER JOIN ENDERECO E
ON C.IDCLIENTE = E.ID_CLIENTE

INNER JOIN TELEFONE T
ON C.IDCLIENTE = T.ID_CLIENTE

WHERE
    C.SEXO = 'M';


/* RELATORIO DE MULHERES */

SELECT
	C.IDCLIENTE,
	C.NOME,
	C.SEXO,
	C.EMAIL,
	C.CPF,
	E.RUA,
	E.BAIRRO,
	E.CIDADE,
	E.ESTADO,
	T.TIPO,
	T.NUMERO

FROM
    CLIENTE C

INNER JOIN ENDERECO E
ON C.IDCLIENTE = E.ID_CLIENTE

INNER JOIN TELEFONE T
ON C.IDCLIENTE = T.ID_CLIENTE

WHERE
    C.SEXO = 'F';


/* QUANTIDADE DE HOMENS E MULHERES */

SELECT COUNT(*) AS QUANTIDADE, SEXO
FROM CLIENTE
GROUP BY SEXO;

/* IDS E EMAIL DAS MULHERES QUE MOREM NO CENTRO DO RIO DE JANEIRO E 
NAO TENHAM CELULAR */

SELECT
    C.IDCLIENTE,
    C.EMAIL,
    C.NOME,
    C.SEXO

FROM   
    CLIENTE C

INNER JOIN ENDERECO E
ON C.IDCLIENTE = E.ID_CLIENTE

INNER JOIN TELEFONE T
ON C.IDCLIENTE = T.ID_CLIENTE

WHERE
    C.SEXO = 'F'
    AND E.BAIRRO = 'CENTRO'
    AND E.ESTADO = 'RJ'
    AND (T.TIPO = 'RES' OR T.TIPO = 'COM');




/* PARA UMA CAMPANHA DE MARKETING, O SETOR SOLICITOU UM
RELAT??RIO COM O NOME, EMAIL E TELEFONE CELULAR 
DOS CLIENTES QUE MORAM NO ESTADO DO RIO DE JANEIRO 
VOC?? TER?? QUE PASSAR A QUERY PARA GERAR O RELATORIO PARA
O PROGRAMADOR */

SELECT
	C.NOME,
	C.EMAIL,
	T.NUMERO AS CELULAR

FROM
	CLIENTE C

INNER JOIN ENDERECO E
ON C.IDCLIENTE = E.ID_CLIENTE

INNER JOIN TELEFONE T
ON C.IDCLIENTE = T.ID_CLIENTE

WHERE
	T.TIPO = 'CEL' AND E.ESTADO = 'RJ';




/* PARA UMA CAMPANHA DE PRODUTOS DE BELEZA, O COMERCIAL SOLICITOU UM
RELAT??RIO COM O NOME, EMAIL E TELEFONE CELULAR 
 DAS MULHERES QUE MORAM NO ESTADO DE S??O PAULO 
VOC?? TER?? QUE PASSAR A QUERY PARA GERAR O RELATORIO PARA
O PROGRAMADOR */

SELECT
	C.NOME,
	C.EMAIL,
	T.NUMERO AS CELULAR

FROM
	CLIENTE C

INNER JOIN ENDERECO E
ON C.IDCLIENTE = E.ID_CLIENTE

INNER JOIN TELEFONE T
ON C.IDCLIENTE = T.ID_CLIENTE

WHERE
	C.SEXO = 'F' AND T.TIPO = 'CEL' AND E.ESTADO = 'SP';
