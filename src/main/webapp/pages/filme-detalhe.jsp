<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		
		<spring:url value="/resources/css" var="css" />
		<spring:url value="/resources/js" var="js" />
		
		<c:set value="${pageContext.request.contextPath}" var="contextPath" />
		
		<link href="${css}/bootstrap.css" rel="stylesheet">
	    <link href="${css}/small-business.css" rel="stylesheet">
	</head>
	<body>
	
		<script src="${js}/jquery.js"></script>
	    <script src="${js}/bootstrap.min.js"></script>
	</body>
</html>