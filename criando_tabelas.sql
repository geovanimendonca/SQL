CREATE TABLE Canal (
CanalID INT PRIMARY KEY,
Nome VARCHAR(150) NOT NULL,
ContagemInscritos INT DEFAULT 0,
DataCriacao DATETIME NOT NULL
)

SELECT *
FROM Canal

CREATE TABLE Video (
VideoId			INT PRIMARY KEY,
Nome			VARCHAR(150) NOT NULL,
Visualizações	INT DEFAULT 0,
Likes			INT DEFAULT 0,
Dislikes		INT DEFAULT 0,
Duração			INT NOT NULL,
CanalId			INT FOREIGN KEY REFERENCES Canal(CanalId)
)

SELECT *
FROM Video

CREATE TABLE GuardaRoupas(
GuardaRoupaId INT PRIMARY KEY,
Gavetas INT,
Portas INT,
Cabides INT
)

CREATE TABLE Roupas (
RoupaId  INT PRIMARY KEY,
Shorts INT,
Camisetas INT,
GuardaRoupaId INT FOREIGN KEY REFERENCES GuardaRoupas(GuardaRoupaID)
)