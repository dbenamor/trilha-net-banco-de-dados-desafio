--1 - Buscar o nome e ano dos filmes--
SELECT Nome, Ano FROM Filmes

--2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano--
SELECT Nome, Ano FROM Filmes ORDER BY Ano ASC

--3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a dura��o--
SELECT Nome, Ano, Duracao FROM Filmes WHERE Nome LIKE '%Volta%'

--4 - Buscar os filmes lan�ados em 1997--
SELECT Nome, Ano, Duracao FROM Filmes WHERE Ano = '1997'

--5 - Buscar os filmes lan�ados AP�S o ano 2000--
SELECT Nome, Ano, Duracao FROM Filmes WHERE Ano > '2000'

--6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente--
SELECT Nome, Ano, Duracao FROM Filmes WHERE Duracao > 100 AND Duracao < 150 ORDER BY DURACAO ASC

--7 - Buscar a quantidade de filmes lan�adas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente--
SELECT Ano, COUNT(Ano) AS 'Qtd' FROM Filmes GROUP BY Ano ORDER BY Qtd DESC

--8 - Buscar os Atores do g�nero masculino, retornando o PrimeiroNome, UltimoNome--
SELECT PrimeiroNome, UltimoNome, Genero FROM Atores WHERE Genero = 'M'

--9 - Buscar os Atores do g�nero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome--
SELECT PrimeiroNome, UltimoNome, Genero FROM Atores WHERE Genero = 'F' ORDER BY 1

--10 - Buscar o nome do filme e o g�nero--
SELECT A.Nome, C.Genero FROM Filmes A INNER JOIN FilmesGenero B ON B.idFilme = A.Id INNER JOIN Generos C ON C.Id = B.IdGenero

--11 - Buscar o nome do filme e o g�nero do tipo "Mist�rio"--
SELECT A.Nome, C.Genero FROM Filmes A INNER JOIN FilmesGenero B ON B.idFilme = A.Id INNER JOIN Generos C ON C.Id = B.IdGenero WHERE C.Genero = 'Mist�rio'

--12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel--
SELECT C.Nome, B.PrimeiroNome, B.UltimoNome, A.Papel FROM ElencoFilme A INNER JOIN Atores B ON B.Id = A.IdAtor INNER JOIN Filmes C ON C.Id = A.IdFilme
