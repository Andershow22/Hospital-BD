#------------------------------------------------------
#Todos os dados e o valor médio das consultas do ano de 2020 e das que foram feitas sob convênio:

	select *, avg(valor_consulta)  from consultas
	where Data_E_Hora like'2020%' and convenio_id > 0;
#------------------------------------------------------

#----------------------------------------------------
#Todos os dados das internações que tiveram data de alta maior que a data prevista para a alta:
	select * from INTERNACAO
	where data_alta > data_prev_alta;
#-----------------------------------------------------

#----------------------------------------------------
#Receituário completo da primeira consulta registrada com receituário associado:
	select c.id as 'id_da_consulta', r.id as 'id_da_receita', r.medicamento, r.quantidade, r.instrucao_de_uso
	from consultas as c join receita as r
    on r.id = c.receita_id
	where c.receita_id is not null
	order by c.id limit 1;
#-----------------------------------------------------

#----------------------------------------------------
#Todos os dados da consulta de maior valor e também da de menor valor (ambas as consultas não foram realizadas sob convênio):
	select * from consultas
	where valor_consulta = (select min(valor_consulta) from consultas where convenio_id is null)
    or valor_consulta = (select max(valor_consulta) 
	from consultas  where convenio_id is null);
    
#-----------------------------------------------------

#----------------------------------------------------
#Todos os dados das internações em seus respectivos quartos, calculando o total da internação a partir do valor de diária do quarto
#e o número de dias entre a entrada e a alta:
	select i.id, i.data_entrada, i.data_prev_alta, i.data_alta, i.procedimento, i.MEDICO_ID, i.PACIENTE_ID, i.QUARTO_ID, q.numero_quarto,
	sum(tp.valor_diaria *  datediff(i.data_alta, i.data_entrada) ) as 'valor_total'
	from internacao as i 
	join quarto as q
	on q.id = i.QUARTO_ID
	join tipo_quarto as tp
	on tp.id = q.TIPO_QUARTO_ID
	group by id
	order by id;
#-----------------------------------------------------

#----------------------------------------------------
#Data, procedimento e número de quarto de internações em quartos do tipo “apartamento”:
	select i.id, i.data_entrada, i.data_prev_alta, i.data_alta, i.procedimento, q.numero_quarto
	from internacao as i join quarto as q join tipo_quarto as tp
	on q.TIPO_QUARTO_ID = tp.id
	on i.QUARTO_ID = q.id
	where q.TIPO_QUARTO_ID = 2
	order by i.id;
#-----------------------------------------------------

#----------------------------------------------------
#Nome do paciente, data da consulta e especialidade de todas as consultas em que os pacientes eram menores de 18 anos na data da consulta
# e cuja especialidade não seja “pediatria”, ordenando por data de realização da consulta:
	select p.nome, p.nascimento, c.Data_E_Hora, esp.especialidade from paciente as p
	join consultas as c
	on p.id = c.PACIENTE_ID
	join medico med
	on med.id = c.MEDICO_ID
	join medico_especialidade as mep
	on med.id = mep.medico_id
	join especialidade as esp
	on esp.id = mep.especialidade_id
	where mep.especialidade_id <> 2
	and datediff(c.Data_E_Hora, p.nascimento) <6570 #18 anos tem 6570 dias
    order by c.data_e_hora;
#-----------------------------------------------------

#----------------------------------------------------
#Nome do paciente, nome do médico, data da internação e procedimentos das internações realizadas por médicos da especialidade “gastroenterologia”,
# que tenham acontecido em “enfermaria”:
	select p.nome as 'nome_do_paciente', med.nome as 'nome_do_médico', i.data_entrada, i.procedimento from internacao as i
	join paciente as p
	on p.id = i.paciente_id
	join medico as med
	on med.id = i.medico_id
	join medico_especialidade as mep
	on med.id = mep.medico_id
	join especialidade as esp
	on esp.id = mep.especialidade_id
	join quarto as q
	on q.id = i.quarto_id
	join tipo_quarto as tp
	on q.TIPO_QUARTO_ID = tp.ID
	where mep.especialidade_id = 4 and
	tp.id = 3;

#-----------------------------------------------------

#----------------------------------------------------
#Os nomes dos médicos, seus CRMs e a quantidade de consultas que cada um realizou:
	select med.nome, med.crm, count(c.id) as 'consultas_realizadas' 	
    from consultas as c join medico as med
	on med.id = c.MEDICO_ID
	group by med.id;
#-----------------------------------------------------
