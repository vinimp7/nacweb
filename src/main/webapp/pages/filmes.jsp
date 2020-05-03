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
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<h1>CineLove</h1>
					<p class="toolbar">
					
						<a class="create btn btn-default" href="${contextPath}/filmes/form?page=filme-add">Novo Filme</a>
						
						<c:if test="${not empty message}">
							<h3 class="alert alert-warning">${message}</h3>
						</c:if>
		
						<span class="alert"></span>
					</p>
					<table class="table table-striped" cellspacing="0" cellpadding="0">
						<thead>
							<td>Filme</td>
							<td>Genero</td>
							<td>Ano</td>
							<td>Classificacao</td>
							<td>Opcoes</td>
						</thead>
						<tbody>
							<c:forEach items="${filmes}" var="filme">
		
								<tr>
									<td>${filme.titulo}</td>
									<td>${filme.genero}</td>
									<td>${filme.ano_lancamento}</td>
									<td>
										<c:choose>
											<c:when test="${filme.classificacao == 0}">Livre</c:when>
											<c:otherwise>${filme.classificacao} Anos</c:otherwise>
										</c:choose>
									</td>
									
									<td class="actions">
										
										<form:form action="${contextPath}/filmes/${filme.id}" method="delete">
										
											<a class="btn btn-success btn-xs" href="${contextPath}/filmes/${filme.id}">Detalhes</a>
											<a class="btn btn-warning btn-xs" href="${contextPath}/filmes/form?page=filme-edit&id=${filme.id}">Editar</a>
											<input type="submit" value="Excluir" class="btn btn-danger btn-xs">
										</form:form>
										
									</td>
								</tr>
							
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	
	
		<script src="${js}/jquery.js"></script>
	    <script src="${js}/bootstrap.min.js"></script>
	</body>
</html>