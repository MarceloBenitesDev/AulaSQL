drop database if exists consultório;
create database consultório;
use consultório;
create table paciente (
   id_paciente int not null primary key,
   nm_paciente varchar(100) not null,
   rg_paciente varchar(100) not null,
   cpf_paciente varchar(100) not null,
   sexo_paciente varchar(100) not null,
   cid_paciente varchar(100) not null,
   rua_paciente varchar(100) not null,
   num_res_paciente varchar(100) not null,
   tel_res_paciente varchar(100) not null,
   tel_cel_paciente varchar(100) not null,
   tel_com_paciente varchar(100) not null,
   nm_conv_paciente varchar(100) not null,
   mat_conv_paciente varchar(100) not null);
   
create table medico (
   id_medico int not null primary key,
   nm_medico varchar(100) not null,
   tel_res_medico varchar(100) not null,
   tel_cel_medico varchar(100) not null,
   tel_com_medico varchar(100) not null,
   crm_medico varchar(100) not null,
   esp_medico varchar(100) not null);
   
create table consulta (
   id_paciente int not null,
   id_medico int not null,
   foreign key (id_paciente) references paciente(id_paciente),
   foreign key (id_medico) references medico(id_medico),
   esp_consulta varchar(100) not null,
   data_consulta date not null,
   hora_consulta time not null);