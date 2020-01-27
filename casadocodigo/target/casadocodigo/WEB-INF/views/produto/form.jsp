<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Casa do C�digo</title>
</head>
<body>
	<form action="/casadocodigo/produto" method="POST">
		<div>
			<label>Titulo</label> <input type="text" name="titulo">
		</div>
		<div>
			<label>Descri��o</label>
			<textarea rows="10" cols="20" name="descricao"></textarea>
		</div>
		<div>
			<label>P�ginas</label> 
			<input type="text" name="paginas">
		</div>
		<c:forEach items="${tipos}" var="tipoPreco" varStatus="status">
			<div>
				<label>${tipoPreco}</label> 
				<input type="text" name="precos[${status.index}].valor"> 
				<input type="hidden" name="precos[${status.index}].tipo" value="${tipoPreco}">
			</div>
		</c:forEach>

		<button type="submit">Cadastrar Livro</button>

	</form>

</body>
</html>