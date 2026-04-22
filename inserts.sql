-- Projeto: Sistema de Locadora
-- Desenvolvedora: Gabriela Darezzo

INSERT INTO artista VALUES
(1, 'Marisa Monte'),
(2,'Gilberto Gil'),
(3, 'Caetano Veloso'),
(4,'Milton Nascimento'),
(5, 'Legiao Urbana'),
(6, 'The Beatles'),
(7,'Rita Lee');

INSERT INTO gravadora VALUES 
(1, 'Polygram'),
(2, 'EMI'),
(3, 'Som Livre'),
(4, 'Sony Music');

INSERT INTO categoria VALUES
(1, 'MPB'),
(2, 'Trilha Sonora'),
(3, 'Rock Internacional'),
(4, 'Rock Nacional');

INSERT INTO estado VALUES
('SP','São Paulo'),
('MG', 'Minas Gerais'),
('RJ', 'Rio de Janeiro'),
('ES', 'Espírito Santo');

INSERT INTO cidade VALUES
(1, 'SP','São Paulo'),
(2, 'SP','Sorocaba'),
(3, 'SP','Jundiaí'),
(4,'SP','Americana'),
(5, 'SP','Araraquara'),
(6, 'MG','Ouro Preto'),
(7, 'ES','Cachoeiro de Itapemirim');

INSERT INTO cliente VALUES
(1, 1, 'José Nogueira', 'Rua A', 1500.00,'M'),
(2, 1, 'Angelo Pereira', 'Rua B', 2000.00, 'M'),
(3, 1, 'Além Mar Paranhos','Rua C',1500.00, 'M'),
(4, 1, 'Catarina Souza','Rua D', 892.00, 'F'),
(5, 1, 'Vagner Costa','Rua E', 950.00, 'M'),
(6, 2, 'Antenor da Costa','Rua F', 1582.00, 'M'),
(7, 2, 'Maria Amélia de Souza','Rua G', 1152.02, 'F'),
(8, 2, 'Paulo Roberto Silva','Rua H', 3250.00, 'M'),
(9, 3, 'Fátima Souza','Rua I', 632.00, 'F'),
(10, 3, 'Joel da Rocha','Rua J', 2000.00,'M');

INSERT INTO conjuge VALUES 
(1, 'Carla Nogueira', 2500.00, 'F'),
(2,'Emitia Pereira',5500.00,'F'),
(6,'Altiva da Costa',3000.00,'F'),
(7,'Carlos de Souza',3250.00,'M');

INSERT INTO funcionario VALUES 
(1, 'Vânia Gabriela Pereira', 'Rua A', 2500.00, 'F'),
(2, 'Norberto Pereira da Silva', 'Rua B', 300.00, 'M'),
(3,'Olavo Linhares', 'Rua C', 580.00, 'M'),
(4, 'Paula da Silva', 'Rua D', 3000.00, 'F'),
(5, 'Rolando Rocha', 'Rua E', 2000.00, 'M');

INSERT INTO dependente VALUES 
(1, 1, 'Ana Pereira', 'F'),
(2, 1, 'Roberto Pereira', 'M'),
(3, 1, 'Celso Pereira','M'),
(4, 3, 'Brisa Linhares','F'),
(5, 3, 'Mari Sol Linhares','F'),
(6, 4, 'Sônia da Silva','F');

INSERT INTO titulo VALUES 
(1, 1, 1,'Tribalistas', 30.00, 1500),
(2, 1, 2, 'Tropicália', 50.00, 500),
(3, 1, 1, 'Aquele Abraço', 50.00, 600),
(4,1, 2, 'Refazenda', 60.00, 1000),
(5, 1, 3, 'Totalmente Demais', 50.00, 2000),
(6, 1, 3, 'Travessia', 55.00, 500),
(7, 1, 2, 'Courage', 30.00, 200),
(8, 4, 3, 'Legião Urbana', 20.00, 100),
(9, 3, 2, 'The Beatles', 30.00, 300),
(10, 4, 1, 'Rita Lee', 30.00, 500);

INSERT INTO pedido VALUES 
(1, 1, 2, '2002-05-02', 1500.00),
(2, 3, 4, '2002-05-02', 50.00),
(3, 4, 5, '2002-06-02', 100.00),
(4, 1, 4, '2002-02-03', 200.00),
(5, 7, 5, '2002-03-03', 300.00),
(6, 4, 4, '2002-03-03', 100.00),
(7, 5, 5, '2002-03-03', 50.00),
(8, 8, 2, '2002-03-03', 50.00),
(9, 2, 2, '2002-03-03', 2000.00),
(10, 7, 1, '2002-03-03', 3000.00);

INSERT INTO titulo_artista VALUES
(2, 2),
(3, 2),
(4, 2),
(5, 3),
(6, 4),
(7, 4),
(8, 5),
(9, 6),
(10, 7);

INSERT INTO tt_pedido VALUES
(1, 1, 2, 30.00),
(1, 2, 3, 20.00),
(2, 1, 1, 50.00),
(2, 2, 3, 30.00),
(3, 1, 2, 40.00),
(4, 2, 3, 20.00),
(5, 1, 2, 25.00),
(6, 2, 3, 30.00),
(6, 3, 2, 35.00),
(7, 4, 1, 55.00);
