use hospital;

insert into medico
(id,nome,nascimento,cpf,crm,uf,atuacao,telefone,endereço)
values
('1', 'Romário', '1980-08-20', '01809687004', '662887', 'RS', 'especialista', '(51) 2576-1783', 'Rua Hermes da Fonseca, 21'),
('2', 'Zico', '1981-09-21', '81824813090', '19430', 'SP', 'residente', '(14) 3363-5517', 'Rua Dom Pedro Gastão'),
('3', 'Zanilda', '1983-10-22', '62855555086', '93688', 'SC', 'residente', '(48) 3807-8353', 'Rua João Pessoa 364'),
('4', 'Richarlison', '1983-11-23', '70570587050', '946674', 'SC', 'generalista', '(49) 2476-2572', 'Rua Oscar Zwicker 35'),
('5', 'Juliete', '1984-12-24', '16572490009', '33901', 'CE', 'generalista', '(88) 2612-3280', 'Rua Luís de Pinho 284'),
('6', 'Cabral', '1984-01-25', '90573595020', '447122', 'RS', 'especialista', '(88) 2612-3280', 'Rua Lydia Moschetti'),
('7', 'Marilia', '1985-02-26', '11949292061', '50095', 'RJ', 'residente', '(22) 2314-5652', 'Rua Lópes Quintas'),
('8', 'Casimiro', '1986-03-26', '59444388000', '493398', 'RJ', 'generalista', '(22) 2764-2787', 'Rua Ivan Diniz Gonçalves'),
('9', 'enéas', '1987-04-27', '49246943040', '98542', 'AC', 'especialista', '(68) 3338-8152', 'Rua Tapajós'),
('10', 'samanta', '1988-05-18', '02283314046', '87442', 'ES', 'generalista', '(27) 2169-0952', 'Rua Henrique Coutinho');


UPDATE medico SET em_atividade = 'inativo' WHERE (id = '1');
UPDATE medico SET em_atividade = 'inativo' WHERE (id = '9');
UPDATE medico SET em_atividade = 'em atividade' WHERE (id = '2');
UPDATE medico SET em_atividade = 'em atividade' WHERE (id = '3');
UPDATE medico SET em_atividade = 'em atividade' WHERE (id = '4');
UPDATE medico SET em_atividade = 'em atividade' WHERE (id = '5');
UPDATE medico SET em_atividade = 'em atividade' WHERE (id = '6');
UPDATE medico SET em_atividade = 'em atividade' WHERE (id = '7');
UPDATE medico SET em_atividade = 'em atividade' WHERE (id = '8');
UPDATE medico SET em_atividade = 'em atividade' WHERE (id = '10');


insert into especialidade
(id, especialidade)
values
('1', 'dermatologista'),
('2', 'pediatra'),
('3', 'clinica geral'),
('4', 'gastroenterologia');


insert into medico_especialidade
(id, medico_id, especialidade_id)
values
(1, 1, 2),
(2, 2, 4),
(3, 3, 3),
(4, 4, 2),
(5, 5, 4),
(6, 6, 1),
(7, 7, 2),
(8, 8, 3),
(9, 9, 1),
(10, 10, 4);


insert into consultas
(ID, Data_E_Hora, valor_consulta, MEDICO_ID, PACIENTE_ID)
values
(1, '2015-03-11 12:30:00', 120.00, 4, 15),
(2, '2015-08-25 17:20:00', 340.00, 10, 15),
(3, '2016-02-18 09:00:00', 220.00, 10, 3), 
(4, '2016-09-01 14:40:00', 560.00, 5, 11), 
(5, '2016-12-17 20:00:00', 100.00, 9, 13),
(6, '2017-03-14 10:50:00', 150.00, 6, 3),
(7, '2017-06-03 12:40:00', 400.00, 8, 8), 
(8, '2017-11-10 21:00:00', 270.00, 7, 12),
(9, '2018-04-01 08:30:00', 490.00, 2, 2),
(10, '2018-07-15 16:30:00', 230.00, 3, 4),
(11, '2018-10-21 17:50:00', 680.00, 10, 7),
(12, '2019-06-22 13:50:00', 175.00, 9, 1), 
(13, '2019-10-10 10:20:00', 345.00, 4, 11), 
(14, '2020-04-19 20:55:00', 430.00, 1, 7), 
(15, '2020-07-05 10:40:00', 280.00, 7, 10),
(16, '2021-03-03 15:20:00', 460.00, 2, 8),
(17, '2021-05-18 13:00:00', 500.00, 8, 15), 
(18, '2021-08-09 18:10:00', 245.00, 5, 6),
(19, '2021-10-12 19:00:00', 300.00, 6, 3), 
(20, '2021-12-25 14:00:00', 180.00, 1, 5);

UPDATE consultas SET CONVENIO_ID = '2' WHERE (ID = '1');
UPDATE consultas SET CONVENIO_ID = '1' WHERE (ID = '3');
UPDATE consultas SET CONVENIO_ID = '4' WHERE (ID = '14');
UPDATE consultas SET CONVENIO_ID = '4' WHERE (ID = '6');
UPDATE consultas SET CONVENIO_ID = '3' WHERE (ID = '7');
UPDATE consultas SET CONVENIO_ID = '2' WHERE (ID = '8');
UPDATE consultas SET CONVENIO_ID = '4' WHERE (ID = '15');
UPDATE consultas SET CONVENIO_ID = '4' WHERE (ID = '18');
UPDATE consultas SET CONVENIO_ID = '3' WHERE (ID = '10');
UPDATE consultas SET CONVENIO_ID = '1' WHERE (ID = '9');
#update para definir consultas com convenio


UPDATE consultas SET receita_id = '3' WHERE (ID = '1');
UPDATE consultas SET receita_id = '1' WHERE (ID = '5');
UPDATE consultas SET receita_id = '2' WHERE (ID = '8');
UPDATE consultas SET receita_id = '10' WHERE (ID = '10');
UPDATE consultas SET receita_id = '8' WHERE (ID = '12');
UPDATE consultas SET receita_id = '4' WHERE (ID = '15');
UPDATE consultas SET receita_id = '6' WHERE (ID = '16');
UPDATE consultas SET receita_id = '7' WHERE (ID = '18');
UPDATE consultas SET receita_id = '9' WHERE (ID = '20');
#para definir consultas com receita

UPDATE consultas SET CONVENIO_ID = NULL WHERE (ID = '15');
UPDATE consultas SET CONVENIO_ID = NULL WHERE (ID = '14');
UPDATE consultas SET CONVENIO_ID = NULL WHERE (ID = '18');
UPDATE consultas SET CONVENIO_ID = NULL WHERE (ID = '6');



insert into paciente
(id, nome, nascimento, endereco, telefone, email, RG, CPF)
values
('1', 'mathias', '1999-01-10', 'rua fontes medina, apto 21', '(37) 2686-1475', 'mathias_reidelas@gmail.com', '253183534', '92718309032'),
('2', 'rosemay', '2000-02-21', 'rua mendes fonseca, 87', '(35) 3367-5744', 'roseamada@hotmail.com', '190709637', '67355279092'),
('3', 'udeir', '2001-03-12', 'arrocha gondes, apto 34', '(79) 3101-5394', 'ozorosola@gamil.com', '238351579', '79244153009'),
('4', 'nagasaki', '1945-04-23', 'vila da tamanca', '(21) 2452-9914', 'pingleeoficial@gmail.com', '352438733', '44239348099'),
('5', 'geromel', '1983-05-22', 'vila mapa, 75', '(89) 3801-2453', 'terror_do_inter@yahoo.com', '287520456', '96784568001'),
('6', 'di maria', '2011-11-11', 'rua matos silva, 11', '(11) 1177-6511', 'argentinacampea@hotmail.com', '478672652', '61865833096'),
('7', 'escobar', '1972-05-17', 'mathias santos, 52', '(51) 3466-3241', 'hipopótamomacho12@gmail.com', '539622207', '37347598036'),
('8', 'borges', '1988-09-22', 'carapora vila salva, 66', '(21) 3326-3826', 'iphonebranco@gmail.com', '194800726', '18980709030'),
('9', 'kanye west', '1977-06-08', 'brooklyn west, 31', '(99) 3756-2432', 'stronger2007@hotmail.com', '326825683', '04701794066'),
('10', 'fabio de melo', '1996-11-03', 'rua santa cruz, 15', '(12) 2013-8135', 'jesusamor47@gmail.com', '107729125', '41051064066'),
('11', 'keila', '2005-09-12', 'lombada do ferraz, 901', '(91) 2665-3367', 'keilasilva13@gmail.com', '328341684', '67800912354'),
('12', 'gracie', '1982-01-08', 'fagundes vilba, 22', '(73) 3628-6640', 'graciejiujitsu@hotmail.com', '087341282', '75229362109'),
('13', 'kauan', '2004-12-20', 'rua alves lopes, 43', '(51) 3025-4646', 'kauangames9090@hotmail', '237887125', '06305408025'),
('14', 'billy', '2007-02-07', 'matias santos dias, 98', '(68) 3858-1708', 'shipofbilly@gmail.com', '436451839', '95691909061'),
('15', 'anderson', '2005-05-22', 'rua sete mil e trinta', '(51) 5467-9876', 'bolsolula1322@gmail.com', '180482567', '78910940042');


UPDATE paciente SET CONVENIO_ID = null WHERE (ID = '6');
UPDATE paciente SET CONVENIO_ID = null WHERE (ID = '10');
UPDATE paciente SET CONVENIO_ID = null WHERE (ID = '12');
UPDATE paciente SET CONVENIO_ID = null WHERE (ID = '3');
UPDATE paciente SET CONVENIO_ID = null WHERE (ID = '4');
UPDATE paciente SET CONVENIO_ID = null WHERE (ID = '14');
UPDATE paciente SET CONVENIO_ID = null WHERE (Id = '9');
#para determinar os pacientes convênio



insert into convenios
 (id, nome, cnpj, tempo_de_carencia)
 values
 ('1', 'sulmed', '46501164000101', '20:42:52'),
 ('2','nortmed','52996441000199','12:11:29'),
 ('3','lipusmed','69164799000158','09:30:00'),
 ('4','ibcm','65069744000108','15:36:00');
 
 
 insert into receita
(id, medicamento, quantidade, instrucao_de_uso)
values
('1', 'dipirona e metazol', '500mg dipirona, 1 cartela metazol', 'ingerir 1 comprimido de dipirona após o almoço, e ingerir 1 comprimido de metazol caso esteja tossindo muito.', '5'),
('2', 'satonol', '1 caixa', 'ingerir 2 pílulas de satonol antes de dormir e depois de acordar.', '10'),
('3', 'satonol e dipirona', '300mg dipirona e 1 caixa satonol', 'use 1 comprimido de dipirona as 12:00 e 20:00, e use 1 comprimido de satonol 1 vez por semana as 16:00.', '1'),
('4', 'mertiolate', '1 frasco', 'aplique 3 borrifadas no joelho sempre que sentir dor.', '20'),
('5', 'cloroquina', '2 caixas', 'use 2 comprimidos após acordar', '15'),
('6', 'expec xarope', '120ml', 'ingerir 2 colheres as 13:00, fique 3 horas de jejum após o uso.', '8'),
('7', 'dipirona', '500mg', 'use 1 comprimido sempre que sentir dor no corpo', '16'),
('8', 'ritmoneuran', '180mg', 'utilize 2 comrprimidos após acordar.', '9'),
('9', 'gaba', '400mg', ' use 4 capsulas sempre que ficar sem ar', '18'),
('10', 'mertiolate', '5 frascos', 'utilize 5 borrifadas no local da dor', '11');



insert into quarto
(id, numero, tipo_quarto_id)
values
('1', '305', '2'),
('2', '304', '1'),
('3', '310', '3'),
('4', '306', '3'),
('5', '301', '2'),
('6', '311', '1'),
('7', '309', '2');


insert into tipo_quarto
(id, valor_diaria, tipo_do_quarto)
values
('1', '125.00', 'apartamentos'),
('2', '350.00', 'quartos duplos'),
('3', '200.00', 'enfermaria');

insert into enfermeiro
(id, nome, cpf, cre)
values
('1', 'jô suarez', '21467387070', '8173533988'),
('2', 'cretilde', '80244305099', '4587623019'),
('3', 'adalberto', '22815252015', '5498762305'),
('4', 'isabuá', '11841835030', '3437693301'),
('5', 'ichigo', '12058703006', '0654286405'),
('6', 'jinbei', '72876796040', '8740885704'),
('7', 'monica', '11613899033', '3097963405'),
('8', 'eufrazino', '58027835089', '7361751709'),
('9', 'milena', '05422876091', '6399537204'),
('10', 'defante', '46462942061', '9163050706');


insert into internacao
(id, data_entrada, data_prev_alta, data_alta, procedimento, medico_id, paciente_id, quarto_id)
values
('1', '2015-04-20', '2015-09-06', '2015-05-20', 'aplicar dermatol e sefalina no paciente sempre após o almoço.', '10', '1', '7'),
('2', '2017-09-27', '2017-10-09', '2017-11-28', 'servir apenas vegetais ou legumes, o paciente é vegetariano.', '8', '11', '5'),
('3', '2020-11-10', '2021-03-19', '2021-01-12', 'avaliar o paciente 2 vezes por semana, se necessário aplique 500mg de dermatol.', '7', '4', '2'),
('4', '2019-02-22', '2016-09-01', '2019-05-16', 'remover e aplicar novas faixas ao antebraço do paciente toda semana.', '4', '1', '6'),
('5', '2021-09-09', '2021-10-03', '2021-11-09', 'aplicar serotonina quando o paciente dormir, não sirva camarão pois ele é alérigico.', '2', '4', '4'),
('6', '2017-08-01', '2017-09-04', '2017-09-09', 'avaliar o paciente todo dias as 15:00, aplique 400mg de zetonil.', '1', '7', '1'),
('7', '2015-11-13', '2015-10-11', '2016-02-01', 'trocar a roupa de cama, aplique cloroquina 5 vezes por dia.', '5', '12', '3');

UPDATE internacao SET data_entrada = '2015-04-23' WHERE (ID = '1');
UPDATE internacao SET data_entrada = '2017-09-30' WHERE (ID = '2');
UPDATE internacao SET data_entrada = '2020-11-13' WHERE (ID = '3');
UPDATE internacao SET data_entrada = '2019-02-25' WHERE (ID = '4');
UPDATE internacao SET data_entrada = '2021-09-12' WHERE (ID = '5');
UPDATE internacao SET data_entrada = '2017-08-04' WHERE (ID = '6');
UPDATE internacao SET data_entrada = '2015-11-16' WHERE (ID = '7');


insert into  internacao_requer_enfermeiro
 (id, internacao_id, enfermeiro_id, segundo_enfermeiro_id)
 values
('1', '7', '1', '3'),
('2', '3', '3', '2'),
('3', '6', '4', '1'),
('4', '2', '2', '6'),
('5', '4', '6', '8'),
('6', '5', '7', '10'),
('7', '1', '5', '9');
