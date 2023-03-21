<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Manager | View Users</title>
</head>
<body>

	<%@ page
		import="java.util.*,bj.highfive.usermanagement.dao.*,bj.highfive.usermanagement.bean.*"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


	<h1>Users List</h1>

	<%
	List<User> list = UserDAO.getAllUsers();
	request.setAttribute("list", list);
	%>

	<table border="1" width="90%">
		<tr>
			<th>Id</th>
			<th>Name</th>
			<th>Password</th>
			<th>Email</th>
			<th>Sex</th>
			<th>Country</th>
			<th>Edit</th>
			<th>Delete</th>
		</tr>
		<c:forEach items="${ list }" var="u">
			<tr>
				<td>${ u.getId() }</td>
				<td>${ u.getName() }</td>
				<td>${ u.getPassword() }</td>
				<td>${ u.getEmail() }</td>
				<td>${ u.getSex() }</td>
				<td>${ u.getCountry() }</td>
				<td><a href="editform.jsp?id=${ u.getId() }">Edit</a></td>
				<td><a href="delete.jsp?id=${ u.getId() }">Delete</a></td>
			</tr>
		</c:forEach>
	</table>
	<br /><a href="adduserform.jsp">Add New User</a>
</body>
</html>