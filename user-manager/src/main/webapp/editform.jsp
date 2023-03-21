<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Form</title>
</head>
<body>
	<%@ page
		import="bj.highfive.usermanagement.dao.*,bj.highfive.usermanagement.bean.*"%>

	<%
String id = request.getParameter("id");
User u = UserDAO.getUserById(Integer.parseInt(id));
%>

	<h1>Edit User</h1>
	<form action="edituser.jsp" method="post">
		<input type="hidden" name="id" value="<%= u.getId() %>" />
		<table>
			<tr>
				<td>Name:</td>
				<input type="text" name="name" value="<%= u.getName() %>" />
			</tr>
			<tr>
				<td>Password:</td>
				<td><input type="password" name="password" value="<%= u.getPassword() %>" /></td>
			</tr>
			<tr>
				<td>Email:</td>
				<td><input type="email" name="email" value="<%= u.getEmail() %>" /></td>
			</tr>
			<tr>
				<td>Sex:</td>
				<td><input type="radio" name="sex" value="male" />Male <input
					type="radio" name="sex" value="female" />Female</td>
			</tr>
			<tr>
				<td>Country:</td>
				<td><select name="country"><option>Benin</option>
						<option>Togo</option>
						<option>Ghana</option>
						<option>Niger</option>
						<option>Mali</option>
						<option>Burkina-Faso</option>
						<option>Senegal</option>
						<option>Other</option>
				</select></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="Add User" /></td>
			</tr>
		</table>
	</form>
</body>
</html>