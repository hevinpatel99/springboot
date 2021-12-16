<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
	body{
		font-size: 20px;
		font-family:'roboto',sans-serif;
	}
	table,td,th{
		border:1px solid black;
		text-align: center;
	}
	table{
		width:50%;
	}
	a{
		text-decoration: none;
	}
</style>
<body>
	<%@taglib prefix="a" uri="http://java.sun.com/jstl/sql_rt"%>
	<%@taglib prefix="b" uri="http://java.sun.com/jstl/core_rt" %>
	<a:setDataSource driver="com.mysql.jdbc.Driver"
					 url="jdbc:mysql://localhost/db1"
					 user="root"
					 password="root"
					 var="i"/>
	<a:query var="k" dataSource="${i }">
	
		SELECT * FROM student_table
	
	</a:query>
	<table>
		<tr>
			<th>First Name</th>
			<th>Last Name</th>
			<th>Delete</th>
			<th>Update</th>
		</tr>
		<b:forEach items="${k.rows}" var="r">
		<tr>
			<td>${r.first_name }</td>
			<td>${r.last_name }</td>
			<td> <a href="20_delete.jsp?id=${r.id}">delete</a> </td>
			<td> <a href="20_edit.jsp?id=${r.id}">edit</a> </td>
		</tr>
		</b:forEach>
	</table>
	<br>
	<a href="20_form.jsp">Inset New Entry</a>
</body>
</html>