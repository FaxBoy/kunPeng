<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/common/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- 导入该页面需要的模板jsp -->
<!-- 基础的 -->
<%-- <%@ include file="/WEB-INF/jsp/common/main.jsp"%> --%>

<!-- bootstrap表格 -->
<%-- <%@ include file="/WEB-INF/jsp/common/bootstrap-table.jsp"%> --%>
<link rel="stylesheet" type="text/css" href="${path}/static/plugins/jquery-easyui-1.5.2/themes/default/easyui.css">  

<script type="text/javascript" src="${path}/static/plugins/jquery/jquery.min.js"></script>
<script type="text/javascript" src="${path}/static/plugins/jquery-easyui-1.5.2/jquery.easyui.min.js"></script>  
<script type="text/javascript" src="${path}/static/plugins/jquery-easyui-1.5.2/locale/easyui-lang-zh_CN.js"></script>
<title>wavent</title>
</head>
<body>
<!--条件查询 -->  
<div data-options="region:'north',split:false,border:false,title:'查询条件',collapsed:false,iconCls:'icon-search'" style="height:60px;margin:5px 5px 0 5px">  
        角色编号:<input type="text"  name="cdRl" id="cdRl" class="easyui-validatebox" maxlength="10" style="height:15px;margin:0 5px 0 5px" />  
        角色名称:<input type="text"  name="stNm" id="stNm" class="easyui-validatebox" maxlength="10" style="height:15px;margin:0 5px 0 5px" />  
       &nbsp;&nbsp;<a href="javascript:void(0)" class="easyui-linkbutton" data-options="iconCls:'icon-search'"  onclick="Search()">查询</a>  
    </div>  
  
<!--数据展示 -->  
<div data-options="region:'center',fit:true,split:false,border:false" >  
    <table  id="dataGrid" style="width:100%"></table>  
</div>
<script type="text/javascript"> 

var datagrid;  //定义全局变量  
var editRow = "";//定义当前编辑的行  
datagrid = $("#dataGrid").datagrid({  
    title: "角色管理",  
    border: false,  
    locale: "zh_CN",  
    iconCls: 'icon-save',  
    striped: true,  
    sortable:true,
    sortOrder: "desc",  
    collapsible: false,  
    url: "${path}/role/getSelectPage2",  
    queryParams: { cdRl:"", stNm: ""},  
    columns: [[  
        { field: 'ID', title: 'ID', width: '5%', algin: 'center' },  
        { field: 'cdRl', title: '编号', width: '10%', align: 'center' },  
        { field: 'stNm', title: '标题', width: '25%', align: 'center' },  
        { field: 'stDes', title: '主题', width: '10%', align: 'center' },  
        { field: 'dtFitTime', title: '适合时段', width: '10%', align: 'center' },  
        { field: 'AddTime', title: '添加时间', width: '10%', align: 'center' },  
        {  
            field: "operateID", title: '操作',width:'27%', align: 'center', formatter: function (value, rowData, rowIndex) {  
                return "a";  
            }  
        }  
    ]],  
    toolbar: [{  
        id: 'btnAdd',  
        text: "添加",  
        iconCls: 'icon-add',  
        handler: function () {  
            $("#winAdd").window("open");  
        }  
    }, {  
        id: 'btnEdit',  
        text: "修改",  
        iconCls: 'icon-edit',  
        handler: function () {  
            alert("修改");  
        }  
    }],  
    pagination: true,//表示在datagrid设置分页              
    rownumbers: false,  
    singleSelect: true,  
});  
 $('#dataGrid').datagrid('getPager').pagination({  
     pageSize: 10,  
     pageNumber: 1,  
     pageList: [10, 20, 30, 40, 50],  
     beforePageText: '第',//页数文本框前显示的汉字   
     afterPageText: '页    共 {pages} 页',  
     displayMsg: '当前显示 {from} - {to} 条记录   共 {total} 条记录',  
});  

//条件查询  
function Search() {  
    var queryParameter = $('#dataGrid').datagrid("options").queryParams;  
    queryParameter.cdRl = $("#cdRl").val();  
    queryParameter.stNm = $("#stNm").val();  
    $("#dataGrid").datagrid("reload");  
} 

</script>
</body>
</html>