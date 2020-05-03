<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
	
	<head>
		<meta charset="UTF-8">
		<title>Edicao - Filmes</title>
		
		<spring:url value="/resources/css" var="css" />
		<spring:url value="/resources/js" var="js" />
		
		<c:set value="${pageContext.request.contextPath}" var="contextPath" />
		
		<link href="${css}/bootstrap.css" rel="stylesheet">
	    <link href="${css}/small-business.css" rel="stylesheet">
	</head>
	
	<body>

		<div class="container">

		<!-- Call to Action Well -->
		<div class="row">
			<div class="col-lg-12">
				<div class="well">

					<h2>Filme</h2>

					<form:form action="${contextPath}/filmes" method="patch">

						<div class="form-group">
							<input type="hidden" name="id" id="id" value="${filme.id}" />

						</div>

						<div class="form-group">
							<label class="control-label" for="nome">Titulo:</label> <input
								type="text" name="titulo" id="titulo" value="${filme.titulo}"
								class="form-control" maxlength="50" size="50" />
						</div>
						<div class="form-group">
							<label class="control-label" for="nome">Diretor:</label> <input
								type="text" name="diretor" id="diretor" value="${filme.diretor}"
								class="form-control" maxlength="50" size="50" />
						</div>
						<div class="form-group">
							<label class="control-label" for="nome">Genero:</label> <input
								type="text" name="genero" id="genero" value="${filme.genero}"
								class="form-control" maxlength="50" size="50" />
						</div>
						<div class="form-group">
							<label class="control-label" for="nome">Distribuicao:</label> <input
								type="text" name="distribuicao" id="distribuicao" value="${filme.distribuicao}"
								class="form-control" maxlength="50" size="50" />
						</div>
						<div class="form-group">
							<label class="control-label" for="ano_lancamento">Ano de Lancamento:</label> <input
								type="text" name="ano_lancamento" id="ano_lancamento" value="${filme.ano_lancamento}"
								class="form-control" maxlength="4" size="4" />
						</div>
						<div class="form-group">
							<label class="control-label" for="classificacao">Classificacao:</label> <input
								type="text" name="classificacao" id="classificacao" value="${filme.classificacao}"
								class="form-control" maxlength="2" size="2" />
						</div>
						<div class="form-group">
							<label class="control-label" for="duracao">Duracao:</label> <input
								type="text" name="duracao" id="duracao" value="${filme.duracao}"
								class="form-control" maxlength="3" size="3" />
						</div>
						<div class="form-group">
							<label class="control-label" for="bilheteria">Bilheteria:</label> <input
								type="text" name="bilheteria" id="bilheteria" value="${filme.bilheteria}"
								class="form-control" maxlength="10" size="10" />
						</div>
					
						<hr>
						<br>
						
						<a class="btn btn-default btn-lg" href="${contextPath}/filmes">Cancelar</a>
						<button type="submit" class="btn btn-primary btn-lg">Gravar</button>


						<br>
						<br>
					</form:form>

				</div>
			</div>
		</div>
	</div>
	
	
	
		<script src="${js}/jquery.js"></script>
	    <script src="${js}/bootstrap.min.js"></script>
	</body>
</html>