<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>Cadastro de Usuários</h1>
	<form action="<c:url value="/users"/>" name="registerForm" method="POST">
		<fieldset>
			<legend>Novo Usuário</legend>
			<label for="user.nome">Nome</label>
			<input type="text" name="user.nome" value="${user.nome}">
			<input type="text" name="user.telefones[].numeroTelefone" value="${user.telefones.numeroTelefone}">
			
			</fieldset>
			</form>
</body>
</html>