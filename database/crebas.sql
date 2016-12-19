/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     12/11/2016 12:24:53                          */
/*==============================================================*/


drop table if exists DETAILPKBYJENISKELAMIN;

drop table if exists DETAILPKBYPROVINSI;

drop table if exists DETAILREKAPJABATANBYPROVINSI;

drop table if exists DETAILREKAPJABATANPUSAT;

drop table if exists GOLONGANKERJA;

drop table if exists LOKERBYJENISKELAMIN;

drop table if exists LOKERBYPROVINSI;

drop table if exists PEMENUHANTKBYJK;

drop table if exists PEMENUHANTKBYPROVINSI;

drop table if exists PENEMPATANAKADPERBULAN;

drop table if exists PROVINSI;

drop table if exists TAHUN;

drop table if exists UNITKERJAPUSAT;

/*==============================================================*/
/* Table: DETAILPKBYJENISKELAMIN                                */
/*==============================================================*/
create table DETAILPKBYJENISKELAMIN
(
   IDDETAILJENISKELAMIN int not null,
   IDTAHUN              int,
   PRIA                 int,
   WANITA               int,
   primary key (IDDETAILJENISKELAMIN)
);

/*==============================================================*/
/* Table: DETAILPKBYPROVINSI                                    */
/*==============================================================*/
create table DETAILPKBYPROVINSI
(
   IDDETAIL             int not null,
   IDPROVINSI           int,
   IDTAHUN              int,
   JUMLAH               int,
   primary key (IDDETAIL)
);

/*==============================================================*/
/* Table: DETAILREKAPJABATANBYPROVINSI                          */
/*==============================================================*/
create table DETAILREKAPJABATANBYPROVINSI
(
   IDDETAILREKAPJABATANBYPROVINSI int not null,
   IDPROVINSI           int,
   IDGOLONGAN           int,
   JUMLAH               int,
   primary key (IDDETAILREKAPJABATANBYPROVINSI)
);

/*==============================================================*/
/* Table: DETAILREKAPJABATANPUSAT                               */
/*==============================================================*/
create table DETAILREKAPJABATANPUSAT
(
   IDDETAILREKAPJABATANPUSAT int not null,
   IDGOLONGAN           int,
   IDUNITKERJAPUSAT     int,
   JUMLAH               int,
   primary key (IDDETAILREKAPJABATANPUSAT)
);

/*==============================================================*/
/* Table: GOLONGANKERJA                                         */
/*==============================================================*/
create table GOLONGANKERJA
(
   IDGOLONGAN           int not null,
   NAMAGOLONGAN         varchar(10),
   primary key (IDGOLONGAN)
);

/*==============================================================*/
/* Table: LOKERBYJENISKELAMIN                                   */
/*==============================================================*/
create table LOKERBYJENISKELAMIN
(
   IDLOKERJK            int not null,
   IDTAHUN              int,
   JUMLAH               int,
   PRIA                 int,
   WANITA               int,
   primary key (IDLOKERJK)
);

/*==============================================================*/
/* Table: LOKERBYPROVINSI                                       */
/*==============================================================*/
create table LOKERBYPROVINSI
(
   IDLOKER              int not null,
   IDTAHUN              int,
   IDPROVINSI           int,
   JUMLAH               int,
   primary key (IDLOKER)
);

/*==============================================================*/
/* Table: PEMENUHANTKBYJK                                       */
/*==============================================================*/
create table PEMENUHANTKBYJK
(
   IDPEMENUHANTKBYJK    int not null,
   IDTAHUN              int,
   JUMLAH               int,
   PRIA                 int,
   WANITA               int,
   primary key (IDPEMENUHANTKBYJK)
);

/*==============================================================*/
/* Table: PEMENUHANTKBYPROVINSI                                 */
/*==============================================================*/
create table PEMENUHANTKBYPROVINSI
(
   IDPEMENUHAN          int not null,
   IDPROVINSI           int,
   IDTAHUN              int,
   JUMLAH               int,
   primary key (IDPEMENUHAN)
);

/*==============================================================*/
/* Table: PENEMPATANAKADPERBULAN                                */
/*==============================================================*/
create table PENEMPATANAKADPERBULAN
(
   IDPENEMPATANAKADPERBULAN int not null,
   IDTAHUN              int,
   JUMLAH               int,
   PRIA                 int,
   WANITA               int,
   BULAN                char(10),
   primary key (IDPENEMPATANAKADPERBULAN)
);

/*==============================================================*/
/* Table: PROVINSI                                              */
/*==============================================================*/
create table PROVINSI
(
   IDPROVINSI           int not null,
   NAMAPROVINSI         varchar(50),
   KETERANGAN           varchar(100),
   primary key (IDPROVINSI)
);

/*==============================================================*/
/* Table: TAHUN                                                 */
/*==============================================================*/
create table TAHUN
(
   IDTAHUN              int not null,
   TAHUN                varchar(10),
   primary key (IDTAHUN)
);

/*==============================================================*/
/* Table: UNITKERJAPUSAT                                        */
/*==============================================================*/
create table UNITKERJAPUSAT
(
   IDUNITKERJAPUSAT     int not null,
   NAMAUNITKERJA        varchar(100),
   primary key (IDUNITKERJAPUSAT)
);

alter table DETAILPKBYJENISKELAMIN add constraint FK_RELATIONSHIP_3 foreign key (IDTAHUN)
      references TAHUN (IDTAHUN) on delete restrict on update restrict;

alter table DETAILPKBYPROVINSI add constraint FK_RELATIONSHIP_1 foreign key (IDPROVINSI)
      references PROVINSI (IDPROVINSI) on delete restrict on update restrict;

alter table DETAILPKBYPROVINSI add constraint FK_RELATIONSHIP_2 foreign key (IDTAHUN)
      references TAHUN (IDTAHUN) on delete restrict on update restrict;

alter table DETAILREKAPJABATANBYPROVINSI add constraint FK_RELATIONSHIP_13 foreign key (IDPROVINSI)
      references PROVINSI (IDPROVINSI) on delete restrict on update restrict;

alter table DETAILREKAPJABATANBYPROVINSI add constraint FK_RELATIONSHIP_14 foreign key (IDGOLONGAN)
      references GOLONGANKERJA (IDGOLONGAN) on delete restrict on update restrict;

alter table DETAILREKAPJABATANPUSAT add constraint FK_RELATIONSHIP_11 foreign key (IDGOLONGAN)
      references GOLONGANKERJA (IDGOLONGAN) on delete restrict on update restrict;

alter table DETAILREKAPJABATANPUSAT add constraint FK_RELATIONSHIP_12 foreign key (IDUNITKERJAPUSAT)
      references UNITKERJAPUSAT (IDUNITKERJAPUSAT) on delete restrict on update restrict;

alter table LOKERBYJENISKELAMIN add constraint FK_RELATIONSHIP_7 foreign key (IDTAHUN)
      references TAHUN (IDTAHUN) on delete restrict on update restrict;

alter table LOKERBYPROVINSI add constraint FK_RELATIONSHIP_4 foreign key (IDPROVINSI)
      references PROVINSI (IDPROVINSI) on delete restrict on update restrict;

alter table LOKERBYPROVINSI add constraint FK_RELATIONSHIP_5 foreign key (IDTAHUN)
      references TAHUN (IDTAHUN) on delete restrict on update restrict;

alter table PEMENUHANTKBYJK add constraint FK_RELATIONSHIP_10 foreign key (IDTAHUN)
      references TAHUN (IDTAHUN) on delete restrict on update restrict;

alter table PEMENUHANTKBYPROVINSI add constraint FK_RELATIONSHIP_8 foreign key (IDPROVINSI)
      references PROVINSI (IDPROVINSI) on delete restrict on update restrict;

alter table PEMENUHANTKBYPROVINSI add constraint FK_RELATIONSHIP_9 foreign key (IDTAHUN)
      references TAHUN (IDTAHUN) on delete restrict on update restrict;

alter table PENEMPATANAKADPERBULAN add constraint FK_RELATIONSHIP_15 foreign key (IDTAHUN)
      references TAHUN (IDTAHUN) on delete restrict on update restrict;

