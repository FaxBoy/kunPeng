prompt PL/SQL Developer import file
prompt Created on 2017年5月10日 by lenovo
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
values ('RS_ROOT', '0', '站网管理系统', null, null, null, null, null);
insert into WT_SYS_RESOURCE (CD_RES, CD_PRES, ST_NM, ST_IMG, NM_OD, ST_APH, ST_EPH, NM_ISD)
values ('RS_L1_1', 'RS_ROOT', '综合信息', null, null, '/index/map', null, null);
insert into WT_SYS_RESOURCE (CD_RES, CD_PRES, ST_NM, ST_IMG, NM_OD, ST_APH, ST_EPH, NM_ISD)
values ('RS_L1_2', 'RS_ROOT', '数据采集', null, null, null, null, null);
insert into WT_SYS_RESOURCE (CD_RES, CD_PRES, ST_NM, ST_IMG, NM_OD, ST_APH, ST_EPH, NM_ISD)
values ('RS_L1_3', 'RS_ROOT', '站网管理', null, null, null, null, null);
insert into WT_SYS_RESOURCE (CD_RES, CD_PRES, ST_NM, ST_IMG, NM_OD, ST_APH, ST_EPH, NM_ISD)
values ('RS_L1_4', 'RS_ROOT', '设备管理', null, null, null, null, null);
insert into WT_SYS_RESOURCE (CD_RES, CD_PRES, ST_NM, ST_IMG, NM_OD, ST_APH, ST_EPH, NM_ISD)
values ('RS_L1_5', 'RS_ROOT', '查询统计', null, null, null, null, null);
insert into WT_SYS_RESOURCE (CD_RES, CD_PRES, ST_NM, ST_IMG, NM_OD, ST_APH, ST_EPH, NM_ISD)
values ('RS_L1_6', 'RS_ROOT', '移动办公', null, null, null, null, null);
insert into WT_SYS_RESOURCE (CD_RES, CD_PRES, ST_NM, ST_IMG, NM_OD, ST_APH, ST_EPH, NM_ISD)
values ('RS_L1_7', 'RS_ROOT', '系统管理', null, null, null, null, null);
insert into WT_SYS_RESOURCE (CD_RES, CD_PRES, ST_NM, ST_IMG, NM_OD, ST_APH, ST_EPH, NM_ISD)
values ('RS_L2_T1_1', 'RS_L1_3', '站点分布', null, null, null, null, null);
insert into WT_SYS_RESOURCE (CD_RES, CD_PRES, ST_NM, ST_IMG, NM_OD, ST_APH, ST_EPH, NM_ISD)
values ('RS_L2_T1_2', 'RS_L1_3', '站点管理', null, null, '/stationManage/main', null, null);
insert into WT_SYS_RESOURCE (CD_RES, CD_PRES, ST_NM, ST_IMG, NM_OD, ST_APH, ST_EPH, NM_ISD)
values ('RS_L2_T1_3', 'RS_L1_3', '处警查询', null, null, '/stationManage/alarmCzcx', null, null);
insert into WT_SYS_RESOURCE (CD_RES, CD_PRES, ST_NM, ST_IMG, NM_OD, ST_APH, ST_EPH, NM_ISD)
values ('RS_L2_T1_4', 'RS_L1_3', '故障统计', null, null, '/stationManage/alarmTj', null, null);
insert into WT_SYS_RESOURCE (CD_RES, CD_PRES, ST_NM, ST_IMG, NM_OD, ST_APH, ST_EPH, NM_ISD)
values ('RS_L2_T1_5', 'RS_L1_3', '告警设置', null, null, '/stationManage/alarmSet', null, null);
insert into WT_SYS_RESOURCE (CD_RES, CD_PRES, ST_NM, ST_IMG, NM_OD, ST_APH, ST_EPH, NM_ISD)
values ('RS_L2_T2_1', 'RS_L1_4', '仓库分布', null, null, '/deviceManage/mapStoreMgr', null, null);
insert into WT_SYS_RESOURCE (CD_RES, CD_PRES, ST_NM, ST_IMG, NM_OD, ST_APH, ST_EPH, NM_ISD)
values ('RS_L2_T2_2', 'RS_L1_4', '仓库管理', null, null, '/deviceManage/cangkuMgr', null, null);
insert into WT_SYS_RESOURCE (CD_RES, CD_PRES, ST_NM, ST_IMG, NM_OD, ST_APH, ST_EPH, NM_ISD)
values ('RS_L2_T2_3', 'RS_L1_4', '设备入库', null, null, '/deviceManage/equistor', null, null);
insert into WT_SYS_RESOURCE (CD_RES, CD_PRES, ST_NM, ST_IMG, NM_OD, ST_APH, ST_EPH, NM_ISD)
values ('RS_L2_T2_4', 'RS_L1_4', '设备出库', null, null, '/deviceManage/equiware', null, null);
insert into WT_SYS_RESOURCE (CD_RES, CD_PRES, ST_NM, ST_IMG, NM_OD, ST_APH, ST_EPH, NM_ISD)
values ('RS_L2_T2_5', 'RS_L1_4', '设备查询', null, null, '/deviceManage/devinfo', null, null);
insert into WT_SYS_RESOURCE (CD_RES, CD_PRES, ST_NM, ST_IMG, NM_OD, ST_APH, ST_EPH, NM_ISD)
values ('RS_L2_T2_6', 'RS_L1_4', '盘点统计', null, null, '/deviceManage/devicetype', null, null);
insert into WT_SYS_RESOURCE (CD_RES, CD_PRES, ST_NM, ST_IMG, NM_OD, ST_APH, ST_EPH, NM_ISD)
values ('RS_L2_T6_1', 'RS_L1_2', '巡检记录', null, null, '/stationInfo/dtm', null, null);
insert into WT_SYS_RESOURCE (CD_RES, CD_PRES, ST_NM, ST_IMG, NM_OD, ST_APH, ST_EPH, NM_ISD)
values ('RS_L2_T6_2', 'RS_L1_2', '设备工况记录', null, null, '/stationInfo/sbgkjl', null, null);
insert into WT_SYS_RESOURCE (CD_RES, CD_PRES, ST_NM, ST_IMG, NM_OD, ST_APH, ST_EPH, NM_ISD)
values ('RS_L2_T6_3', 'RS_L1_2', '数据接收', null, null, '/stationInfo/datasink', null, null);
insert into WT_SYS_RESOURCE (CD_RES, CD_PRES, ST_NM, ST_IMG, NM_OD, ST_APH, ST_EPH, NM_ISD)
values ('RS_L2_T6_4', 'RS_L1_2', '最新数据查询', null, null, '/stationInfo/ldq', null, null);
insert into WT_SYS_RESOURCE (CD_RES, CD_PRES, ST_NM, ST_IMG, NM_OD, ST_APH, ST_EPH, NM_ISD)
values ('RS_L2_T6_5', 'RS_L1_2', '历史报文查询', null, null, '/stationInfo/hmq', null, null);
insert into WT_SYS_RESOURCE (CD_RES, CD_PRES, ST_NM, ST_IMG, NM_OD, ST_APH, ST_EPH, NM_ISD)
values ('RS_L2_T6_6', 'RS_L1_2', '站点远程设置', null, null, '/stationInfo/siteset', null, null);
insert into WT_SYS_RESOURCE (CD_RES, CD_PRES, ST_NM, ST_IMG, NM_OD, ST_APH, ST_EPH, NM_ISD)
values ('RS_L2_T6_7', 'RS_L1_2', '历史数据查询', null, null, '/stationInfo/histinq', null, null);
insert into WT_SYS_RESOURCE (CD_RES, CD_PRES, ST_NM, ST_IMG, NM_OD, ST_APH, ST_EPH, NM_ISD)
values ('RS_L2_T6_8', 'RS_L1_2', '远程召测', null, null, '/dataAqcquisition/rcm', null, null);
insert into WT_SYS_RESOURCE (CD_RES, CD_PRES, ST_NM, ST_IMG, NM_OD, ST_APH, ST_EPH, NM_ISD)
values ('RS_L2_T6_9', 'RS_L1_2', '状态查询', null, null, '/stationInfo/staenquiry', null, null);
insert into WT_SYS_RESOURCE (CD_RES, CD_PRES, ST_NM, ST_IMG, NM_OD, ST_APH, ST_EPH, NM_ISD)
values ('RS_L2_T6_10', 'RS_L1_2', '通用设置', null, null, '/stationInfo/gs', null, null);
insert into WT_SYS_RESOURCE (CD_RES, CD_PRES, ST_NM, ST_IMG, NM_OD, ST_APH, ST_EPH, NM_ISD)
values ('RS_L2_T6_11', 'RS_L1_2', '测站设置', null, null, '/stationInfo/staset', null, null);
insert into WT_SYS_RESOURCE (CD_RES, CD_PRES, ST_NM, ST_IMG, NM_OD, ST_APH, ST_EPH, NM_ISD)
values ('RS_L2_T6_12', 'RS_L1_2', '数据导入', null, null, '/stationInfo/dataimport', null, null);
insert into WT_SYS_RESOURCE (CD_RES, CD_PRES, ST_NM, ST_IMG, NM_OD, ST_APH, ST_EPH, NM_ISD)
values ('RS_L2_T6_13', 'RS_L1_2', '权限设置', null, null, '/stationInfo/auth', null, null);
insert into WT_SYS_RESOURCE (CD_RES, CD_PRES, ST_NM, ST_IMG, NM_OD, ST_APH, ST_EPH, NM_ISD)
values ('RS_L2_T6_14', 'RS_L1_2', '日志管理', null, null, '/stationInfo/log', null, null);
insert into WT_SYS_RESOURCE (CD_RES, CD_PRES, ST_NM, ST_IMG, NM_OD, ST_APH, ST_EPH, NM_ISD)
values ('RS_L2_T6_15', 'RS_L1_2', '数据备份', null, null, '/stationInfo/backup', null, null);
insert into WT_SYS_RESOURCE (CD_RES, CD_PRES, ST_NM, ST_IMG, NM_OD, ST_APH, ST_EPH, NM_ISD)
values ('RS_L2_T6_16', 'RS_L1_2', '实时监测', null, null, '/dataAqcquisition/ldq', null, null);
insert into WT_SYS_RESOURCE (CD_RES, CD_PRES, ST_NM, ST_IMG, NM_OD, ST_APH, ST_EPH, NM_ISD)
values ('RS_L2_T6_17', 'RS_L1_2', '历史监测', null, null, '/dataAqcquisition/hismon', null, null);
insert into WT_SYS_RESOURCE (CD_RES, CD_PRES, ST_NM, ST_IMG, NM_OD, ST_APH, ST_EPH, NM_ISD)
values ('RS_L2_T6_18', 'RS_L1_2', '完成性统计', null, null, '/dataAqcquisitionquisition/coms', null, null);
insert into WT_SYS_RESOURCE (CD_RES, CD_PRES, ST_NM, ST_IMG, NM_OD, ST_APH, ST_EPH, NM_ISD)
values ('RS_L2_T6_19', 'RS_L1_2', '及时性统计', null, null, '/dataAqcquisition/tims', null, null);
insert into WT_SYS_RESOURCE (CD_RES, CD_PRES, ST_NM, ST_IMG, NM_OD, ST_APH, ST_EPH, NM_ISD)
values ('RS_L2_T6_20', 'RS_L1_2', '监测频率设置', null, null, '/dataAqcquisition/gs', null, null);
insert into WT_SYS_RESOURCE (CD_RES, CD_PRES, ST_NM, ST_IMG, NM_OD, ST_APH, ST_EPH, NM_ISD)
values ('RS_L2_T6_21', 'RS_L1_2', '站点类型设置', null, null, '/dataAqcquisition/staset', null, null);
insert into WT_SYS_RESOURCE (CD_RES, CD_PRES, ST_NM, ST_IMG, NM_OD, ST_APH, ST_EPH, NM_ISD)
values ('RS_L2_T6_22', 'RS_L1_2', '日志查询', null, null, '/dataAqcquisition/log', null, null);
insert into WT_SYS_RESOURCE (CD_RES, CD_PRES, ST_NM, ST_IMG, NM_OD, ST_APH, ST_EPH, NM_ISD)
values ('RS_L2_T6_23', 'RS_L1_2', '报警设置', null, null, '/stationInfo/backup', null, null);
insert into WT_SYS_RESOURCE (CD_RES, CD_PRES, ST_NM, ST_IMG, NM_OD, ST_APH, ST_EPH, NM_ISD)
values ('RS_L1_IDX', 'RS_ROOT', '首页', null, null, '/home', null, null);
insert into WT_SYS_RESOURCE (CD_RES, CD_PRES, ST_NM, ST_IMG, NM_OD, ST_APH, ST_EPH, NM_ISD)
values ('RS_L2_T3_1', 'RS_L1_7', '用户管理', null, null, '/user', null, null);
insert into WT_SYS_RESOURCE (CD_RES, CD_PRES, ST_NM, ST_IMG, NM_OD, ST_APH, ST_EPH, NM_ISD)
values ('RS_L2_T3_2', 'RS_L1_7', '角色管理', null, null, '/role', null, null);
insert into WT_SYS_RESOURCE (CD_RES, CD_PRES, ST_NM, ST_IMG, NM_OD, ST_APH, ST_EPH, NM_ISD)
values ('RS_L2_T3_3', 'RS_L1_7', '权限管理', null, null, '/auth', null, null);
insert into WT_SYS_RESOURCE (CD_RES, CD_PRES, ST_NM, ST_IMG, NM_OD, ST_APH, ST_EPH, NM_ISD)
values ('RS_L2_T4_1', 'RS_L1_5', '测站运行统计', null, null, '/queryInfo/stationrunning', null, null);
insert into WT_SYS_RESOURCE (CD_RES, CD_PRES, ST_NM, ST_IMG, NM_OD, ST_APH, ST_EPH, NM_ISD)
values ('RS_L2_T4_2', 'RS_L1_5', '测站故障统计', null, null, '/queryInfo/stationfault', null, null);
insert into WT_SYS_RESOURCE (CD_RES, CD_PRES, ST_NM, ST_IMG, NM_OD, ST_APH, ST_EPH, NM_ISD)
values ('RS_L2_T4_3', 'RS_L1_5', '测站巡检统计', null, null, '/queryInfo/stationinspect', null, null);
insert into WT_SYS_RESOURCE (CD_RES, CD_PRES, ST_NM, ST_IMG, NM_OD, ST_APH, ST_EPH, NM_ISD)
values ('RS_L2_T5_1', 'RS_L1_6', '实时业务处理', null, null, '/moveWord/realtimebusi', null, null);
insert into WT_SYS_RESOURCE (CD_RES, CD_PRES, ST_NM, ST_IMG, NM_OD, ST_APH, ST_EPH, NM_ISD)
values ('RS_L2_T5_2', 'RS_L1_6', '人员评价', null, null, '/moveWord/personaleval', null, null);
insert into WT_SYS_RESOURCE (CD_RES, CD_PRES, ST_NM, ST_IMG, NM_OD, ST_APH, ST_EPH, NM_ISD)
values ('RS_L2_T5_3', 'RS_L1_6', '后台维护管理', null, null, null, null, null);
insert into WT_SYS_RESOURCE (CD_RES, CD_PRES, ST_NM, ST_IMG, NM_OD, ST_APH, ST_EPH, NM_ISD)
values ('RS_L2_T5_4', 'RS_L1_6', '移动终端管理', null, null, null, null, null);
insert into WT_SYS_RESOURCE (CD_RES, CD_PRES, ST_NM, ST_IMG, NM_OD, ST_APH, ST_EPH, NM_ISD)
values ('RS_L2_T5_5', 'RS_L1_6', '日志管理', null, null, null, null, null);
insert into WT_SYS_RESOURCE (CD_RES, CD_PRES, ST_NM, ST_IMG, NM_OD, ST_APH, ST_EPH, NM_ISD)
values ('RS_L2_T1_2_B1', 'RS_L2_T1_2', '站点添加', null, null, '/stationManage/add', null, null);
insert into WT_SYS_RESOURCE (CD_RES, CD_PRES, ST_NM, ST_IMG, NM_OD, ST_APH, ST_EPH, NM_ISD)
values ('RS_L2_T1_2_B2', 'RS_L2_T1_2', '站点修改', null, null, '/stationManage/edit', null, null);
insert into WT_SYS_RESOURCE (CD_RES, CD_PRES, ST_NM, ST_IMG, NM_OD, ST_APH, ST_EPH, NM_ISD)
values ('RS_L2_T1_2_B3', 'RS_L2_T1_2', '站点删除', null, null, '/stationManage/delete', null, null);
insert into WT_SYS_RESOURCE (CD_RES, CD_PRES, ST_NM, ST_IMG, NM_OD, ST_APH, ST_EPH, NM_ISD)
values ('RS_L2_T1_2_B4', 'RS_L2_T1_2', '站点详情', null, null, '/stationManage/detail', null, null);
insert into WT_SYS_RESOURCE (CD_RES, CD_PRES, ST_NM, ST_IMG, NM_OD, ST_APH, ST_EPH, NM_ISD)
values ('RS_L2_T1_5_B1', 'RS_L2_T1_5', '告警设置设置权限', null, null, '/stationManage/setWarnParam', null, null);
insert into WT_SYS_RESOURCE (CD_RES, CD_PRES, ST_NM, ST_IMG, NM_OD, ST_APH, ST_EPH, NM_ISD)
values ('RS_L2_T2_2_B1', 'RS_L2_T2_2', '添加仓库', null, null, '/deviceManage/addCangku', null, null);
insert into WT_SYS_RESOURCE (CD_RES, CD_PRES, ST_NM, ST_IMG, NM_OD, ST_APH, ST_EPH, NM_ISD)
values ('RS_L2_T2_2_B2', 'RS_L2_T2_2', '仓库详细', null, null, '/deviceManage/detailCangku', null, null);
insert into WT_SYS_RESOURCE (CD_RES, CD_PRES, ST_NM, ST_IMG, NM_OD, ST_APH, ST_EPH, NM_ISD)
values ('RS_L2_T2_2_B3', 'RS_L2_T2_2', '仓库编辑', null, null, '/deviceManage/editCangku', null, null);
insert into WT_SYS_RESOURCE (CD_RES, CD_PRES, ST_NM, ST_IMG, NM_OD, ST_APH, ST_EPH, NM_ISD)
values ('RS_L2_T2_2_B4', 'RS_L2_T2_2', '删除仓库', null, null, '/deviceManage/deleteCangku', null, null);
insert into WT_SYS_RESOURCE (CD_RES, CD_PRES, ST_NM, ST_IMG, NM_OD, ST_APH, ST_EPH, NM_ISD)
values ('RS_L2_T2_3_B1', 'RS_L2_T2_3', '添加设备', null, null, '/deviceManage/add', null, null);
insert into WT_SYS_RESOURCE (CD_RES, CD_PRES, ST_NM, ST_IMG, NM_OD, ST_APH, ST_EPH, NM_ISD)
values ('RS_L2_T2_3_B2', 'RS_L2_T2_3', '设备详细', null, null, '/deviceManage/detailDevice', null, null);
insert into WT_SYS_RESOURCE (CD_RES, CD_PRES, ST_NM, ST_IMG, NM_OD, ST_APH, ST_EPH, NM_ISD)
values ('RS_L2_T2_3_B3', 'RS_L2_T2_3', '设备编辑', null, null, '/deviceManage/editDevice', null, null);
insert into WT_SYS_RESOURCE (CD_RES, CD_PRES, ST_NM, ST_IMG, NM_OD, ST_APH, ST_EPH, NM_ISD)
values ('RS_L2_T2_3_B4', 'RS_L2_T2_3', '删除设备', null, null, '/deviceManage/delete', null, null);
insert into WT_SYS_RESOURCE (CD_RES, CD_PRES, ST_NM, ST_IMG, NM_OD, ST_APH, ST_EPH, NM_ISD)
values ('RS_L2_T2_4_B1', 'RS_L2_T2_4', '设备出库出库权限', null, null, '/deviceManage/outDevice', null, null);
insert into WT_SYS_RESOURCE (CD_RES, CD_PRES, ST_NM, ST_IMG, NM_OD, ST_APH, ST_EPH, NM_ISD)
values ('RS_L2_T2_5_B1', 'RS_L2_T2_5', '设备足迹', null, null, '/deviceManage/deviceFootprint', null, null);
insert into WT_SYS_RESOURCE (CD_RES, CD_PRES, ST_NM, ST_IMG, NM_OD, ST_APH, ST_EPH, NM_ISD)
values ('RS_L2_IDX', 'RS_ROOT', '附件删除', null, null, '/common/delete', null, null);
commit;
prompt 70 records loaded
prompt Loading WT_SYS_ROLE...
insert into WT_SYS_ROLE (CD_RL, ST_NM, ST_DES, NM_OD)
values ('R1', '管理员', '系统管理员', null);
insert into WT_SYS_ROLE (CD_RL, ST_NM, ST_DES, NM_OD)
values ('R2', '系统访问', '系统访问角色', null);
insert into WT_SYS_ROLE (CD_RL, ST_NM, ST_DES, NM_OD)
values ('R3', '游客', '游客角色', null);
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
values ('1', 'D_L1_T1_1', 'DUTY_1', 'guest', '4374b34a906572d75a72ebf3fbed5146', '王晨娣', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1');
insert into WT_SYS_USER (CD_US, CD_DP, CD_DT, ST_LGNM, ST_LGPS, ST_NM, NM_AGE, DT_BIR, ST_HTEL, ST_OTEL, ST_ATEL, ST_MTEL, ST_MSN, ST_QQ, ST_EMAIL, ST_IMGPH, NM_JOBLH, DT_CREATE, DT_LG, DT_BKLG, NM_OD, ST_PCIP, ST_AREAID, ST_ULVL, ST_STATUS)
values ('2c9281a75571437201557148351a0000', 'D_L1_T1_1', 'DUTY_1', 'guest12', '7f9c50f01ec146c628a0aeaf97787789', '测试1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1');
insert into WT_SYS_USER (CD_US, CD_DP, CD_DT, ST_LGNM, ST_LGPS, ST_NM, NM_AGE, DT_BIR, ST_HTEL, ST_OTEL, ST_ATEL, ST_MTEL, ST_MSN, ST_QQ, ST_EMAIL, ST_IMGPH, NM_JOBLH, DT_CREATE, DT_LG, DT_BKLG, NM_OD, ST_PCIP, ST_AREAID, ST_ULVL, ST_STATUS)
values ('2c9281a75571437201557148ddc10001', 'D_L1_T1_1', 'DUTY_2', 'guest1', 'df6a35a5a4c4922b07cff4b134d1ae1c', '车上', null, null, null, null, null, '111', null, null, '222', null, null, null, null, null, null, null, null, null, '0');
insert into WT_SYS_USER (CD_US, CD_DP, CD_DT, ST_LGNM, ST_LGPS, ST_NM, NM_AGE, DT_BIR, ST_HTEL, ST_OTEL, ST_ATEL, ST_MTEL, ST_MSN, ST_QQ, ST_EMAIL, ST_IMGPH, NM_JOBLH, DT_CREATE, DT_LG, DT_BKLG, NM_OD, ST_PCIP, ST_AREAID, ST_ULVL, ST_STATUS)
values ('2c92819e541857e10154185a7ca60000', 'D_L1_T1_1', 'DUTY_2', 'admin', 'ceb4f32325eda6142bd65215f4c0f371', '李发登', null, null, null, null, null, '123', null, null, '123', null, null, null, null, null, null, null, null, null, '1');
insert into WT_SYS_USER (CD_US, CD_DP, CD_DT, ST_LGNM, ST_LGPS, ST_NM, NM_AGE, DT_BIR, ST_HTEL, ST_OTEL, ST_ATEL, ST_MTEL, ST_MSN, ST_QQ, ST_EMAIL, ST_IMGPH, NM_JOBLH, DT_CREATE, DT_LG, DT_BKLG, NM_OD, ST_PCIP, ST_AREAID, ST_ULVL, ST_STATUS)
values ('2c92819e541857e10154185c0b780001', 'D_L1_T1_1', 'DUTY_2', 'tester', '35c72ba093ecaadf6462438618fd5859', '测试用户', null, null, null, null, null, '123', null, null, '123', null, null, null, null, null, null, null, null, null, '1');
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
