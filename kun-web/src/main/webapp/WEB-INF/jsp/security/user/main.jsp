<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/common/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head lang="en">
<!-- bootstrap表格 -->
<%@ include file="/WEB-INF/jsp/common/bootstrap-table.jsp"%>
<%@ include file="/WEB-INF/jsp/security/user/userAdd.jsp"%>
<%@ include file="/WEB-INF/jsp/security/user/userEdit.jsp"%>
<%@ include file="/WEB-INF/jsp/security/user/userSearch.jsp"%>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<h1>用户列表</h1>
			</div>
		</div>
		<div class="row">
			<div class="col-md-4 col-md-offset-8">
				<button class="btn btn-primary" id="emp_add_btn">增加</button>
				<!-- <button class="btn btn-danger" id="emp_del_btn">删除</button> -->
			</div>
		</div>
		<div class="row">
			<div class="col-md-12">
				<table class="table table-hover" id="emps_table">
					<thead>
						<tr>
							<th><input type="checkbox" id="check_all"/></th>
							<th>姓名</th>
							<th>年龄</th>
							<th>手机</th>
							<th>QQ</th>
							<th>操作</th>
						</tr>
					</thead>
					<tbody>

					</tbody>
				</table>
			</div>
		</div>
		<div class="row">
			<div class="col-md-6" id="page_info_area"></div>
			<div class="col-md-6" id="page_nav_area"></div>
		</div>
	</div>
	<script type="text/javascript">
		var lastPageNum,currentPageNum;
		$(function() {
			//alert("hello");
			toPage(1);

		});
		//添加用户
		$("#emp_add_btn").click(function() {
			//getDepts("#deptName_input");
			resetForm("#emp_form");
			$('#empAddModal').modal({
				backdrop : "static"
			});
		});
		//保存按钮事件
		$("#save_emp_btn").click(function() {
			/* if (!validateEmpForm())
				return false;
			if ($(this).attr("save") == "no")
				return false; */
			var stLgps1 = $("#stLgps1").val();
			var stLgps2 = $("#stLgps2").val();
			if(stLgps1 != stLgps2){
				alert("两次输入的密码不一致")
				return;
			}
			$.ajax({
				url : "${path}/user/usersAdd",
				data : $("#emp_form").serialize(),
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
				
		//修改按钮事件
		$("#save_emp_btnx").click(function() {
			$.ajax({
				url : "${path}/user/userUp",
				data : $("#emp_formx").serialize(),
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
		//重置表单
		function resetForm(ele) {
			$(ele)[0].reset();
			$(ele).find("*").removeClass("has-error has-success");
			$(ele).find(".help-block").text("");
		}
		function toPage(pn) {
			$.ajax({
				url : "${path}/user/selectUserAll",
				data : "",
				type : "GET",
				success : function(data) {
					build_emps_table(data.result);
					console.info(data)
				}
			});
		}
		function build_emps_table(result) {
			$("#emps_table tbody").empty();
			//var emps = result.map.pageInfo.list;
			$.each(result, function(index, item) {
				var checkBoxTd = $("<td><input type='checkbox' class='check_item'/></td>");
				var empIdTd = $("<td></td>").append(item.stNm);
				var empNameTd = $("<td></td>").append(item.nmAge);
				var genderTd = $("<td></td>").append(item.stMtel);
				var emailTd = $("<td></td>").append(item.stQq);
				var editbtn = $("<button></button>").addClass("btn btn-primary btn-sm editbtn")
				              .append($("<span></span>").addClass("glyphicon glyphicon-pencil"))
				              .append("编辑").attr("editid",item.cdUs);
				
				var delbtn = $("<button></button>").addClass("btn btn-danger btn-sm delbtn")
				             .append($("<span></span>").addClass("glyphicon glyphicon-trash"))
						     .append("删除").attr("delid",item.cdUs);
				
				var ckbtn = $("<button></button>").addClass("btn btn-primary btn-sm ckbtn")
			                 .append($("<span></span>").addClass("glyphicon glyphicon-search"))
			                 .append("查看").attr("ckid",item.cdUs);
				var operate = $("<td></td>")
				             .append(ckbtn)
				             .append(editbtn)
						     .append(delbtn);
				$("<tr></tr>").append(checkBoxTd).append(empIdTd).append(empNameTd).append(genderTd)
							  .append(emailTd)
				              .append(operate).appendTo($("#emps_table tbody"));
			});
		}
		//绑定编辑按钮
		$(document).on("click",".editbtn",function(){
			/* getDepts("#deptName_update_input");
			resetForm("#emp_update_form"); */
			getEmp($(this).attr("editid"));
			
			//$("#update_emp_btn").attr("editid",$(this).attr("editid"));
			$('#empUpdateModal').modal({
				backdrop : "static"
			});
		});
		//绑定查看按钮
		$(document).on("click",".ckbtn",function(){
			/* getDepts("#deptName_update_input");
			resetForm("#emp_update_form"); */
			getEmps($(this).attr("ckid"));
			
			//$("#update_emp_btn").attr("editid",$(this).attr("editid"));
			$('#empckModal').modal({
				backdrop : "static"
			});
		});
		function getEmp(id){
			$.ajax({
				url:"${path}/user/userCk",
				type:"GET",
				dataType : "json",
				data:{"cdUs":id},
				success:function(result){
					$("#stNm1").val(result.stNm);
					$("#empUpdateModal #nmAge1").val(result.nmAge);
					$("#empUpdateModal #stQq1").val(result.stQq);
					$("#empUpdateModal #stMtel1").val(result.stMtel);
					$("#empUpdateModal #cdUs1").val(result.cdUs); 
				}
			})
		}
		function getEmps(id){
			$.ajax({
				url:"${path}/user/userCk",
				type:"GET",
				dataType : "json",
				data:{"cdUs":id},
				success:function(result){
					$("#empckModal #stNm1").val(result.stNm);
					$("#empckModal #nmAge1").val(result.nmAge);
					$("#empckModal #stQq1").val(result.stQq);
					$("#empckModal #stMtel1").val(result.stMtel);
					$("#empckModal #cdUs1").val(result.cdUs); 
				}
			})
		}
		
		 function cli(id){
	            //confirm方法弹出一个对话框,可以选择确定与取消操作
	            //同时该方法有返回值,true和false,两个布尔值
	            var flag = confirm("确定删除吗?");
	            if(flag){
	                //进行后台处理,路径跳转
	                getEmpdel(id);
	            }else{
	                return;
	            }
	        }
		
		//绑定删除按钮
		$(document).on("click",".delbtn",function(){
			var id = $(this).attr("delid")
			cli(id);
		});
		function getEmpdel(id){
			$.ajax({
				url:"${path}/user/userDel",
				type:"post",
				dataType : "json",
				data:{"cdUs":id},
				success:function(result){
					alert("删除成功")
					toPage(1);
				}
			})
		}
		//全选按钮
		$("#check_all").click(function(){
			//dom原生的属性，使用prop，自定义的用attr
			$(".check_item").prop("checked",$(this).prop("checked"));
		});
		//后来添加的需用以下方式添加事件
		$(document).on("click",".check_item",function(){
			var flag=$(".check_item:checked").length==$(".check_item").length;
			$("#check_all").prop("checked",flag);
		});
		
		
	</script>
</body>
</html>