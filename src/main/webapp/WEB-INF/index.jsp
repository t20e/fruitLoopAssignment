<%@page import="javax.xml.crypto.Data"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Fruits</title>
<link rel="stylesheet" type="text/css" href="/css/style.css" />
</head>
<body>
	<div id= "mainDiv">
		<div id="contentHolder">
		<h1>Fruits</h1>
		 <p>Today's date: <%= (new java.util.Date()).toLocaleString()%></p>
			<table>
				<thead>
					<tr>
					<th>Name</th>
					<th>Price</th>
					</tr>
				</thead>
				<tbody>
					<!-- loop to show all data -->
					<c:forEach var = "x" items= "${fruits}">
					<tr>
						<td> ${x.name} </td>
						<td> ${x.price} </td>					
					</tr>
					</c:forEach>
					
				 <%-- 	<h1> <c:out value="${Item.fruits.name}"/> </h1> --%>
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>