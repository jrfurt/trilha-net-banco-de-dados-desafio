-- 1
SELECT
	nome,
	ano
FROM
	filmes;

-- 2
SELECT
	nome,
	ano
FROM
	filmes
ORDER BY 
	ano;

-- 3
SELECT
	nome,
	ano,
	duracao
FROM
	filmes
WHERE
	nome = 'de volta para o futuro';

-- 4
SELECT
	*
FROM
	filmes
WHERE
	Ano = 1997;	

-- 5
SELECT
	*
FROM
	filmes
WHERE
	ano > 2000;

-- 6
SELECT
	*
FROM
	filmes
WHERE
	duracao > 100
	AND duracao < 150
ORDER BY
	duracao;

-- 7
SELECT
	Ano,
	count(*) AS Quantidade
FROM
	filmes
GROUP BY
	ano
ORDER BY
	quantidade DESC;

-- 8
SELECT
	PrimeiroNome,
	UltimoNome
FROM
	atores
WHERE
	Genero = 'M'; 

-- 9
SELECT
	PrimeiroNome,
	UltimoNome
FROM
	atores
WHERE
	Genero = 'F'
ORDER BY
	PrimeiroNome;

-- 10
SELECT
	f.nome,
	g.genero
FROM
	filmesgenero f2
JOIN generos g ON
	g.Id = f2.IdGenero
JOIN filmes f ON
	f.Id = f2.IdFilme;

-- 11
SELECT
	f.nome,
	g.genero
FROM
	filmesgenero f2
JOIN generos g ON
	g.Id = f2.IdGenero
JOIN filmes f ON
	f.Id = f2.IdFilme
WHERE
	g.Genero = 'mistério';

-- 12
SELECT
	f.Nome,
	a.PrimeiroNome,
	a.UltimoNome,
	e.Papel 
FROM
	elencofilme e
JOIN atores a ON
	e.IdAtor = a.Id
JOIN filmes f ON
	e.IdFilme = f.Id;
