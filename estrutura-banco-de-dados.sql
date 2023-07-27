create database hospital;

create table MEDICO(
	 id int not null auto_increment,
	 nome varchar(90) not null,
	 nascimento date not null,
	 cpf char(11) not null,
	 crm varchar(10) not null,
	 uf varchar(2) not null,
	 atuacao varchar(30) not null,
	 telefone varchar(14) not null,
	 endereco varchar(100) not null,
     em_atividade varchar(15),
	 primary key (id)
);


create table especialidade(
	id int not null auto_increment,
	especialidade varchar(100),
    primary key(id)
);


create table Medico_Especialidade(
	id int not null auto_increment,
	medico_id int not null,
    especialidade_id int not null,
    primary key (id),
    foreign key (medico_id) references medico(id),
    foreign key (especialidade_id) references especialidade(id)
);

create table CONSULTAS(
	 ID int not null auto_increment,
	 Data_E_Hora datetime not null,
     valor_consulta decimal(5,2) not null,
     primary key(ID),
     MEDICO_ID int,
     CONVENIO_ID int,
     PACIENTE_ID int
);


create table PACIENTE(
	ID int not null auto_increment,
	nome varchar(90) not null,
    nascimento date not null,
    endereco varchar(100) not null,
    telefone varchar(14) not null,
    email varchar(120) not null,
    RG varchar(25) not null,
    CPF varchar(11) not null,
    primary key (ID)
);
alter table PACIENTE
	add foreign key (CONVENIO_ID)
	references CONVENIOS(ID);



create table CONVENIOS(
	ID int not null auto_increment,
	nome varchar(100) not null,
	CNPJ varchar(14) not null,
    Tempo_De_Carencia time not null,
	primary key (ID)
); 

create table RECEITA(
	ID int not null auto_increment,
	medicamento varchar(100) not null,
    quantidade varchar(30) not null,
	instrucao_de_uso longtext not null,
    primary key(ID)
);

create table QUARTO(
	ID int not null auto_increment,
    numero int not null,
    TIPO_QUARTO_ID int,
    primary key (ID)
);


create table TIPO_QUARTO(
	ID int not null auto_increment,
	TIPO_DO_QUARTO varchar(50),
    valor_diaria decimal(5,2) not null,
    primary key (ID)
);



create table enfermeiro(
	ID int not null auto_increment,
	nome varchar(45) not null,
    CPF varchar(11) not null,
    CRE varchar(10),
    primary key (ID)
);


create table INTERNACAO(
	ID int not null auto_increment,
    data_entrada date not null,
    data_prev_alta date not null,
    data_alta date not null,
    procedimento mediumtext not null,
	MEDICO_ID int not null,
    PACIENTE_ID int not null,
    QUARTO_ID int not null,
    primary key(ID)
);


create table INTERNACAO_requer_ENFERMEIRO(
	ID int not null auto_increment,
    INTERNACAO_ID int not null,
	ENFERMEIRO_ID int not null,
    primary key (ID),
    segundo_enfermeiro_id int,
    foreign key (INTERNACAO_ID) references INTERNACAO(ID),
    foreign key (ENFERMEIRO_ID) references ENFERMEIRO(ID)
);


