<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Spring + Hibernate</title>
<style>
tr:first-child {
	font-weight: bold;
	background-color: #C6C9C4;
}
</style>
</head>

<body>
	<h2>Spring + Hibernate</h2>
	<table>
	 <caption>Show All Employee</caption>
		<tr>
			<td>NAME</td>
			<th scope="col">Joining Date</th>
			<th scope="col">Salary</th>
			<th scope="col">Employee code</th>
			<th scope="col"></th>
		</tr>
		<c:forEach items="${employees}" var="employee">
			<tr>
				<td>${employee.name}</td>
				<td>${employee.joiningDate}</td>
				<td>${employee.salary}</td>
				<td><a href="<c:url value='/edit-${employee.employeeCode}-employee' />">${employee.employeeCode}</a></td>
				<td><a href="<c:url value='/delete-${employee.id}-employee' />">delete</a></td>
			</tr>
		</c:forEach>
	</table>
	<br />
	<a href="<c:url value='/new' />">Add New Employee</a>
</body>
</html>