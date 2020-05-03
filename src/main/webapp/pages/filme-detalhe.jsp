<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Detalhes - <c:out value="${filme.titulo}"/></title>
		
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
					<div class="well">
						<h1><c:out value="${filme.titulo}"/></h1>
						<br>
						<div class="form-group">
							<label class="control-label" for="titulo">Diretor:</label>
							<br>
							<c:out value="${filme.diretor}"/>
                        </div>
						<div class="form-group">
							<label class="control-label" for="titulo">Gênero:</label>
							<br>
							<c:out value="${filme.genero}"/>
                        </div>                        
						<div class="form-group">
							<label class="control-label" for="titulo">Distribuição:</label>
							<br>
							<c:out value="${filme.distribuicao}"/>
                        </div>                        
						<div class="form-group">
							<label class="control-label" for="titulo">Classificação:</label>
							<br>
							<c:choose>
								<c:when test="${filme.classificacao == 0}">Livre</c:when>
								<c:otherwise>${filme.classificacao} anos</c:otherwise>
							</c:choose>														
                        </div>                        
						<div class="form-group">
							<label class="control-label" for="titulo">Data de lançamento:</label>
							<br>
							<c:out value="${filme.ano_lancamento}"/>
                        </div>   
						<div class="form-group">
							<label class="control-label" for="titulo">Duração:</label>
							<br>
							<c:out value="${filme.duracao} minutos"/>
                        </div>   
						<div class="form-group">
							<label class="control-label" for="titulo">Bilheteria:</label>
							<br>
							<c:out value="U$ ${filme.bilheteria}"/>
                        </div>                           
                        
                        <a class="btn btn-default btn-lg" href="${contextPath}/filmes">Voltar</a>
					     
                        <br>
                        <br>
						
					</div>
				</div>
			</div>
		</div>	
	
	
		<script src="${js}/jquery.js"></script>
	    <script src="${js}/bootstrap.min.js"></script>
	</body>
</html>