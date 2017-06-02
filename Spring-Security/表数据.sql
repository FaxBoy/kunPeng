prompt PL/SQL Developer import file
prompt Created on 2017��5��10�� by lenovo
set feedback off
set define off
prompt Disabling triggers for WT_SYS_RESOURCE...
alter table WT_SYS_RESOURCE disable all triggers;
prompt Disabling triggers for WT_SYS_ROLE...
alter table WT_SYS_ROLE disable all triggers;
prompt Disabling triggers for WT_SYS_ROLERESOURCE...
alter table WT_SYS_ROLERESOURCE disable all triggers;
prompt Disabling triggers for WT_SYS_ROLEUSER...
alter table WT_SYS_ROLEUSER disable all triggers;
prompt Disabling triggers for WT_SYS_USER...
alter table WT_SYS_USER disable all triggers;
prompt Deleting WT_SYS_USER...
delete from WT_SYS_USER;
commit;
prompt Deleting WT_SYS_ROLEUSER...
delete from WT_SYS_ROLEUSER;
commit;
prompt Deleting WT_SYS_ROLERESOURCE...
delete from WT_SYS_ROLERESOURCE;
commit;
prompt Deleting WT_SYS_ROLE...
delete from WT_SYS_ROLE;
commit;
prompt Deleting WT_SYS_RESOURCE...
delete from WT_SYS_RESOURCE;
commit;
prompt Loading WT_SYS_RESOURCE...
insert into WT_SYS_RESOURCE (CD_RES, CD_PRES, ST_NM, ST_IMG, NM_OD, ST_APH, ST_EPH, NM_ISD)
values ('RS_ROOT', '0', 'վ������ϵͳ', null, null, null, null, null);
insert into WT_SYS_RESOURCE (CD_RES, CD_PRES, ST_NM, ST_IMG, NM_OD, ST_APH, ST_EPH, NM_ISD)
values ('RS_L1_1', 'RS_ROOT', '�ۺ���Ϣ', null, null, '/index/map', null, null);
insert into WT_SYS_RESOURCE (CD_RES, CD_PRES, ST_NM, ST_IMG, NM_OD, ST_APH, ST_EPH, NM_ISD)
values ('RS_L1_2', 'RS_ROOT', '���ݲɼ�', null, null, null, null, null);
insert into WT_SYS_RESOURCE (CD_RES, CD_PRES, ST_NM, ST_IMG, NM_OD, ST_APH, ST_EPH, NM_ISD)
values ('RS_L1_3', 'RS_ROOT', 'վ������', null, null, null, null, null);
insert into WT_SYS_RESOURCE (CD_RES, CD_PRES, ST_NM, ST_IMG, NM_OD, ST_APH, ST_EPH, NM_ISD)
values ('RS_L1_4', 'RS_ROOT', '�豸����', null, null, null, null, null);
insert into WT_SYS_RESOURCE (CD_RES, CD_PRES, ST_NM, ST_IMG, NM_OD, ST_APH, ST_EPH, NM_ISD)
values ('RS_L1_5', 'RS_ROOT', '��ѯͳ��', null, null, null, null, null);
insert into WT_SYS_RESOURCE (CD_RES, CD_PRES, ST_NM, ST_IMG, NM_OD, ST_APH, ST_EPH, NM_ISD)
values ('RS_L1_6', 'RS_ROOT', '�ƶ��칫', null, null, null, null, null);
insert into WT_SYS_RESOURCE (CD_RES, CD_PRES, ST_NM, ST_IMG, NM_OD, ST_APH, ST_EPH, NM_ISD)
values ('RS_L1_7', 'RS_ROOT', 'ϵͳ����', null, null, null, null, null);
insert into WT_SYS_RESOURCE (CD_RES, CD_PRES, ST_NM, ST_IMG, NM_OD, ST_APH, ST_EPH, NM_ISD)
values ('RS_L2_T1_1', 'RS_L1_3', 'վ��ֲ�', null, null, null, null, null);
insert into WT_SYS_RESOURCE (CD_RES, CD_PRES, ST_NM, ST_IMG, NM_OD, ST_APH, ST_EPH, NM_ISD)
values ('RS_L2_T1_2', 'RS_L1_3', 'վ�����', null, null, '/stationManage/main', null, null);
insert into WT_SYS_RESOURCE (CD_RES, CD_PRES, ST_NM, ST_IMG, NM_OD, ST_APH, ST_EPH, NM_ISD)
values ('RS_L2_T1_3', 'RS_L1_3', '������ѯ', null, null, '/stationManage/alarmCzcx', null, null);
insert into WT_SYS_RESOURCE (CD_RES, CD_PRES, ST_NM, ST_IMG, NM_OD, ST_APH, ST_EPH, NM_ISD)
values ('RS_L2_T1_4', 'RS_L1_3', '����ͳ��', null, null, '/stationManage/alarmTj', null, null);
insert into WT_SYS_RESOURCE (CD_RES, CD_PRES, ST_NM, ST_IMG, NM_OD, ST_APH, ST_EPH, NM_ISD)
values ('RS_L2_T1_5', 'RS_L1_3', '�澯����', null, null, '/stationManage/alarmSet', null, null);
insert into WT_SYS_RESOURCE (CD_RES, CD_PRES, ST_NM, ST_IMG, NM_OD, ST_APH, ST_EPH, NM_ISD)
values ('RS_L2_T2_1', 'RS_L1_4', '�ֿ�ֲ�', null, null, '/deviceManage/mapStoreMgr', null, null);
insert into WT_SYS_RESOURCE (CD_RES, CD_PRES, ST_NM, ST_IMG, NM_OD, ST_APH, ST_EPH, NM_ISD)
values ('RS_L2_T2_2', 'RS_L1_4', '�ֿ����', null, null, '/deviceManage/cangkuMgr', null, null);
insert into WT_SYS_RESOURCE (CD_RES, CD_PRES, ST_NM, ST_IMG, NM_OD, ST_APH, ST_EPH, NM_ISD)
values ('RS_L2_T2_3', 'RS_L1_4', '�豸���', null, null, '/deviceManage/equistor', null, null);
insert into WT_SYS_RESOURCE (CD_RES, CD_PRES, ST_NM, ST_IMG, NM_OD, ST_APH, ST_EPH, NM_ISD)
values ('RS_L2_T2_4', 'RS_L1_4', '�豸����', null, null, '/deviceManage/equiware', null, null);
insert into WT_SYS_RESOURCE (CD_RES, CD_PRES, ST_NM, ST_IMG, NM_OD, ST_APH, ST_EPH, NM_ISD)
values ('RS_L2_T2_5', 'RS_L1_4', '�豸��ѯ', null, null, '/deviceManage/devinfo', null, null);
insert into WT_SYS_RESOURCE (CD_RES, CD_PRES, ST_NM, ST_IMG, NM_OD, ST_APH, ST_EPH, NM_ISD)
values ('RS_L2_T2_6', 'RS_L1_4', '�̵�ͳ��', null, null, '/deviceManage/devicetype', null, null);
insert into WT_SYS_RESOURCE (CD_RES, CD_PRES, ST_NM, ST_IMG, NM_OD, ST_APH, ST_EPH, NM_ISD)
values ('RS_L2_T6_1', 'RS_L1_2', 'Ѳ���¼', null, null, '/stationInfo/dtm', null, null);
insert into WT_SYS_RESOURCE (CD_RES, CD_PRES, ST_NM, ST_IMG, NM_OD, ST_APH, ST_EPH, NM_ISD)
values ('RS_L2_T6_2', 'RS_L1_2', '�豸������¼', null, null, '/stationInfo/sbgkjl', null, null);
insert into WT_SYS_RESOURCE (CD_RES, CD_PRES, ST_NM, ST_IMG, NM_OD, ST_APH, ST_EPH, NM_ISD)
values ('RS_L2_T6_3', 'RS_L1_2', '���ݽ���', null, null, '/stationInfo/datasink', null, null);
insert into WT_SYS_RESOURCE (CD_RES, CD_PRES, ST_NM, ST_IMG, NM_OD, ST_APH, ST_EPH, NM_ISD)
values ('RS_L2_T6_4', 'RS_L1_2', '�������ݲ�ѯ', null, null, '/stationInfo/ldq', null, null);
insert into WT_SYS_RESOURCE (CD_RES, CD_PRES, ST_NM, ST_IMG, NM_OD, ST_APH, ST_EPH, NM_ISD)
values ('RS_L2_T6_5', 'RS_L1_2', '��ʷ���Ĳ�ѯ', null, null, '/stationInfo/hmq', null, null);
insert into WT_SYS_RESOURCE (CD_RES, CD_PRES, ST_NM, ST_IMG, NM_OD, ST_APH, ST_EPH, NM_ISD)
values ('RS_L2_T6_6', 'RS_L1_2', 'վ��Զ������', null, null, '/stationInfo/siteset', null, null);
insert into WT_SYS_RESOURCE (CD_RES, CD_PRES, ST_NM, ST_IMG, NM_OD, ST_APH, ST_EPH, NM_ISD)
values ('RS_L2_T6_7', 'RS_L1_2', '��ʷ���ݲ�ѯ', null, null, '/stationInfo/histinq', null, null);
insert into WT_SYS_RESOURCE (CD_RES, CD_PRES, ST_NM, ST_IMG, NM_OD, ST_APH, ST_EPH, NM_ISD)
values ('RS_L2_T6_8', 'RS_L1_2', 'Զ���ٲ�', null, null, '/dataAqcquisition/rcm', null, null);
insert into WT_SYS_RESOURCE (CD_RES, CD_PRES, ST_NM, ST_IMG, NM_OD, ST_APH, ST_EPH, NM_ISD)
values ('RS_L2_T6_9', 'RS_L1_2', '״̬��ѯ', null, null, '/stationInfo/staenquiry', null, null);
insert into WT_SYS_RESOURCE (CD_RES, CD_PRES, ST_NM, ST_IMG, NM_OD, ST_APH, ST_EPH, NM_ISD)
values ('RS_L2_T6_10', 'RS_L1_2', 'ͨ������', null, null, '/stationInfo/gs', null, null);
insert into WT_SYS_RESOURCE (CD_RES, CD_PRES, ST_NM, ST_IMG, NM_OD, ST_APH, ST_EPH, NM_ISD)
values ('RS_L2_T6_11', 'RS_L1_2', '��վ����', null, null, '/stationInfo/staset', null, null);
insert into WT_SYS_RESOURCE (CD_RES, CD_PRES, ST_NM, ST_IMG, NM_OD, ST_APH, ST_EPH, NM_ISD)
values ('RS_L2_T6_12', 'RS_L1_2', '���ݵ���', null, null, '/stationInfo/dataimport', null, null);
insert into WT_SYS_RESOURCE (CD_RES, CD_PRES, ST_NM, ST_IMG, NM_OD, ST_APH, ST_EPH, NM_ISD)
values ('RS_L2_T6_13', 'RS_L1_2', 'Ȩ������', null, null, '/stationInfo/auth', null, null);
insert into WT_SYS_RESOURCE (CD_RES, CD_PRES, ST_NM, ST_IMG, NM_OD, ST_APH, ST_EPH, NM_ISD)
values ('RS_L2_T6_14', 'RS_L1_2', '��־����', null, null, '/stationInfo/log', null, null);
insert into WT_SYS_RESOURCE (CD_RES, CD_PRES, ST_NM, ST_IMG, NM_OD, ST_APH, ST_EPH, NM_ISD)
values ('RS_L2_T6_15', 'RS_L1_2', '���ݱ���', null, null, '/stationInfo/backup', null, null);
insert into WT_SYS_RESOURCE (CD_RES, CD_PRES, ST_NM, ST_IMG, NM_OD, ST_APH, ST_EPH, NM_ISD)
values ('RS_L2_T6_16', 'RS_L1_2', 'ʵʱ���', null, null, '/dataAqcquisition/ldq', null, null);
insert into WT_SYS_RESOURCE (CD_RES, CD_PRES, ST_NM, ST_IMG, NM_OD, ST_APH, ST_EPH, NM_ISD)
values ('RS_L2_T6_17', 'RS_L1_2', '��ʷ���', null, null, '/dataAqcquisition/hismon', null, null);
insert into WT_SYS_RESOURCE (CD_RES, CD_PRES, ST_NM, ST_IMG, NM_OD, ST_APH, ST_EPH, NM_ISD)
values ('RS_L2_T6_18', 'RS_L1_2', '�����ͳ��', null, null, '/dataAqcquisitionquisition/coms', null, null);
insert into WT_SYS_RESOURCE (CD_RES, CD_PRES, ST_NM, ST_IMG, NM_OD, ST_APH, ST_EPH, NM_ISD)
values ('RS_L2_T6_19', 'RS_L1_2', '��ʱ��ͳ��', null, null, '/dataAqcquisition/tims', null, null);
insert into WT_SYS_RESOURCE (CD_RES, CD_PRES, ST_NM, ST_IMG, NM_OD, ST_APH, ST_EPH, NM_ISD)
values ('RS_L2_T6_20', 'RS_L1_2', '���Ƶ������', null, null, '/dataAqcquisition/gs', null, null);
insert into WT_SYS_RESOURCE (CD_RES, CD_PRES, ST_NM, ST_IMG, NM_OD, ST_APH, ST_EPH, NM_ISD)
values ('RS_L2_T6_21', 'RS_L1_2', 'վ����������', null, null, '/dataAqcquisition/staset', null, null);
insert into WT_SYS_RESOURCE (CD_RES, CD_PRES, ST_NM, ST_IMG, NM_OD, ST_APH, ST_EPH, NM_ISD)
values ('RS_L2_T6_22', 'RS_L1_2', '��־��ѯ', null, null, '/dataAqcquisition/log', null, null);
insert into WT_SYS_RESOURCE (CD_RES, CD_PRES, ST_NM, ST_IMG, NM_OD, ST_APH, ST_EPH, NM_ISD)
values ('RS_L2_T6_23', 'RS_L1_2', '��������', null, null, '/stationInfo/backup', null, null);
insert into WT_SYS_RESOURCE (CD_RES, CD_PRES, ST_NM, ST_IMG, NM_OD, ST_APH, ST_EPH, NM_ISD)
values ('RS_L1_IDX', 'RS_ROOT', '��ҳ', null, null, '/home', null, null);
insert into WT_SYS_RESOURCE (CD_RES, CD_PRES, ST_NM, ST_IMG, NM_OD, ST_APH, ST_EPH, NM_ISD)
values ('RS_L2_T3_1', 'RS_L1_7', '�û�����', null, null, '/user', null, null);
insert into WT_SYS_RESOURCE (CD_RES, CD_PRES, ST_NM, ST_IMG, NM_OD, ST_APH, ST_EPH, NM_ISD)
values ('RS_L2_T3_2', 'RS_L1_7', '��ɫ����', null, null, '/role', null, null);
insert into WT_SYS_RESOURCE (CD_RES, CD_PRES, ST_NM, ST_IMG, NM_OD, ST_APH, ST_EPH, NM_ISD)
values ('RS_L2_T3_3', 'RS_L1_7', 'Ȩ�޹���', null, null, '/auth', null, null);
insert into WT_SYS_RESOURCE (CD_RES, CD_PRES, ST_NM, ST_IMG, NM_OD, ST_APH, ST_EPH, NM_ISD)
values ('RS_L2_T4_1', 'RS_L1_5', '��վ����ͳ��', null, null, '/queryInfo/stationrunning', null, null);
insert into WT_SYS_RESOURCE (CD_RES, CD_PRES, ST_NM, ST_IMG, NM_OD, ST_APH, ST_EPH, NM_ISD)
values ('RS_L2_T4_2', 'RS_L1_5', '��վ����ͳ��', null, null, '/queryInfo/stationfault', null, null);
insert into WT_SYS_RESOURCE (CD_RES, CD_PRES, ST_NM, ST_IMG, NM_OD, ST_APH, ST_EPH, NM_ISD)
values ('RS_L2_T4_3', 'RS_L1_5', '��վѲ��ͳ��', null, null, '/queryInfo/stationinspect', null, null);
insert into WT_SYS_RESOURCE (CD_RES, CD_PRES, ST_NM, ST_IMG, NM_OD, ST_APH, ST_EPH, NM_ISD)
values ('RS_L2_T5_1', 'RS_L1_6', 'ʵʱҵ����', null, null, '/moveWord/realtimebusi', null, null);
insert into WT_SYS_RESOURCE (CD_RES, CD_PRES, ST_NM, ST_IMG, NM_OD, ST_APH, ST_EPH, NM_ISD)
values ('RS_L2_T5_2', 'RS_L1_6', '��Ա����', null, null, '/moveWord/personaleval', null, null);
insert into WT_SYS_RESOURCE (CD_RES, CD_PRES, ST_NM, ST_IMG, NM_OD, ST_APH, ST_EPH, NM_ISD)
values ('RS_L2_T5_3', 'RS_L1_6', '��̨ά������', null, null, null, null, null);
insert into WT_SYS_RESOURCE (CD_RES, CD_PRES, ST_NM, ST_IMG, NM_OD, ST_APH, ST_EPH, NM_ISD)
values ('RS_L2_T5_4', 'RS_L1_6', '�ƶ��ն˹���', null, null, null, null, null);
insert into WT_SYS_RESOURCE (CD_RES, CD_PRES, ST_NM, ST_IMG, NM_OD, ST_APH, ST_EPH, NM_ISD)
values ('RS_L2_T5_5', 'RS_L1_6', '��־����', null, null, null, null, null);
insert into WT_SYS_RESOURCE (CD_RES, CD_PRES, ST_NM, ST_IMG, NM_OD, ST_APH, ST_EPH, NM_ISD)
values ('RS_L2_T1_2_B1', 'RS_L2_T1_2', 'վ�����', null, null, '/stationManage/add', null, null);
insert into WT_SYS_RESOURCE (CD_RES, CD_PRES, ST_NM, ST_IMG, NM_OD, ST_APH, ST_EPH, NM_ISD)
values ('RS_L2_T1_2_B2', 'RS_L2_T1_2', 'վ���޸�', null, null, '/stationManage/edit', null, null);
insert into WT_SYS_RESOURCE (CD_RES, CD_PRES, ST_NM, ST_IMG, NM_OD, ST_APH, ST_EPH, NM_ISD)
values ('RS_L2_T1_2_B3', 'RS_L2_T1_2', 'վ��ɾ��', null, null, '/stationManage/delete', null, null);
insert into WT_SYS_RESOURCE (CD_RES, CD_PRES, ST_NM, ST_IMG, NM_OD, ST_APH, ST_EPH, NM_ISD)
values ('RS_L2_T1_2_B4', 'RS_L2_T1_2', 'վ������', null, null, '/stationManage/detail', null, null);
insert into WT_SYS_RESOURCE (CD_RES, CD_PRES, ST_NM, ST_IMG, NM_OD, ST_APH, ST_EPH, NM_ISD)
values ('RS_L2_T1_5_B1', 'RS_L2_T1_5', '�澯��������Ȩ��', null, null, '/stationManage/setWarnParam', null, null);
insert into WT_SYS_RESOURCE (CD_RES, CD_PRES, ST_NM, ST_IMG, NM_OD, ST_APH, ST_EPH, NM_ISD)
values ('RS_L2_T2_2_B1', 'RS_L2_T2_2', '��Ӳֿ�', null, null, '/deviceManage/addCangku', null, null);
insert into WT_SYS_RESOURCE (CD_RES, CD_PRES, ST_NM, ST_IMG, NM_OD, ST_APH, ST_EPH, NM_ISD)
values ('RS_L2_T2_2_B2', 'RS_L2_T2_2', '�ֿ���ϸ', null, null, '/deviceManage/detailCangku', null, null);
insert into WT_SYS_RESOURCE (CD_RES, CD_PRES, ST_NM, ST_IMG, NM_OD, ST_APH, ST_EPH, NM_ISD)
values ('RS_L2_T2_2_B3', 'RS_L2_T2_2', '�ֿ�༭', null, null, '/deviceManage/editCangku', null, null);
insert into WT_SYS_RESOURCE (CD_RES, CD_PRES, ST_NM, ST_IMG, NM_OD, ST_APH, ST_EPH, NM_ISD)
values ('RS_L2_T2_2_B4', 'RS_L2_T2_2', 'ɾ���ֿ�', null, null, '/deviceManage/deleteCangku', null, null);
insert into WT_SYS_RESOURCE (CD_RES, CD_PRES, ST_NM, ST_IMG, NM_OD, ST_APH, ST_EPH, NM_ISD)
values ('RS_L2_T2_3_B1', 'RS_L2_T2_3', '����豸', null, null, '/deviceManage/add', null, null);
insert into WT_SYS_RESOURCE (CD_RES, CD_PRES, ST_NM, ST_IMG, NM_OD, ST_APH, ST_EPH, NM_ISD)
values ('RS_L2_T2_3_B2', 'RS_L2_T2_3', '�豸��ϸ', null, null, '/deviceManage/detailDevice', null, null);
insert into WT_SYS_RESOURCE (CD_RES, CD_PRES, ST_NM, ST_IMG, NM_OD, ST_APH, ST_EPH, NM_ISD)
values ('RS_L2_T2_3_B3', 'RS_L2_T2_3', '�豸�༭', null, null, '/deviceManage/editDevice', null, null);
insert into WT_SYS_RESOURCE (CD_RES, CD_PRES, ST_NM, ST_IMG, NM_OD, ST_APH, ST_EPH, NM_ISD)
values ('RS_L2_T2_3_B4', 'RS_L2_T2_3', 'ɾ���豸', null, null, '/deviceManage/delete', null, null);
insert into WT_SYS_RESOURCE (CD_RES, CD_PRES, ST_NM, ST_IMG, NM_OD, ST_APH, ST_EPH, NM_ISD)
values ('RS_L2_T2_4_B1', 'RS_L2_T2_4', '�豸�������Ȩ��', null, null, '/deviceManage/outDevice', null, null);
insert into WT_SYS_RESOURCE (CD_RES, CD_PRES, ST_NM, ST_IMG, NM_OD, ST_APH, ST_EPH, NM_ISD)
values ('RS_L2_T2_5_B1', 'RS_L2_T2_5', '�豸�㼣', null, null, '/deviceManage/deviceFootprint', null, null);
insert into WT_SYS_RESOURCE (CD_RES, CD_PRES, ST_NM, ST_IMG, NM_OD, ST_APH, ST_EPH, NM_ISD)
values ('RS_L2_IDX', 'RS_ROOT', '����ɾ��', null, null, '/common/delete', null, null);
commit;
prompt 70 records loaded
prompt Loading WT_SYS_ROLE...
insert into WT_SYS_ROLE (CD_RL, ST_NM, ST_DES, NM_OD)
values ('R1', '����Ա', 'ϵͳ����Ա', null);
insert into WT_SYS_ROLE (CD_RL, ST_NM, ST_DES, NM_OD)
values ('R2', 'ϵͳ����', 'ϵͳ���ʽ�ɫ', null);
insert into WT_SYS_ROLE (CD_RL, ST_NM, ST_DES, NM_OD)
values ('R3', '�ο�', '�οͽ�ɫ', null);
commit;
prompt 3 records loaded
prompt Loading WT_SYS_ROLERESOURCE...
insert into WT_SYS_ROLERESOURCE (CD_RLRES, CD_RL, CD_RES)
values ('2c92819e54187fd201541880c7b40001', 'R3', 'RS_L1_1');
insert into WT_SYS_ROLERESOURCE (CD_RLRES, CD_RL, CD_RES)
values ('2c92819e54187fd201541880c7bd0002', 'R3', 'RS_L1_2');
insert into WT_SYS_ROLERESOURCE (CD_RLRES, CD_RL, CD_RES)
values ('2c92819e54187fd201541880c7c60003', 'R3', 'RS_L1_3');
insert into WT_SYS_ROLERESOURCE (CD_RLRES, CD_RL, CD_RES)
values ('2c92819e54187fd201541880c7cf0004', 'R3', 'RS_L2_T1_1');
insert into WT_SYS_ROLERESOURCE (CD_RLRES, CD_RL, CD_RES)
values ('2c92819e54187fd201541880c7d80005', 'R3', 'RS_L2_T1_2');
insert into WT_SYS_ROLERESOURCE (CD_RLRES, CD_RL, CD_RES)
values ('2c92819e54187fd201541880c7e10006', 'R3', 'RS_L2_T1_3');
insert into WT_SYS_ROLERESOURCE (CD_RLRES, CD_RL, CD_RES)
values ('2c92819e54187fd201541880c7ea0007', 'R3', 'RS_L2_T1_4');
insert into WT_SYS_ROLERESOURCE (CD_RLRES, CD_RL, CD_RES)
values ('2c92819e54187fd201541880c7fe0008', 'R3', 'RS_L2_T1_5');
insert into WT_SYS_ROLERESOURCE (CD_RLRES, CD_RL, CD_RES)
values ('2c92819e54187fd201541880c8070009', 'R3', 'RS_L1_4');
insert into WT_SYS_ROLERESOURCE (CD_RLRES, CD_RL, CD_RES)
values ('2c92819e54187fd201541880c810000a', 'R3', 'RS_L2_T2_1');
insert into WT_SYS_ROLERESOURCE (CD_RLRES, CD_RL, CD_RES)
values ('2c92819e54187fd201541880c818000b', 'R3', 'RS_L2_T2_2');
insert into WT_SYS_ROLERESOURCE (CD_RLRES, CD_RL, CD_RES)
values ('2c92819e54187fd201541880c821000c', 'R3', 'RS_L2_T2_3');
insert into WT_SYS_ROLERESOURCE (CD_RLRES, CD_RL, CD_RES)
values ('2c92819e54187fd201541880c82a000d', 'R3', 'RS_L2_T2_4');
insert into WT_SYS_ROLERESOURCE (CD_RLRES, CD_RL, CD_RES)
values ('2c92819e54187fd201541880c833000e', 'R3', 'RS_L2_T2_5');
insert into WT_SYS_ROLERESOURCE (CD_RLRES, CD_RL, CD_RES)
values ('2c92819e54187fd201541880c83d000f', 'R3', 'RS_L2_T2_6');
insert into WT_SYS_ROLERESOURCE (CD_RLRES, CD_RL, CD_RES)
values ('2c92819e54187fd201541880c8460010', 'R3', 'RS_L1_5');
insert into WT_SYS_ROLERESOURCE (CD_RLRES, CD_RL, CD_RES)
values ('2c92819e54187fd201541880c84f0011', 'R3', 'RS_L2_T4_1');
insert into WT_SYS_ROLERESOURCE (CD_RLRES, CD_RL, CD_RES)
values ('2c92819e54187fd201541880c8570012', 'R3', 'RS_L2_T4_2');
insert into WT_SYS_ROLERESOURCE (CD_RLRES, CD_RL, CD_RES)
values ('2c92819e54187fd201541880c8610013', 'R3', 'RS_L2_T4_3');
insert into WT_SYS_ROLERESOURCE (CD_RLRES, CD_RL, CD_RES)
values ('2c92819e54187fd201541880c8690014', 'R3', 'RS_L1_6');
insert into WT_SYS_ROLERESOURCE (CD_RLRES, CD_RL, CD_RES)
values ('2c92819e54187fd201541880c8720015', 'R3', 'RS_L2_T5_1');
insert into WT_SYS_ROLERESOURCE (CD_RLRES, CD_RL, CD_RES)
values ('2c92819e54187fd201541880c87b0016', 'R3', 'RS_L2_T5_2');
insert into WT_SYS_ROLERESOURCE (CD_RLRES, CD_RL, CD_RES)
values ('2c92819e54187fd201541880c8840017', 'R3', 'RS_L2_T5_3');
insert into WT_SYS_ROLERESOURCE (CD_RLRES, CD_RL, CD_RES)
values ('2c92819e54187fd201541880c88d0018', 'R3', 'RS_L2_T5_4');
insert into WT_SYS_ROLERESOURCE (CD_RLRES, CD_RL, CD_RES)
values ('2c92819e54187fd201541880c8960019', 'R3', 'RS_L2_T5_5');
insert into WT_SYS_ROLERESOURCE (CD_RLRES, CD_RL, CD_RES)
values ('2c92819e54187fd201541880c89e001a', 'R3', 'RS_L1_7');
insert into WT_SYS_ROLERESOURCE (CD_RLRES, CD_RL, CD_RES)
values ('2c92819e54187fd201541880c8a7001b', 'R3', 'RS_L1_IDX');
insert into WT_SYS_ROLERESOURCE (CD_RLRES, CD_RL, CD_RES)
values ('2c9281ec54f10ee20154f10f94a6000a', 'R1', 'RS_L2_T6_8');
insert into WT_SYS_ROLERESOURCE (CD_RLRES, CD_RL, CD_RES)
values ('2c9281ec54f10ee20154f10f94af000b', 'R1', 'RS_L2_T6_9');
insert into WT_SYS_ROLERESOURCE (CD_RLRES, CD_RL, CD_RES)
values ('2c9281ec54f10ee20154f10f94b9000c', 'R1', 'RS_L2_T6_10');
insert into WT_SYS_ROLERESOURCE (CD_RLRES, CD_RL, CD_RES)
values ('2c9281ec54f10ee20154f10f94c3000d', 'R1', 'RS_L2_T6_11');
insert into WT_SYS_ROLERESOURCE (CD_RLRES, CD_RL, CD_RES)
values ('2c9281ec54f10ee20154f10f94cd000e', 'R1', 'RS_L2_T6_12');
insert into WT_SYS_ROLERESOURCE (CD_RLRES, CD_RL, CD_RES)
values ('2c9281ec54f10ee20154f10f94dc000f', 'R1', 'RS_L2_T6_13');
insert into WT_SYS_ROLERESOURCE (CD_RLRES, CD_RL, CD_RES)
values ('2c9281ec54f10ee20154f10f94e60010', 'R1', 'RS_L2_T6_14');
insert into WT_SYS_ROLERESOURCE (CD_RLRES, CD_RL, CD_RES)
values ('2c9281ec54f10ee20154f10f94f20011', 'R1', 'RS_L2_T6_15');
insert into WT_SYS_ROLERESOURCE (CD_RLRES, CD_RL, CD_RES)
values ('2c9281ec54f10ee20154f10f94fc0012', 'R1', 'RS_L2_T6_16');
insert into WT_SYS_ROLERESOURCE (CD_RLRES, CD_RL, CD_RES)
values ('2c9281ec54f10ee20154f10f95050013', 'R1', 'RS_L2_T6_17');
insert into WT_SYS_ROLERESOURCE (CD_RLRES, CD_RL, CD_RES)
values ('2c9281ec54f10ee20154f10f95100014', 'R1', 'RS_L2_T6_18');
insert into WT_SYS_ROLERESOURCE (CD_RLRES, CD_RL, CD_RES)
values ('2c9281ec54f10ee20154f10f951a0015', 'R1', 'RS_L2_T6_19');
insert into WT_SYS_ROLERESOURCE (CD_RLRES, CD_RL, CD_RES)
values ('2c9281ec54f10ee20154f10f95250016', 'R1', 'RS_L2_T6_20');
insert into WT_SYS_ROLERESOURCE (CD_RLRES, CD_RL, CD_RES)
values ('2c9281ec54f10ee20154f10f952e0017', 'R1', 'RS_L2_T6_21');
insert into WT_SYS_ROLERESOURCE (CD_RLRES, CD_RL, CD_RES)
values ('2c9281ec54f10ee20154f10f95390018', 'R1', 'RS_L2_T6_22');
insert into WT_SYS_ROLERESOURCE (CD_RLRES, CD_RL, CD_RES)
values ('2c9281ec54f10ee20154f10f95450019', 'R1', 'RS_L2_T6_23');
insert into WT_SYS_ROLERESOURCE (CD_RLRES, CD_RL, CD_RES)
values ('2c9281ec54f10ee20154f10f954f001a', 'R1', 'RS_L1_3');
insert into WT_SYS_ROLERESOURCE (CD_RLRES, CD_RL, CD_RES)
values ('2c9281ec54f10ee20154f10f9558001b', 'R1', 'RS_L2_T1_1');
insert into WT_SYS_ROLERESOURCE (CD_RLRES, CD_RL, CD_RES)
values ('2c9281ec54f10ee20154f10f9562001c', 'R1', 'RS_L2_T1_2');
insert into WT_SYS_ROLERESOURCE (CD_RLRES, CD_RL, CD_RES)
values ('2c9281ec54f10ee20154f10f956c001d', 'R1', 'RS_L2_T1_2_B1');
insert into WT_SYS_ROLERESOURCE (CD_RLRES, CD_RL, CD_RES)
values ('2c9281ec54f10ee20154f10f9576001e', 'R1', 'RS_L2_T1_2_B2');
insert into WT_SYS_ROLERESOURCE (CD_RLRES, CD_RL, CD_RES)
values ('2c9281ec54f10ee20154f10f957f001f', 'R1', 'RS_L2_T1_2_B3');
insert into WT_SYS_ROLERESOURCE (CD_RLRES, CD_RL, CD_RES)
values ('2c9281ec54f10ee20154f10f95890020', 'R1', 'RS_L2_T1_2_B4');
insert into WT_SYS_ROLERESOURCE (CD_RLRES, CD_RL, CD_RES)
values ('2c9281ec54f10ee20154f10f95930021', 'R1', 'RS_L2_T1_3');
insert into WT_SYS_ROLERESOURCE (CD_RLRES, CD_RL, CD_RES)
values ('2c9281ec54f10ee20154f10f959d0022', 'R1', 'RS_L2_T1_4');
insert into WT_SYS_ROLERESOURCE (CD_RLRES, CD_RL, CD_RES)
values ('2c9281ec54f10ee20154f10f95a70023', 'R1', 'RS_L2_T1_5');
insert into WT_SYS_ROLERESOURCE (CD_RLRES, CD_RL, CD_RES)
values ('2c9281ec54f10ee20154f10f95b00024', 'R1', 'RS_L2_T1_5_B1');
insert into WT_SYS_ROLERESOURCE (CD_RLRES, CD_RL, CD_RES)
values ('2c9281ec54f10ee20154f10f95ba0025', 'R1', 'RS_L1_4');
insert into WT_SYS_ROLERESOURCE (CD_RLRES, CD_RL, CD_RES)
values ('2c9281ec54f10ee20154f10f95c50026', 'R1', 'RS_L2_T2_1');
insert into WT_SYS_ROLERESOURCE (CD_RLRES, CD_RL, CD_RES)
values ('2c9281ec54f10ee20154f10f95d00027', 'R1', 'RS_L2_T2_2');
insert into WT_SYS_ROLERESOURCE (CD_RLRES, CD_RL, CD_RES)
values ('2c9281ec54f10ee20154f10f95d90028', 'R1', 'RS_L2_T2_2_B1');
insert into WT_SYS_ROLERESOURCE (CD_RLRES, CD_RL, CD_RES)
values ('2c92819e54187fd201541880c7930000', 'R3', 'RS_ROOT');
insert into WT_SYS_ROLERESOURCE (CD_RLRES, CD_RL, CD_RES)
values ('2c9281ec54f10ee20154f10f94360000', 'R1', 'RS_ROOT');
insert into WT_SYS_ROLERESOURCE (CD_RLRES, CD_RL, CD_RES)
values ('2c9281ec54f10ee20154f10f944c0001', 'R1', 'RS_L1_1');
insert into WT_SYS_ROLERESOURCE (CD_RLRES, CD_RL, CD_RES)
values ('2c9281ec54f10ee20154f10f94560002', 'R1', 'RS_L1_2');
insert into WT_SYS_ROLERESOURCE (CD_RLRES, CD_RL, CD_RES)
values ('2c9281ec54f10ee20154f10f94600003', 'R1', 'RS_L2_T6_1');
insert into WT_SYS_ROLERESOURCE (CD_RLRES, CD_RL, CD_RES)
values ('2c9281ec54f10ee20154f10f946b0004', 'R1', 'RS_L2_T6_2');
insert into WT_SYS_ROLERESOURCE (CD_RLRES, CD_RL, CD_RES)
values ('2c9281ec54f10ee20154f10f94750005', 'R1', 'RS_L2_T6_3');
insert into WT_SYS_ROLERESOURCE (CD_RLRES, CD_RL, CD_RES)
values ('2c9281ec54f10ee20154f10f947f0006', 'R1', 'RS_L2_T6_4');
insert into WT_SYS_ROLERESOURCE (CD_RLRES, CD_RL, CD_RES)
values ('2c9281ec54f10ee20154f10f94880007', 'R1', 'RS_L2_T6_5');
insert into WT_SYS_ROLERESOURCE (CD_RLRES, CD_RL, CD_RES)
values ('2c9281ec54f10ee20154f10f94920008', 'R1', 'RS_L2_T6_6');
insert into WT_SYS_ROLERESOURCE (CD_RLRES, CD_RL, CD_RES)
values ('2c9281ec54f10ee20154f10f949c0009', 'R1', 'RS_L2_T6_7');
insert into WT_SYS_ROLERESOURCE (CD_RLRES, CD_RL, CD_RES)
values ('2c9281ec54f10ee20154f10f95e40029', 'R1', 'RS_L2_T2_2_B2');
insert into WT_SYS_ROLERESOURCE (CD_RLRES, CD_RL, CD_RES)
values ('2c9281ec54f10ee20154f10f95ed002a', 'R1', 'RS_L2_T2_2_B3');
insert into WT_SYS_ROLERESOURCE (CD_RLRES, CD_RL, CD_RES)
values ('2c9281ec54f10ee20154f10f95f7002b', 'R1', 'RS_L2_T2_2_B4');
insert into WT_SYS_ROLERESOURCE (CD_RLRES, CD_RL, CD_RES)
values ('2c9281ec54f10ee20154f10f9600002c', 'R1', 'RS_L2_T2_3');
insert into WT_SYS_ROLERESOURCE (CD_RLRES, CD_RL, CD_RES)
values ('2c9281ec54f10ee20154f10f960a002d', 'R1', 'RS_L2_T2_3_B1');
insert into WT_SYS_ROLERESOURCE (CD_RLRES, CD_RL, CD_RES)
values ('2c9281ec54f10ee20154f10f9617002e', 'R1', 'RS_L2_T2_3_B2');
insert into WT_SYS_ROLERESOURCE (CD_RLRES, CD_RL, CD_RES)
values ('2c9281ec54f10ee20154f10f962a002f', 'R1', 'RS_L2_T2_3_B3');
insert into WT_SYS_ROLERESOURCE (CD_RLRES, CD_RL, CD_RES)
values ('2c9281ec54f10ee20154f10f96330030', 'R1', 'RS_L2_T2_3_B4');
insert into WT_SYS_ROLERESOURCE (CD_RLRES, CD_RL, CD_RES)
values ('2c9281ec54f10ee20154f10f963d0031', 'R1', 'RS_L2_T2_4');
insert into WT_SYS_ROLERESOURCE (CD_RLRES, CD_RL, CD_RES)
values ('2c9281ec54f10ee20154f10f96470032', 'R1', 'RS_L2_T2_4_B1');
insert into WT_SYS_ROLERESOURCE (CD_RLRES, CD_RL, CD_RES)
values ('2c9281ec54f10ee20154f10f96510033', 'R1', 'RS_L2_T2_5');
insert into WT_SYS_ROLERESOURCE (CD_RLRES, CD_RL, CD_RES)
values ('2c9281ec54f10ee20154f10f965b0034', 'R1', 'RS_L2_T2_5_B1');
insert into WT_SYS_ROLERESOURCE (CD_RLRES, CD_RL, CD_RES)
values ('2c9281ec54f10ee20154f10f96640035', 'R1', 'RS_L2_T2_6');
insert into WT_SYS_ROLERESOURCE (CD_RLRES, CD_RL, CD_RES)
values ('2c9281ec54f10ee20154f10f966e0036', 'R1', 'RS_L1_5');
insert into WT_SYS_ROLERESOURCE (CD_RLRES, CD_RL, CD_RES)
values ('2c9281ec54f10ee20154f10f96780037', 'R1', 'RS_L2_T4_1');
insert into WT_SYS_ROLERESOURCE (CD_RLRES, CD_RL, CD_RES)
values ('2c9281ec54f10ee20154f10f96810038', 'R1', 'RS_L2_T4_2');
insert into WT_SYS_ROLERESOURCE (CD_RLRES, CD_RL, CD_RES)
values ('2c9281ec54f10ee20154f10f968b0039', 'R1', 'RS_L2_T4_3');
insert into WT_SYS_ROLERESOURCE (CD_RLRES, CD_RL, CD_RES)
values ('2c9281ec54f10ee20154f10f9694003a', 'R1', 'RS_L1_6');
insert into WT_SYS_ROLERESOURCE (CD_RLRES, CD_RL, CD_RES)
values ('2c9281ec54f10ee20154f10f969e003b', 'R1', 'RS_L2_T5_1');
insert into WT_SYS_ROLERESOURCE (CD_RLRES, CD_RL, CD_RES)
values ('2c9281ec54f10ee20154f10f96a8003c', 'R1', 'RS_L2_T5_2');
insert into WT_SYS_ROLERESOURCE (CD_RLRES, CD_RL, CD_RES)
values ('2c9281ec54f10ee20154f10f96b1003d', 'R1', 'RS_L2_T5_3');
insert into WT_SYS_ROLERESOURCE (CD_RLRES, CD_RL, CD_RES)
values ('2c9281ec54f10ee20154f10f96bc003e', 'R1', 'RS_L2_T5_4');
insert into WT_SYS_ROLERESOURCE (CD_RLRES, CD_RL, CD_RES)
values ('2c9281ec54f10ee20154f10f96c6003f', 'R1', 'RS_L2_T5_5');
insert into WT_SYS_ROLERESOURCE (CD_RLRES, CD_RL, CD_RES)
values ('2c9281ec54f10ee20154f10f96d00040', 'R1', 'RS_L1_7');
insert into WT_SYS_ROLERESOURCE (CD_RLRES, CD_RL, CD_RES)
values ('2c9281ec54f10ee20154f10f96e40041', 'R1', 'RS_L2_T3_1');
insert into WT_SYS_ROLERESOURCE (CD_RLRES, CD_RL, CD_RES)
values ('2c9281ec54f10ee20154f10f96ef0042', 'R1', 'RS_L2_T3_2');
insert into WT_SYS_ROLERESOURCE (CD_RLRES, CD_RL, CD_RES)
values ('2c9281ec54f10ee20154f10f96f90043', 'R1', 'RS_L2_T3_3');
insert into WT_SYS_ROLERESOURCE (CD_RLRES, CD_RL, CD_RES)
values ('2c9281ec54f10ee20154f10f97030044', 'R1', 'RS_L1_IDX');
insert into WT_SYS_ROLERESOURCE (CD_RLRES, CD_RL, CD_RES)
values ('2c9281ec54f10ee20154f10f970c0045', 'R1', 'RS_L2_IDX');
commit;
prompt 98 records loaded
prompt Loading WT_SYS_ROLEUSER...
insert into WT_SYS_ROLEUSER (CD_USRL, CD_RL, CD_US)
values ('2c92819e541857e10154186063210002', 'R1', '2c92819e541857e10154185a7ca60000');
insert into WT_SYS_ROLEUSER (CD_USRL, CD_RL, CD_US)
values ('2c9281a755717f940155718f5e230000', 'R3', '1');
insert into WT_SYS_ROLEUSER (CD_USRL, CD_RL, CD_US)
values ('2c9281a755717f940155718f5e350001', 'R3', '2c9281a75571437201557148351a0000');
commit;
prompt 3 records loaded
prompt Loading WT_SYS_USER...
insert into WT_SYS_USER (CD_US, CD_DP, CD_DT, ST_LGNM, ST_LGPS, ST_NM, NM_AGE, DT_BIR, ST_HTEL, ST_OTEL, ST_ATEL, ST_MTEL, ST_MSN, ST_QQ, ST_EMAIL, ST_IMGPH, NM_JOBLH, DT_CREATE, DT_LG, DT_BKLG, NM_OD, ST_PCIP, ST_AREAID, ST_ULVL, ST_STATUS)
values ('1', 'D_L1_T1_1', 'DUTY_1', 'guest', '4374b34a906572d75a72ebf3fbed5146', '�����', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1');
insert into WT_SYS_USER (CD_US, CD_DP, CD_DT, ST_LGNM, ST_LGPS, ST_NM, NM_AGE, DT_BIR, ST_HTEL, ST_OTEL, ST_ATEL, ST_MTEL, ST_MSN, ST_QQ, ST_EMAIL, ST_IMGPH, NM_JOBLH, DT_CREATE, DT_LG, DT_BKLG, NM_OD, ST_PCIP, ST_AREAID, ST_ULVL, ST_STATUS)
values ('2c9281a75571437201557148351a0000', 'D_L1_T1_1', 'DUTY_1', 'guest12', '7f9c50f01ec146c628a0aeaf97787789', '����1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1');
insert into WT_SYS_USER (CD_US, CD_DP, CD_DT, ST_LGNM, ST_LGPS, ST_NM, NM_AGE, DT_BIR, ST_HTEL, ST_OTEL, ST_ATEL, ST_MTEL, ST_MSN, ST_QQ, ST_EMAIL, ST_IMGPH, NM_JOBLH, DT_CREATE, DT_LG, DT_BKLG, NM_OD, ST_PCIP, ST_AREAID, ST_ULVL, ST_STATUS)
values ('2c9281a75571437201557148ddc10001', 'D_L1_T1_1', 'DUTY_2', 'guest1', 'df6a35a5a4c4922b07cff4b134d1ae1c', '����', null, null, null, null, null, '111', null, null, '222', null, null, null, null, null, null, null, null, null, '0');
insert into WT_SYS_USER (CD_US, CD_DP, CD_DT, ST_LGNM, ST_LGPS, ST_NM, NM_AGE, DT_BIR, ST_HTEL, ST_OTEL, ST_ATEL, ST_MTEL, ST_MSN, ST_QQ, ST_EMAIL, ST_IMGPH, NM_JOBLH, DT_CREATE, DT_LG, DT_BKLG, NM_OD, ST_PCIP, ST_AREAID, ST_ULVL, ST_STATUS)
values ('2c92819e541857e10154185a7ca60000', 'D_L1_T1_1', 'DUTY_2', 'admin', 'ceb4f32325eda6142bd65215f4c0f371', '���', null, null, null, null, null, '123', null, null, '123', null, null, null, null, null, null, null, null, null, '1');
insert into WT_SYS_USER (CD_US, CD_DP, CD_DT, ST_LGNM, ST_LGPS, ST_NM, NM_AGE, DT_BIR, ST_HTEL, ST_OTEL, ST_ATEL, ST_MTEL, ST_MSN, ST_QQ, ST_EMAIL, ST_IMGPH, NM_JOBLH, DT_CREATE, DT_LG, DT_BKLG, NM_OD, ST_PCIP, ST_AREAID, ST_ULVL, ST_STATUS)
values ('2c92819e541857e10154185c0b780001', 'D_L1_T1_1', 'DUTY_2', 'tester', '35c72ba093ecaadf6462438618fd5859', '�����û�', null, null, null, null, null, '123', null, null, '123', null, null, null, null, null, null, null, null, null, '1');
insert into WT_SYS_USER (CD_US, CD_DP, CD_DT, ST_LGNM, ST_LGPS, ST_NM, NM_AGE, DT_BIR, ST_HTEL, ST_OTEL, ST_ATEL, ST_MTEL, ST_MSN, ST_QQ, ST_EMAIL, ST_IMGPH, NM_JOBLH, DT_CREATE, DT_LG, DT_BKLG, NM_OD, ST_PCIP, ST_AREAID, ST_ULVL, ST_STATUS)
values ('2c9281a7557154160155715a35ec0000', 'D_L1_T1_1', 'DUTY_2', 'guest48', '379e1e840e14c0ebe4ae6200a5c18c74', '49', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
commit;
prompt 6 records loaded
prompt Enabling triggers for WT_SYS_RESOURCE...
alter table WT_SYS_RESOURCE enable all triggers;
prompt Enabling triggers for WT_SYS_ROLE...
alter table WT_SYS_ROLE enable all triggers;
prompt Enabling triggers for WT_SYS_ROLERESOURCE...
alter table WT_SYS_ROLERESOURCE enable all triggers;
prompt Enabling triggers for WT_SYS_ROLEUSER...
alter table WT_SYS_ROLEUSER enable all triggers;
prompt Enabling triggers for WT_SYS_USER...
alter table WT_SYS_USER enable all triggers;
set feedback on
set define on
prompt Done.
