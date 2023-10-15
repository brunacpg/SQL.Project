1.
a) 

CREATE TABLE Usuarios (
  usuario_id INT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL,
  empresa_id INT NOT NULL,
  PRIMARY KEY (usuario_id),
  FOREIGN KEY (empresa_id) REFERENCES Empresas (empresa_id)
);

 CREATE TABLE Empresas (
  empresa_id INT NOT NULL AUTO_INCREMENT,
  nome_empresa VARCHAR(255) NOT NULL,
  endereço VARCHAR(255) NOT NULL,
  PRIMARY KEY (empresa_id)
);

  CREATE TABLE PesquisaClima (
  pesquisa_id INT NOT NULL AUTO_INCREMENT,
  usuario_id INT NOT NULL,
  satisfação INT NOT NULL,
  comentário VARCHAR(255) NOT NULL,
  PRIMARY KEY (pesquisa_id),
  FOREIGN KEY (usuario_id) REFERENCES Usuarios (usuario_id)

b) INSERT INTO Usuarios (nome, email, empresa_id)
VALUES
  ('Bruna Goncalves', 'brunacpg@outlook.com.br', 1),
  ('Bruna Peixoto', 'gpcbruna@gmail.com', 2),
  ('Bruna Cristina', 'bruna.c.p.g@gmail.com', 1);

  c) INSERT INTO PesquisaClima (usuario_id, satisfação, comentário)
VALUES
  (5, 4, 'Estou totalmente satisfeito com o meu trabalho.'),
  (1, 2, 'Estou totalmente insatisfeito com a minha remuneração.');

2.
a) SELECT
  nome,
  email,
  empresa_id
FROM
  Usuarios
WHERE
  empresa_id = 1;

  b) SELECT
  Usuarios.nome,
  Empresas.nome_empresa,
  PesquisaClima.satisfação
FROM
  Usuarios
JOIN Empresas ON Usuarios.empresa_id = Empresas.empresa_id
LEFT JOIN PesquisaClima ON Usuarios.usuario_id = PesquisaClima.usuario_id;

c) SELECT
  nome,
  satisfação
FROM
  PesquisaClima
ORDER BY
  satisfação DESC
LIMIT 1;

d) SELECT
  Empresas.nome_empresa,
  AVG(PesquisaClima.satisfação) AS média_satisfação
FROM
  Usuarios
JOIN Empresas ON Usuarios.empresa_id = Empresas.empresa_id
JOIN PesquisaClima ON Usuarios.usuario_id = PesquisaClima.usuario_id
GROUP BY
  Empresas.nome_empresa;
