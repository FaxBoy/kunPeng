<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/common/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file="/WEB-INF/jsp/common/bootstrap-table.jsp"%>
<%@ include file="/WEB-INF/jsp/security/role/roleAdd.jsp"%>
<title>角色管理</title>
</head>
<body>
	<div class="panel-body" style="padding-bottom:0px;">
        <div class="panel panel-default">
            <div class="panel-heading">查询条件</div>
            <div class="panel-body">
                <form id="formSearch" class="form-horizontal">
                    <div class="form-group" style="margin-top:15px">
                        <label class="control-label col-sm-2" for="txt_search_cdRl">角色编号</label>
                        <div class="col-sm-2">
                            <input type="text" class="form-control" id="txt_search_cdRl">
                        </div>
                        <label class="control-label col-sm-2" for="txt_search_stNm">角色名称</label>
                        <div class="col-sm-2">
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
    
<script type="text/javascript">  
$(function(){
	//1.初始化Table
	var oTable = new TableInit();
	oTable.Init();
	
	//2.初始化Button的点击事件
	var oButtonInit = new ButtonInit();
	oButtonInit.Init();
})

var TableInit = function () {
    var oTableInit = new Object();
    //初始化Table
    oTableInit.Init = function () {
        $('#tb_role').bootstrapTable({
            url: '${path}/role/getSelectPages',         //请求后台的URL（*）
            method: 'post',    //请求方式（*）
            dataType: "json",                   
            toolbar: '#toolbar',                //工具按钮用哪个容器
            striped: true,                      //是否显示行间隔色
            cache: false,                       //是否使用缓存，默认为true，所以一般情况下需要设置一下这个属性（*）
            pagination: true,                   //是否显示分页（*）
            sortable: false,                     //是否启用排序
            sortOrder: "asc",                   //排序方式
            queryParams: oTableInit.queryParams,//传递参数（*）
            sidePagination: "server",           //分页方式：client客户端分页，server服务端分页（*）
            pageNumber:1,                       //初始化加载第一页，默认第一页
            pageSize: 3,                       //每页的记录行数（*）
            pageList: [10, 25, 50, 100],        //可供选择的每页的行数（*）
            search: true,                       //是否显示表格搜索，此搜索是客户端搜索，不会进服务端，所以，个人感觉意义不大
            strictSearch: true,
            showColumns: true,                  //是否显示所有的列
            showRefresh: true,                  //是否显示刷新按钮
            minimumCountColumns: 2,             //最少允许的列数
            clickToSelect: true,                //是否启用点击选中行
            height: 500,                        //行高，如果没有设置height属性，表格自动根据记录条数觉得表格高度
            uniqueId: "cdRl",                     //每一行的唯一标识，一般为主键列
            showToggle:false,                    //是否显示详细视图和列表视图的切换按钮
            cardView: false,                    //是否显示详细视图
            detailView: false,                   //是否显示父子表
            columns: [{
                checkbox: true
            }, {
                field: 'cdRl',
                title: '角色编号'
            }, {
                field: 'stNm',
                title: '角色名称'
            }, {
                field: 'stDes',
                title: '角色描述'
            }, {
                field: 'nmOd',
                title: '排序'
            }, ]
        });
    };

    //得到查询的参数
    oTableInit.queryParams = function (params) {
    	console.info(params)
        var temp = {   //这里的键的名字和控制器的变量名必须一直，这边改动，控制器也需要改成一样的
            limit: params.limit,   //页面大小
            offset: params.offset,  //页码
            stNm: $("#txt_search_stNm").val(),
            cdRl: $("#txt_search_cdRl").val(),
            seachQuery:params.search
        };
        return temp;
    };
    return oTableInit;
};

var ButtonInit = function () {
    var oInit = new Object();
    var postdata = {};

    oInit.Init = function () {
        //初始化页面上面的按钮事件
        $("#btn_query").click(function() {
			$("#tb_role").bootstrapTable('refresh');
		});
        
        //添加事件
        $("#btn_add").click(function(){
        	//alert("role.jsp添加功能");
        	resetForm("#role_form");
			$('#roleAddModal').modal({
				backdrop : "static"
			});
        });
        //添加保存事件
        $("#save_role_btn").click(function() {
			//addRole验证
			
			$.ajax({
				url : "${path}/role/roleAdd",
				data : $("#role_form").serialize(),
				type : "POST",
				success : function(result) {
					alert("保存成功")
					$('.modal').map(function() {
				    $(this).modal('hide');
					}); 
					toPage(1);
				}
			});
		});
        
        
    };

    return oInit;
    
    
};

function resetForm(ele) {
	$(ele)[0].reset();
	$(ele).find("*").removeClass("has-error has-success");
	$(ele).find(".help-block").text("");
}
</script>
</body>
</html>