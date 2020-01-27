<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
  <h2>Lista de Produtos</h2><br><br>
  <div>${sucesso}</div>
  <table>
    <tr>
      <td>Título do Livro</td>
      <td>Descrição</td>
      <td>Páginas</td>
   </tr>
   <c:forEach items="${produto}" var="produto" varStatus="status">
		<tr>
      		<td>${produto.titulo}</td>
      		<td>${produto.descricao}</td>
      		<td>${produto.paginas}</td>
   		</tr>
	</c:forEach>
   
</table>
</body>
</html>