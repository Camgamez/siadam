/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     9/12/2025 7:12:55 p.�m.                      */
/*==============================================================*/


drop trigger COMPOUNDDELETETRIGGER_ESTACION;

drop trigger COMPOUNDINSERTTRIGGER_ESTACION;

drop trigger COMPOUNDUPDATETRIGGER_ESTACION;

drop trigger COMPOUNDDELETETRIGGER_TRIPULAC;

drop trigger COMPOUNDINSERTTRIGGER_TRIPULAC;

drop trigger COMPOUNDUPDATETRIGGER_TRIPULAC;

drop table if exists AEROLINEA;

drop table if exists AERONAVE;

drop table if exists AEROPUERTO;

drop table if exists CAPITAN;

drop table if exists CIUDAD;

drop table if exists DESPACH;

drop table if exists ESTACION_CLIMA;

drop table if exists LICENCIA;

drop table if exists METAR;

drop table if exists MODELO;

drop table if exists PLANNING;

drop table if exists RUTA;

drop table if exists SIGMET;

drop table if exists TIPO_LICENCIA;

drop table if exists TRIPULACION;

drop table if exists VUELO;

/*==============================================================*/
/* Table: AEROLINEA                                             */
/*==============================================================*/
create table AEROLINEA
(
   AL_ID                varchar(3) not null,
   AL_NONBRE            varchar(100) not null,
   RUTAS                varchar(8) not null,
   CODE_ICAO            varchar(3) not null,
   primary key (AL_ID)
);

/*==============================================================*/
/* Table: AERONAVE                                              */
/*==============================================================*/
create table AERONAVE
(
   AN_ID                varchar(4) not null,
   AL_ID                varchar(3) not null,
   MATRICULA            varchar(9) not null,
   IATA_COD             varchar(3) not null,
   ID_MODELO            int not null,
   primary key (AN_ID)
);

/*==============================================================*/
/* Table: AEROPUERTO                                            */
/*==============================================================*/
create table AEROPUERTO
(
   AP_ICAO              varchar(4) not null,
   AP_NOM               varchar(255) not null,
   AP_LATITUD           numeric(10,8) not null,
   AP_LONGITUD          numeric(11,8) not null,
   AP_IATA              varchar(3) not null,
   C_ID                 int not null,
   primary key (AP_ICAO)
);

/*==============================================================*/
/* Table: CAPITAN                                               */
/*==============================================================*/
create table CAPITAN
(
   E_ID                 numeric(6,0) not null auto_increment,
   ID_MODELO            int not null,
   ID_LICENCIA          int not null,
   AL_ID                varchar(3) not null,
   E_DOC                varchar(15) not null,
   E_PASAPORTE          varchar(15) not null,
   E_NOMBRE             varchar(255) not null,
   FECHA_NACIMIENTO     datetime not null,
   E_TELEFONO           int not null,
   E_EMAIL              varchar(127) not null,
   NACIONALIDAD         varchar(255) not null,
   ACTIVO               smallint not null,
   HORAS_VUELO          smallint not null,
   primary key (E_ID)
);

/*==============================================================*/
/* Table: CIUDAD                                                */
/*==============================================================*/
create table CIUDAD
(
   C_ID                 int not null,
   C_NOMBRE             varchar(100) not null,
   REGION               varchar(100) not null,
   PAIS                 varchar(100) not null,
   primary key (C_ID)
);

/*==============================================================*/
/* Table: DESPACH                                               */
/*==============================================================*/
create table DESPACH
(
   E_ID                 numeric(6,0) not null auto_increment,
   ID_MODELO            int not null,
   ID_LICENCIA          int not null,
   AL_ID                varchar(3) not null,
   E_DOC                varchar(15) not null,
   E_PASAPORTE          varchar(15) not null,
   E_NOMBRE             varchar(255) not null,
   FECHA_NACIMIENTO     datetime not null,
   E_TELEFONO           int not null,
   E_EMAIL              varchar(127) not null,
   NACIONALIDAD         varchar(255) not null,
   ACTIVO               smallint not null,
   CERT_METEOROLOGICO   smallint not null,
   CERT_PLAN            smallint not null,
   CERT_CARGA           smallint not null,
   primary key (E_ID)
);

/*==============================================================*/
/* Table: ESTACION_CLIMA                                        */
/*==============================================================*/
create table ESTACION_CLIMA
(
   EST_ID               numeric(6,0) not null auto_increment,
   E_LATITUD            numeric(10,8) not null,
   E_LONGITUD           numeric(10,8) not null,
   E_PLUVIOSIDAD        int not null,
   E_TEMPERATURA        int not null,
   E_PRESION_ATM        float(8) not null,
   C_ID                 int not null,
   primary key (EST_ID)
);

/*==============================================================*/
/* Table: LICENCIA                                              */
/*==============================================================*/
create table LICENCIA
(
   ID_LICENCIA          numeric(6,0) not null auto_increment,
   L_FECHA_EMISION      datetime not null,
   L_FECHA_VENCIMIENTO  datetime not null,
   ENTIDAD_EMISORA      varchar(255) not null,
   L_ESTADO             smallint not null,
   primary key (ID_LICENCIA)
);

/*==============================================================*/
/* Table: METAR                                                 */
/*==============================================================*/
create table METAR
(
   M_ID                 int not null,
   AP_ICAO              varchar(4) not null,
   M_TIME_REG           timestamp not null,
   REPORT_MOD           numeric(4,2) not null,
   WINDS                numeric(6,2) not null,
   WIND_GUST            numeric(5,2) not null,
   WIND_DIR             numeric(5,2) not null,
   VISIBILITY           varchar(100) not null,
   SKY_COND             varchar(9) not null,
   TEMP                 numeric(3,0) not null,
   DEWPOINT             varchar(3) not null,
   ALTIMETER            varchar(4) not null,
   REMARKS              varchar(127),
   primary key (M_ID)
);

/*==============================================================*/
/* Table: MODELO                                                */
/*==============================================================*/
create table MODELO
(
   ID_MODELO            numeric(6,0) not null auto_increment,
   M_NOMBRE             varchar(255) not null,
   M_FABRICANTE         varchar(127) not null,
   M_CARGA_MAX          numeric(10,2) not null,
   M_PAX                int not null,
   primary key (ID_MODELO)
);

/*==============================================================*/
/* Table: PLANNING                                              */
/*==============================================================*/
create table PLANNING
(
   P_ID                 numeric(6,0) not null auto_increment,
   AL_ID                varchar(3) not null,
   AP_ICAO              varchar(4) not null,
   DESPACH_ID           int not null,
   primary key (P_ID)
);

/*==============================================================*/
/* Table: RUTA                                                  */
/*==============================================================*/
create table RUTA
(
   R_ID                 varchar(6) not null,
   AP_ORIGEN            varchar(4) not null,
   AP_DESTINO           varchar(4) not null,
   primary key (R_ID)
);

/*==============================================================*/
/* Table: SIGMET                                                */
/*==============================================================*/
create table SIGMET
(
   S_ID                 numeric(255,0) not null auto_increment,
   M_ID                 int,
   S_TYPE               char(1) not null,
   S_CONDITION          varchar(255) not null,
   primary key (S_ID)
);

/*==============================================================*/
/* Table: TIPO_LICENCIA                                         */
/*==============================================================*/
create table TIPO_LICENCIA
(
   ID_MODELO            int not null,
   ID_LICENCIA          int not null,
   primary key (ID_MODELO, ID_LICENCIA)
);

/*==============================================================*/
/* Table: TRIPULACION                                           */
/*==============================================================*/
create table TRIPULACION
(
   E_ID                 numeric(6,0) not null auto_increment,
   ID_MODELO            int not null,
   ID_LICENCIA          int not null,
   AL_ID                varchar(3) not null,
   E_DOC                varchar(15) not null,
   E_PASAPORTE          varchar(15) not null,
   E_NOMBRE             varchar(255) not null,
   FECHA_NACIMIENTO     datetime not null,
   E_TELEFONO           int not null,
   E_EMAIL              varchar(127) not null,
   NACIONALIDAD         varchar(255) not null,
   ACTIVO               smallint not null,
   CLASE                char(1) not null,
   primary key (E_ID)
);

/*==============================================================*/
/* Table: VUELO                                                 */
/*==============================================================*/
create table VUELO
(
   R_ID                 varchar(6) not null,
   P_ID                 int not null,
   E_CAPITAN_ID         int not null,
   E_TRIP_ID            int not null,
   AL_ID                varchar(3) not null,
   AP_ICAO_ORIGEN       varchar(4) not null,
   AP_ICAO_DESTINO      varchar(4) not null,
   FECHA                datetime not null,
   primary key (P_ID, R_ID)
);

alter table AERONAVE add constraint FK_AEROLINEA_AERONAVE foreign key (AL_ID)
      references AEROLINEA (AL_ID) on delete restrict on update restrict;

alter table AERONAVE add constraint FK_AERONAVE_MODELO foreign key (ID_MODELO)
      references MODELO (ID_MODELO) on delete restrict on update restrict;

alter table AEROPUERTO add constraint FK_AEROPUERTO_CIUDAD foreign key (C_ID)
      references CIUDAD (C_ID) on delete restrict on update restrict;

alter table CAPITAN add constraint FK_AEROLINA_CAPITAN foreign key (AL_ID)
      references AEROLINEA (AL_ID) on delete restrict on update restrict;

alter table CAPITAN add constraint FK_TIPO_LICENCIA_CAPITAN foreign key (ID_MODELO, ID_LICENCIA)
      references TIPO_LICENCIA (ID_MODELO, ID_LICENCIA) on delete restrict on update restrict;

alter table DESPACH add constraint FK_AEROLINA_DESPACH foreign key (AL_ID)
      references AEROLINEA (AL_ID) on delete restrict on update restrict;

alter table DESPACH add constraint FK_TIPO_LICENCIA_DESPACH foreign key (ID_MODELO, ID_LICENCIA)
      references TIPO_LICENCIA (ID_MODELO, ID_LICENCIA) on delete restrict on update restrict;

alter table ESTACION_CLIMA add constraint FK_CIUDAD_ESTACION foreign key (C_ID)
      references CIUDAD (C_ID) on delete restrict on update restrict;

alter table METAR add constraint FK_AEROPUERTO_METAR foreign key (AP_ICAO)
      references AEROPUERTO (AP_ICAO) on delete restrict on update restrict;

alter table PLANNING add constraint FK_DESPACH_PLANNING foreign key (DESPACH_ID)
      references DESPACH (E_ID) on delete restrict on update restrict;

alter table PLANNING add constraint FK_PLANNING_AEROLINEA foreign key (AL_ID)
      references AEROLINEA (AL_ID) on delete restrict on update restrict;

alter table PLANNING add constraint FK_PLANNING_AEROPUERTO foreign key (AP_ICAO)
      references AEROPUERTO (AP_ICAO) on delete restrict on update restrict;

alter table RUTA add constraint FK_DESTINO foreign key (AP_DESTINO)
      references AEROPUERTO (AP_ICAO) on delete restrict on update restrict;

alter table RUTA add constraint FK_ORIGEN foreign key (AP_ORIGEN)
      references AEROPUERTO (AP_ICAO) on delete restrict on update restrict;

alter table SIGMET add constraint FK_METAR_SIGMET foreign key (M_ID)
      references METAR (M_ID) on delete restrict on update restrict;

alter table TIPO_LICENCIA add constraint FK_TIPO_LICENCIA foreign key (ID_LICENCIA)
      references LICENCIA (ID_LICENCIA) on delete restrict on update restrict;

alter table TIPO_LICENCIA add constraint FK_TIPO_LICENCIA_MODELO foreign key (ID_MODELO)
      references MODELO (ID_MODELO) on delete restrict on update restrict;

alter table TRIPULACION add constraint FK_AEROLINA_TRIPULACION foreign key (AL_ID)
      references AEROLINEA (AL_ID) on delete restrict on update restrict;

alter table TRIPULACION add constraint FK_TIPO_LICENCIA_TRIPULACION foreign key (ID_MODELO, ID_LICENCIA)
      references TIPO_LICENCIA (ID_MODELO, ID_LICENCIA) on delete restrict on update restrict;

alter table VUELO add constraint FK_CAPITAN_VUELO foreign key (E_CAPITAN_ID)
      references CAPITAN (E_ID) on delete restrict on update restrict;

alter table VUELO add constraint FK_TRIPULACION_VUELO foreign key (E_TRIP_ID)
      references TRIPULACION (E_ID) on delete restrict on update restrict;

alter table VUELO add constraint FK_VUELO_PLANNING foreign key (P_ID)
      references PLANNING (P_ID) on delete restrict on update restrict;

alter table VUELO add constraint FK_VUELO_RUTA foreign key (R_ID)
      references RUTA (R_ID) on delete restrict on update restrict;

