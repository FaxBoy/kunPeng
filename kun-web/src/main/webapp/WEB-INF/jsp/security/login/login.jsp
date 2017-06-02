<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8"/>
<title>Insert title here</title>
</head>
<body>
<div class="logo-background">
	
		<form id="form" action="${pageContext.request.contextPath}/j_spring_security_check" method="post">
		<lable style="color:red;">${sessionScope.SPRING_SECURITY_LAST_EXCEPTION.message}</lable>
		      <div>
		       <input  name="j_username" class="username" type="text" value="" required="required" placeholder="用户名" />
		      </div>
		      <div>
		        <input name="j_password" class="password" type="password" value="" required="required" placeholder="密码" />
		      </div>
		      <div class="bt">
		      	  <div class="left">
		      	 	 <input type="submit" class="submit" value="" />
		      	  </div>
                  <div class="right">
		      	  	<input type="reset" class="reset" value=""  />
		      	  </div>
		      </div>
		</form>
		
	</div>
</body>
</html>