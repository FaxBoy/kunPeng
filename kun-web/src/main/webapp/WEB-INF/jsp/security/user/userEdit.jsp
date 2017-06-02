<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/common/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head lang="en">
<!-- bootstrap表格 -->
<%@ include file="/WEB-INF/jsp/common/bootstrap-table.jsp"%>
</head>
<body>

	<!-- 修改的模态框 -->
	<div class="modal fade" id="empUpdateModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">修改</h4>
				</div>
				<div class="modal-body">
					<form class="form-horizontal" id="emp_formx">
						<div class="form-group">
							<label for="inputEmail3" class="col-sm-2 control-label"></label>
							<div class="col-sm-10">
								<input type="hidden" name="cdUs" class="form-control"
									id="cdUs1" /> 
							    <span class="help-block"></span>
							</div>
						</div>
					    <div class="form-group">
							<label for="inputEmail3" class="col-sm-2 control-label">姓名</label>
							<div class="col-sm-10">
								<input type="text" name="stNm" class="form-control"
									id="stNm1" /> 
							    <span class="help-block"></span>
							</div>
						</div>   
						<div class="form-group">
							<label for="inputPassword3" class="col-sm-2 control-label">年龄</label>
							<div class="col-sm-10">
								<input type="text" name="nmAge" class="form-control"
									id="nmAge1" /> 
							    <span class="help-block"></span>
							</div>
						</div>
						<div class="form-group">
							<label for="inputPassword3" class="col-sm-2 control-label">手机</label>
							<div class="col-sm-10">
								<input type="text" name="stMtel" class="form-control"
									id="stMtel1" />
								<!-- 示例 -->
								<span class="help-block"></span>
							</div>
						</div>
						<div class="form-group">
							<label for="inputPassword3" class="col-sm-2 control-label">QQ</label>
							<div class="col-sm-10">
							    <input type="text" name="stQq" class="form-control"
									id="stQq1" />
								<!-- 示例 -->
								<span class="help-block"></span>
								<!-- <select class="help-block" name="stQq" >
								</select> -->
							</div>
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					<button type="button" class="btn btn-primary" id="save_emp_btnx">Save
						changes</button>
				</div>
			</div>
		</div>
	</div>
</body>
</html>