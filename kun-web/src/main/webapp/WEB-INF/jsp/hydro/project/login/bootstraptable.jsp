<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- jquery引用 -->
<script type="text/javascript" src="../static/plugins/jquery/jquery.min.js"></script>

<!-- bootstrap引用 -->
<script type="text/javascript" src="../static/plugins/bootstrap/js/bootstrap.js"></script>
<link rel="stylesheet" href="../static/plugins/bootstrap/css/bootstrap.css"/>

<!-- bootstrap-table 引用 -->
<link rel="stylesheet" href="../static/plugins/bootstrap/css/bootstrap-table.css"/>
<script type="text/javascript" src="../static/plugins/bootstrap/js/bootstrap-table.js"></script>
<script type="text/javascript" src="../static/plugins/bootstrap/js/bootstrap-table-zh-CN.js"></script>

<!-- 初始化表格 -->
<script type="text/javascript" src="../static/plugins/bootstrap/js/init.js"></script>

<meta http-equiv="content-type" content="text/html; charset=utf-8"/>
<title>table</title>
</head>
<body>
	<div class="panel-body" style="padding-bottom:0px;">
        <div class="panel panel-default">
            <div class="panel-heading">查询条件</div>
            <div class="panel-body">
                <form id="formSearch" class="form-horizontal">
                    <div class="form-group" style="margin-top:15px">
                        <label class="control-label col-sm-1" for="txt_search_cdRl">角色编号</label>
                        <div class="col-sm-3">
                            <input type="text" class="form-control" id="txt_search_cdRl">
                        </div>
                        <label class="control-label col-sm-1" for="txt_search_stNm">角色名称</label>
                        <div class="col-sm-3">
                            <input type="text" class="form-control" id="txt_search_stNm">
                        </div>
                        <div class="col-sm-4" style="text-align:left;">
                            <button type="button" style="margin-left:50px" id="btn_query" class="btn btn-primary">查询</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>       

        <div id="toolbar" class="btn-group">
            <button id="btn_add" type="button" class="btn btn-default">
                <span class="glyphicon glyphicon-plus" aria-hidden="true"></span>新增
            </button>
            <button id="btn_edit" type="button" class="btn btn-default">
                <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>修改
            </button>
            <button id="btn_delete" type="button" class="btn btn-default">
                <span class="glyphicon glyphicon-remove" aria-hidden="true"></span>删除
            </button>
        </div>
        <table id="tb_role"></table>
    </div>
</body>
</html>