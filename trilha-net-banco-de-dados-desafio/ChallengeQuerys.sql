-- 1 -> Busca o nome e ano
SELECT
    Nome,
    ano
FROM Filmes

-- 2 -> Buscar nome e ano dos filmes, ordenados em ordem crescente
-- por ano
SELECT
    Nome,
    Ano,
    Duracao
FROM Filmes
ORDER BY Ano ASC

-- 3 -> Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração
SELECT
    Nome,
    Ano,
    Duracao
FROM Filmes
WHERE Nome = 'De Volta para o Futuro'

-- 4 -> Busca filmes lançados em 1997
SELECT
    Nome,
    Ano,
    Duracao
FROM Filmes
WHERE Ano = 1997

-- 5 -> Busca os filmes lançados após o ano de 2000
SELECT
    Nome,
    Ano,
    Duracao
FROM Filmes
WHERE Ano > 2000

-- 6 -> Busca os filmes com duração maior que 100 e menos que 150 minutos
-- Os filmes são ordenados pela duração em ordem crescente.
SELECT
    Nome,
    Ano,
    Duracao
FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
GROUP BY Duracao ASC

-- 7 -> Busca a quantidade de filmes lançados em cada ano
-- agrupados por ano, ordenados por duração em ordem decrescente
SELECT
    Ano,
    COUNT(*) Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC

-- 8 -> Busca por atores do gênero Masculino
-- Retornando PrimeiroNome, UltimoNome
SELECT *
FROM Atores
WHERE Genero = 'M'

-- 9 -> Busca por atrizes do gênero Feminino
-- Retorna o PrimeiroNome, UltimoNome ordenado por PrimeiroNome
SELECT *
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome ASC

-- 10 -> Busca nome do Filme e o Gênero
SELECT
    F.Nome
    G.Genero
FROM Filmes AS F
INNER JOIN FilmesGenero AS FG
    ON F.Id = FG.IdFilme
INNER JOIN Generos AS G
    ON G.Id = FG.IdGenero

-- 11 -> Busca pelo nome do Filme e o gênero do tipo "Mistério"
SELECT
    F.Nome,
    G.Genero
FROM FILMES AS F
INNER JOIN FilmesGenero AS FG
    ON F.id = FG.IdFilme
INNER JOIN Genero AS G
    ON G.Id = FG.IdGenero
WHERE G.Genero = 'Mistério'

-- 12 -> Busco o nome do filme e os atores
-- traz o PrimeiroNome, UltimoNome e o Papel
SELECT 
	F.Nome,
	A.PrimeiroNome,
	A.UltimoNome,
	EF.Papel
FROM Filmes AS F
INNER JOIN ElencoFilme AS EF
	ON F.Id = EF.IdFilme
INNER JOIN Atores AS A
	ON A.Id = EF.IdAtor