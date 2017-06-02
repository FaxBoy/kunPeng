----------------------------------------------
-- Export file for user SWZZ                --
-- Created by lenovo on 2017/5/10, 10:08:28 --
----------------------------------------------

spool securityJG.log

prompt
prompt Creating table WT_SYS_RESOURCE
prompt ==============================
prompt
create table SWZZ.WT_SYS_RESOURCE
(
  CD_RES  VARCHAR2(32) not null,
  CD_PRES VARCHAR2(32),
  ST_NM   VARCHAR2(50),
  ST_IMG  VARCHAR2(50),
  NM_OD   NUMBER(4),
  ST_APH  VARCHAR2(50),
  ST_EPH  VARCHAR2(50),
  NM_ISD  NUMBER(1)
)
tablespace SWZZ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table SWZZ.WT_SYS_RESOURCE
  is 'ϵͳ��Դ��Ϣ��';
comment on column SWZZ.WT_SYS_RESOURCE.CD_RES
  is '��Դ���';
comment on column SWZZ.WT_SYS_RESOURCE.CD_PRES
  is '������Դ���';
comment on column SWZZ.WT_SYS_RESOURCE.ST_NM
  is '��Դ����';
comment on column SWZZ.WT_SYS_RESOURCE.ST_IMG
  is '��Դͼ��';
comment on column SWZZ.WT_SYS_RESOURCE.NM_OD
  is '����';
comment on column SWZZ.WT_SYS_RESOURCE.ST_APH
  is '����·��';
comment on column SWZZ.WT_SYS_RESOURCE.ST_EPH
  is 'ά��·��';
comment on column SWZZ.WT_SYS_RESOURCE.NM_ISD
  is '�Ƿ����';
alter table SWZZ.WT_SYS_RESOURCE
  add constraint PK_WT_SYS_RESOURCE primary key (CD_RES)
  using index 
  tablespace SWZZ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table WT_SYS_ROLE
prompt ==========================
prompt
create table SWZZ.WT_SYS_ROLE
(
  CD_RL  VARCHAR2(32) not null,
  ST_NM  VARCHAR2(50),
  ST_DES VARCHAR2(500),
  NM_OD  NUMBER(4)
)
tablespace SWZZ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table SWZZ.WT_SYS_ROLE
  is '��ɫ��Ϣ��';
comment on column SWZZ.WT_SYS_ROLE.CD_RL
  is '��ɫ���';
comment on column SWZZ.WT_SYS_ROLE.ST_NM
  is '��ɫ����';
comment on column SWZZ.WT_SYS_ROLE.ST_DES
  is '��ɫ����';
comment on column SWZZ.WT_SYS_ROLE.NM_OD
  is '����';
alter table SWZZ.WT_SYS_ROLE
  add constraint PK_WT_SYS_ROLE primary key (CD_RL)
  using index 
  tablespace SWZZ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table WT_SYS_ROLERESOURCE
prompt ==================================
prompt
create table SWZZ.WT_SYS_ROLERESOURCE
(
  CD_RLRES VARCHAR2(32) not null,
  CD_RL    VARCHAR2(32),
  CD_RES   VARCHAR2(32)
)
tablespace SWZZ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table SWZZ.WT_SYS_ROLERESOURCE
  is 'ϵͳ�˵����ɫ��ϵ��';
comment on column SWZZ.WT_SYS_ROLERESOURCE.CD_RLRES
  is '��ϵ��ID';
comment on column SWZZ.WT_SYS_ROLERESOURCE.CD_RL
  is '��ɫID';
comment on column SWZZ.WT_SYS_ROLERESOURCE.CD_RES
  is '�˵�ID';
alter table SWZZ.WT_SYS_ROLERESOURCE
  add constraint PK_WT_SYS_ROLERESOURCE primary key (CD_RLRES)
  using index 
  tablespace SWZZ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table SWZZ.WT_SYS_ROLERESOURCE
  add constraint ROLEMENU_REF_MENU foreign key (CD_RES)
  references SWZZ.WT_SYS_RESOURCE (CD_RES)
  disable;
alter table SWZZ.WT_SYS_ROLERESOURCE
  add constraint ROLEMENU_REF_ROLE foreign key (CD_RL)
  references SWZZ.WT_SYS_ROLE (CD_RL)
  disable;

prompt
prompt Creating table WT_SYS_ROLEUSER
prompt ==============================
prompt
create table SWZZ.WT_SYS_ROLEUSER
(
  CD_USRL VARCHAR2(32) not null,
  CD_RL   VARCHAR2(32),
  CD_US   VARCHAR2(32)
)
tablespace SWZZ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 128K
    minextents 1
    maxextents unlimited
  );
comment on table SWZZ.WT_SYS_ROLEUSER
  is '��ɫ���û���ϵ��';
comment on column SWZZ.WT_SYS_ROLEUSER.CD_USRL
  is '��ϵ��ID';
comment on column SWZZ.WT_SYS_ROLEUSER.CD_RL
  is '��ɫID';
comment on column SWZZ.WT_SYS_ROLEUSER.CD_US
  is '�û�ID';
alter table SWZZ.WT_SYS_ROLEUSER
  add constraint PK_WT_SYS_ROLEUSER primary key (CD_USRL)
  using index 
  tablespace SWZZ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 128K
    minextents 1
    maxextents unlimited
  );
alter table SWZZ.WT_SYS_ROLEUSER
  add constraint ROELUSER_REF_ROLE foreign key (CD_RL)
  references SWZZ.WT_SYS_ROLE (CD_RL)
  disable;

prompt
prompt Creating table WT_SYS_USER
prompt ==========================
prompt
create table SWZZ.WT_SYS_USER
(
  CD_US     VARCHAR2(50) not null,
  CD_DP     VARCHAR2(50),
  CD_DT     VARCHAR2(32),
  ST_LGNM   VARCHAR2(20),
  ST_LGPS   VARCHAR2(32),
  ST_NM     VARCHAR2(20),
  NM_AGE    NUMBER(2),
  DT_BIR    DATE,
  ST_HTEL   VARCHAR2(8),
  ST_OTEL   VARCHAR2(8),
  ST_ATEL   VARCHAR2(4),
  ST_MTEL   VARCHAR2(12),
  ST_MSN    VARCHAR2(20),
  ST_QQ     VARCHAR2(20),
  ST_EMAIL  VARCHAR2(50),
  ST_IMGPH  VARCHAR2(100),
  NM_JOBLH  NUMBER(2),
  DT_CREATE DATE,
  DT_LG     DATE,
  DT_BKLG   DATE,
  NM_OD     NUMBER(4),
  ST_PCIP   VARCHAR2(15),
  ST_AREAID VARCHAR2(6),
  ST_ULVL   VARCHAR2(32),
  ST_STATUS VARCHAR2(4) default 1
)
tablespace SWZZ
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table SWZZ.WT_SYS_USER
  is '�û���';
comment on column SWZZ.WT_SYS_USER.CD_US
  is '�û����';
comment on column SWZZ.WT_SYS_USER.CD_DP
  is '���ű��';
comment on column SWZZ.WT_SYS_USER.CD_DT
  is 'ְ����';
comment on column SWZZ.WT_SYS_USER.ST_LGNM
  is '�û���';
comment on column SWZZ.WT_SYS_USER.ST_LGPS
  is '����';
comment on column SWZZ.WT_SYS_USER.ST_NM
  is '����';
comment on column SWZZ.WT_SYS_USER.NM_AGE
  is '����';
comment on column SWZZ.WT_SYS_USER.DT_BIR
  is '����';
comment on column SWZZ.WT_SYS_USER.ST_HTEL
  is '��ͥ�绰';
comment on column SWZZ.WT_SYS_USER.ST_OTEL
  is '�칫�绰';
comment on column SWZZ.WT_SYS_USER.ST_ATEL
  is '�ֻ���';
comment on column SWZZ.WT_SYS_USER.ST_MTEL
  is '�ֻ�';
comment on column SWZZ.WT_SYS_USER.ST_MSN
  is 'MSN';
comment on column SWZZ.WT_SYS_USER.ST_QQ
  is 'QQ';
comment on column SWZZ.WT_SYS_USER.ST_EMAIL
  is '����';
comment on column SWZZ.WT_SYS_USER.ST_IMGPH
  is '��Ƭ·��';
comment on column SWZZ.WT_SYS_USER.NM_JOBLH
  is '��������';
comment on column SWZZ.WT_SYS_USER.DT_CREATE
  is '����ʱ��';
comment on column SWZZ.WT_SYS_USER.DT_LG
  is '��¼ʱ��';
comment on column SWZZ.WT_SYS_USER.DT_BKLG
  is '�ϴε�¼ʱ��';
comment on column SWZZ.WT_SYS_USER.NM_OD
  is '����';
comment on column SWZZ.WT_SYS_USER.ST_PCIP
  is '�칫����IP';
comment on column SWZZ.WT_SYS_USER.ST_AREAID
  is '��������';
comment on column SWZZ.WT_SYS_USER.ST_ULVL
  is '�û���������';
comment on column SWZZ.WT_SYS_USER.ST_STATUS
  is '0��ʾ��ɾ��';
alter table SWZZ.WT_SYS_USER
  add constraint PK_WT_SYS_USER primary key (CD_US)
  using index 
  tablespace SWZZ
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table SWZZ.WT_SYS_USER
  add constraint REF_DEPT foreign key (CD_DP)
  references SWZZ.WT_SYS_DEPT (CD_DP)
  disable;
alter table SWZZ.WT_SYS_USER
  add constraint REF_DUTY foreign key (CD_DT)
  references SWZZ.WT_SYS_DUTY (CD_DT)
  disable;


spool off
