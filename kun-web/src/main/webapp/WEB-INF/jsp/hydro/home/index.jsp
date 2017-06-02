<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/common/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head lang="en">
<!-- bootstrap表格 -->
<%@ include file="/WEB-INF/jsp/common/bootstrap-table.jsp"%>
</head>
<body>
<h3>Welcome <sec:authentication property="name" /> : This is your Age ${password} !</h3>
${userInfo}<br>
${ttt}<br>
<a href="${path}/role">角色管理bootstrap</a>||<a href="${path}/user">用户管理</a>||<a href="${path}/role/2">角色管理easyui</a>
<sec:authorize ifAllGranted="${ttt}">
   巡检记录
</sec:authorize>
<sec:authorize ifNotGranted="首页">
   YES, you are logged in not!
</sec:authorize>

产品名:${fns:getConfig('productName')}<br/>
管理基础路径：${fns:getConfig('adminPath')}<br/>
常量是否：${fns:getConst('YES')}<br/>

从后边开始截取字符串：${fns:substringAfterLast("dskeabceead","e")}<br/>

缩写字符串，超过最大宽度用“...”表示:${fns:abbr("dskeabceead",7)}<br/>
判断字符串是否以某某开头：${fns:startsWith("dskeabceead","d")}<br/>

</body>
</html>