<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%@taglib prefix="a" uri="http://java.sun.com/jstl/sql_rt"%>
	<%@taglib prefix="b" uri="http://java.sun.com/jstl/core_rt" %>
	<a:setDataSource driver="com.mysql.jdbc.Driver"
					 url="jdbc:mysql://localhost/db1"
					 user="root"
					 password="root"
					 var="i"/>
					 
	<a:update dataSource="${i}" >
	
		UPDATE student_table SET first_name = '${param.fn }' , last_name = '${param.ln }' WHERE id = ${sessionScope.s3}

	</a:update>
	<b:redirect url="20_display.jsp"></b:redirect>
</body>
</html>