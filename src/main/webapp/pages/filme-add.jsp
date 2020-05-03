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
            <div class="col-lg-12">
                <div class="well">
					
					<h2>Novo Filme</h2>
					
					<form:form modelAttribute="filmeModel" action="${contextPath}/filmes" method="post">
						<spring:hasBindErrors name="filmeModel">
							<div class="alert alert-danger" role="alert">
								<form:errors path="*" class="has-error" />
							</div>
						</spring:hasBindErrors>

						<div class="form-group">
							<label class="control-label" for="titulo">Titulo:</label>
							<form:input type="text" path="titulo" name="titulo" id="titulo" value="" class="form-control" maxlength="50" size="50" />
							<font color="red">
								<form:errors path="titulo" />
							</font><br/>
                        </div>
                        <div class="form-group">
							<label class="control-label" for="diretor">Diretor:</label>
							<form:input id="diretor" path="diretor" name="diretor" value="" class="form-control" maxlength="50" size="50" />
							<font color="red">
								<form:errors path="diretor" />
							</font><br/>
						</div>
						
						<div class="form-group">
							<label class="control-label" for="genero">Genero:</label>
							<form:input id="genero" path="genero" name="genero" value="" class="form-control" maxlength="50" size="50" />
							<font color="red">
								<form:errors path="genero" />
							</font><br/>
						</div>
						
						<div class="form-group">
							<label class="control-label" for="distribuicao">Distribuicao:</label>
							<form:input type="text" path="distribuicao" id="distribuicao"  name="distribuicao" class="form-control" />
							<font color="red">
								<form:errors path="distribuicao" />
							</font><br/>
						</div>
						
						<div class="form-group">
							<label class="control-label" for="classificacao">Classificacao:</label>
							<form:input type="number" path="classificacao" id="classificacao" name="classificacao" value="" class="form-control" />
							<font color="red">
								<form:errors path="classificacao" />
							</font><br/>
						</div>
						
						<div class="form-group">
							<label class="control-label" for="ano_lancamento">Ano de Lancamento:</label>
							<form:input type="text" path="ano_lancamento" name="ano_lancamento" value="" id="ano_lancamento" class="form-control" />
							<font color="red">
								<form:errors path="ano_lancamento" />
							</font><br/>
						</div>
						
						<div class="form-group">
							<label class="control-label" for="duracao">Duracao (Minutos):</label>
							<form:input type="text" path="duracao" name="duracao" id="duracao" value="" class="form-control" />
							<font color="red">
								<form:errors path="duracao" />
							</font><br/>
						</div>
						
						<div class="form-group">
							<label class="control-label" for="bilheteria">Bilheteria (US$):</label>
							<form:input type="text" path="bilheteria" id="bilheteria" value="" name="bilheteria" class="form-control" />
							<font color="red">
								<form:errors path="bilheteria" />
							</font><br/>
						</div>
						<hr>
						
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