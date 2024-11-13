-- 1

SELECT
	Nome,
	Ano
FROM Filmes

-- 2
SELECT
	Nome,
	Ano
FROM Filmes
ORDER BY Ano ASC

-- 3
SELECT * FROM Filmes
WHERE Nome = 'De Volta para o Futuro'

-- 4
SELECT * FROM Filmes
WHERE Ano = 1997

-- 5
SELECT * FROM Filmes
WHERE Ano > 2000

-- 6
SELECT * FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao ASC

-- 7
SELECT Ano, COUNT(*) AS Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC

-- 8
SELECT * FROM Atores
WHERE Genero = 'M'

-- 9
SELECT * FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome

-- 10
SELECT f.Nome AS Nome, g.Genero AS Genero
FROM Filmes f
JOIN FilmesGenero fg ON f.Id = fg.IdFilme
JOIN Generos g ON fg.IdGenero = g.Id

-- 11
SELECT f.Nome AS Nome, g.Genero AS Genero
FROM Filmes f
JOIN FilmesGenero fg ON f.Id = fg.IdFilme
JOIN Generos g ON fg.IdGenero = g.Id
WHERE g.Genero = 'Mistério' 

-- 12
SELECT f.Nome AS Nome, a.PrimeiroNome AS PrimeiroNome, a.UltimoNome AS UltimoNome, ef.Papel AS Papel
FROM Filmes f
JOIN ElencoFilme ef ON f.Id = ef.IdFilme
JOIN Atores a ON ef.IdAtor = a.Id