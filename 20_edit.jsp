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
	<a:query var="k" dataSource="${i}">
	
		SELECT * FROM student_table where id = ${param.id}
	
	</a:query>
	<b:forEach items="${k.rows}" var="r" >
	
		<b:set var="s1" value="${r.first_name }"></b:set>
		<b:set var="s2" value="${r.last_name }"></b:set>
		<b:set var="s3" value="${r.id }" scope="session"></b:set>
	
	</b:forEach>
	<form action="20_change.jsp">
		fn:<input type="text" name="fn" value="${s1}"><br><br>
		ln:<input type="text" name="ln" value="${s2}"><br><br>
		<input type="submit" value="submit"><br><br>
	</form>
	
</body>
</html>