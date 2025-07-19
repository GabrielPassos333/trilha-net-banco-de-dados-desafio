--1 - Buscar o nome e ano dos filmes
SELECT
	Nome,
	Ano
FROM Filmes

--2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
SELECT
	Nome,
	Ano,
	Duracao
FROM Filmes
Order By ano

--3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração
SELECT nome,
	ano,
	duracao
FROM filmes
WHERE nome = 'De Volta para o Futuro'
	
--4 - Buscar os filmes lançados em 1997
SELECT * FROM filmes
WHERE ano = 1997

--5 - Buscar os filmes lançados APÓS o ano 2000
SELECT * FROM filmes
WHERE ano > 2000

--6 - Buscar os filmes com a duracao maior que 100 e menor que 150, 
--ordenando pela duracao em ordem crescente
SELECT 
	nome,
	ano,
	duracao
	FROM filmes
where duracao > 100 and duracao <150
order by duracao ASC

--7 - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, 
--ordenando pela duracao em ordem decrescente
SELECT Ano, COUNT(*) AS QuantidadeFilmes
FROM Filmes
GROUP BY Ano
ORDER BY COUNT(*) DESC;

--8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome
SELECT PrimeiroNome, UltimoNome
FROM Atores
WHERE Genero = 'M';

--9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, 
--e ordenando pelo PrimeiroNome
SELECT 
	PrimeiroNome, 
	UltimoNome
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome ASC;

--10 - Buscar o nome do filme e o gênero
SELECT f.Nome AS 
	NomeFilme, 
	g.Genero 
	AS 
	GeneroFilme
FROM Filmes f
JOIN FilmesGenero fg ON f.Id = fg.IdFilme
JOIN Generos g ON fg.IdGenero = g.Id;

--11 - Buscar o nome do filme e o gênero do tipo "Mistério"
SELECT f.Nome AS 
	NomeFilme, 
	g.Genero AS GeneroFilme
FROM Filmes f
JOIN FilmesGenero fg ON f.Id = fg.IdFilme
JOIN Generos g ON fg.IdGenero = g.Id
WHERE g.Genero = 'Mistério';

--12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
SELECT f.Nome AS 
	NomeFilme, 
	a.PrimeiroNome, 
	a.UltimoNome, 
	ef.Papel
FROM Filmes f
JOIN ElencoFilme ef ON f.Id = ef.IdFilme
JOIN Atores a ON ef.IdAtor = a.Id;
