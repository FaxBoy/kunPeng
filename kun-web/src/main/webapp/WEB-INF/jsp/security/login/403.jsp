<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>403</title>
<link rel="stylesheet" type="text/css"	href="<c:url value="/static/module/security/css/auth.css"/>"/>
<link rel="stylesheet" type="text/css"	href="<c:url value="/static/js-plugins/ztree/css/zTreeStyle/zTreeStyle.css"/>"/>
<script type="text/javascript"  src="<c:url value='/static/js-plugins/jquery.min.js'/>"></script>
<script type="text/javascript"  src="<c:url value='/static/js-plugins/jquery.form.js'/>"></script>
<script type="text/javascript"  src="<c:url value='/static/js-plugins/ztree/js/jquery.ztree.core-3.4.min.js'/>"></script>
<script type="text/javascript"  src="<c:url value='/static/module/security/js/auth.js'/>"></script>
</head>
	<body>
		<div class="bg">
				你没有权限访问该系统界面
		</div>
	</body>
</html>