INSERT INTO UF(nome, sigla) VALUES
			  ('AMAZONAS', 'AM'),
              (NULL, 'PA'),
              ('CEARÁ', 'CE'),
              ('PERNAMBUCO', 'PE'),
              ('TOCANTINS', 'TO'),
              ('MATO GROSSO', 'MT'),
              ('SÃO PAULO', 'SP'),
              ('MINAS GERAIS', 'MG'),
              ('RIO GRANDE DO SUL', 'RS'),
              ('SANTA CATARINA', 'SC');
              
INSERT INTO MUNICIPIO (nome, UF_id) VALUES
					  ('Manaus', 1),
                      (NULL, 1),
                      ('Belém', 2),
                      ('Novo Progresso', 2),
                      ('Fortaleza', 3),
                      ('Juazeiro do Norte', 3),
                      ('Barbalho', 3),
                      ('Crato', 3),
                      ('Recife', 4),
                      ('Trindade', 4),
                      ('Palmas', 5),
                      ('Nazaré', 5),
                      ('Cuiabá', 6),
                      ('Água Boa', 6),
                      ('São Paulo', 7),
                      ('Osasco', 7),
                      ('Belo Horizonte', 8),
                      ('Campo Azul', 8),
                      ('Porto Alegre', 9),
                      ('Sertão', 9),
                      ('Florianopolis', 10),
                      ('Sertão', 10);

INSERT INTO CLIENTE(nome, logradouro, numero, bairro, MUNICIPIO_id, MUNICIPIO_UF_id)VALUES
				   ('Adriana Penteado','Rua Zuriel Lobato','348','SEABRA', 6, 3),
                   ('Bernardo Trindade','Rua Sabino Silva','986','CENTRO', 6, 3),
                   ('Graça Junqueira','Av. Belmiro Carneiro','937A','BAIXÃO', 6, 3),
                   ('Juliano Parahyba','Rua Raimunda da Silva','3572','LAGOA', 6, 3),
                   ('Eugênio Peres','Rua André Leão','876B','BRASÍLIA', 7, 3),
                   ('Amelia Carmerino','Rua Leite Neto','5737','CACIMBAS', 8, 3),
                   ('Francisco Silva','Av. Francisco Silva',NULL,'CENTRO', NULL, NULL),
                   ('Caetano Teles','Av. Delfina Caldas','945','CENTRO', 10, 4);
                   

INSERT INTO TIPO_PAGTO (tipo_pagto) VALUES
					   ('DINHEIRO'),
                       ('CARTÃO'),
                       ('BOLETO');
                     
INSERT INTO VENDA(dt_venda, TIPO_PAGTO_id, CLIENTE_id) VALUES
				 ('2019-11-06', 1, 1),
                 ('2019-11-06', 3, 2),
                 ('2019-11-16', 6, 1),
                 ('2019-11-16', 4, 3),
                 ('2019-11-26', 3, 3),
                 ('2019-11-26', 5, 2),
                 ('2019-11-26', 2, 1),
                 ('2019-12-01', 3, 1),
                 ('2019-12-01', 5, 3),
                 ('2019-12-06', 8, 2),
                 ('2019-12-06', 1, 2),
                 ('2019-12-06', 3, 3),
                 ('2019-12-06', 6, 2),
                 ('2019-12-06', 5, 2),
                 ('2019-12-16', 2, 3),
                 ('2019-12-16', 3, 3),
                 ('2019-12-16', 5, 1),
                 ('2019-12-26', 3, 3),
                 ('2019-12-26', 1, 3),
                 ('2019-12-26', 6, 2);

INSERT INTO DOCUMENTO (vr_documento, dt_venc, VENDA_id, VENDA_TIPO_PAGTO_id, CLIENTE_id) VALUES
					  (4.41, '2020-11-21', 4, 4, 4),
                      (129.10, '2020-11-26', 5, 3, 3),
                      (61.72, '2020-12-01', 9, 5, 5),
                      (98.40, '2020-12-06', 12, 3, 3),
                      (80.82, '2020-12-16', 15, 2, 2),
                      (31.84, '2020-12-25', 16, 3, 3),
                      (180.09, '2021-01-07', 18, 3, 3),
                      (7.74, '2021-03-26', 19, 1, 1);
                      
INSERT INTO PRODUTO (descricao, quant, valor, qt_minima, perecivel) VALUES
					('BAUDUCCO - BISCOITO WAFER', 100, 1.85, 10, TRUE),
                    ('BOMBRIL - ESPONJA DE AÇO', 200, 1.99, 20, FALSE),
                    ('COCA-COLA - REFRIGERANTE', 50, 6.50, 10, TRUE),
                    ('DANONINHO - PETIT SUISSE', 25, 5.99, 5, TRUE),
                    ('DONA BENTA - FARINHA DE TRIGO', 17, 5.99, 6, TRUE),
                    ('ELEFANTE - EXTRATO DE TOMATE', 12, 3.50, 5, TRUE),
                    ('HAVAIANAS - CHINELO', 15, 20.00, 10, FALSE),
                    ('KIBON - SORVETE', 9, 18.99, 10, TRUE),
                    ('KNORR - CALDO', 72, 1.47, 50, TRUE),
                    ('LUX - SABONETE EM BARRA', 48, 1.99, 20, FALSE),
                    ('MAGGI - SOPA', 4, 4.59, 8, TRUE),
                    ('NESCAFÉ - CAFÉ SOLÚVEL', 90, 3.55, 50, TRUE),
                    ('NESCAU - ACHOCOLATADO EM PÓ', 13, 7.70, 10, TRUE),
                    ('NISSIN - LÁMEN INSTANTÂNEO', 33, 1.29, 25, TRUE),
                    ('OMO - SABÃO EM PÓ', 26, 9.70, 7, FALSE);

INSERT INTO ITEM_VENDA (VENDA_id, PRODUTO_id, qt_item, vr_item) VALUES 
					   (1, 13, 6, 7.70),
                       (2, 3, 8, 6.50),
                       (3, 8, 9, 18.99),
                       (3, 3, 10, 6.50),
                       (3, 12, 5, 3.55),
                       (3, 10, 9, 1.99),
                       (4, 9, 3, 1.47),
                       (5, 9, 9, 1.47),
                       (5, 2, 9, 1.99),
                       (5, 6, 4, 3.50),
                       (5, 4, 4, 5.99),
                       (5, 7, 3, 20.00),
                       (6, 10, 4, 1.99),
                       (6, 6, 6, 3.50),
                       (6, 13, 2, 7.70),
                       (7, 12, 10, 3.55),
                       (7, 1, 6, 1.85),
                       (7, 11, 4, 4.59),
                       (8, 14, 3, 1.29),
                       (9, 11, 3, 4.59),
                       (9, 12, 7, 3.55),
                       (9, 13, 3, 7.70),
                       (10, 10, 8, 1.99),
                       (11, 3, 7, 6.50);

INSERT INTO ITEM_VENDA (VENDA_id, PRODUTO_id, qt_item, vr_item) VALUES 
                       (12, 13, 5, 7.70),
                       (12, 4, 10, 5.99),
                       (13, 15, 3, 9.70),
                       (13, 13, 10, 7.70),
                       (13, 6, 6, 3.50),
                       (13, 10, 8, 1.99),
                       (14, 3, 6, 6.50),
                       (14, 8, 2, 18.99),
                       (15, 5, 8, 5.99),
                       (15, 11, 5, 4.59),
                       (15, 10, 5, 1.99),
                       (16, 12, 1, 3.55),
                       (16, 14, 8, 1.29),
                       (16, 5, 3, 5.99),
                       (17, 3, 3, 6.50),
                       (17, 12, 2, 3.55),
                       (17, 1, 3, 1.85),
                       (18, 11, 10, 4.59),
                       (18, 14, 11, 1.29),
                       (18, 17, 6, 20.00);
 
SELECT * FROM CLIENTE;
SELECT * FROM DOCUMENTO;
SELECT * FROM ITEM_VENDA; 
SELECT * FROM MUNICIPIO;
SELECT * FROM PRODUTO;
SELECT * FROM TIPO_PAGTO;
SELECT * FROM UF;
SELECT * FROM VENDA;