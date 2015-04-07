<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" media="screen"
	href="<c:url value="/css/style.css"/>" />
<link rel="stylesheet" type="text/css" media="screen"
	href="<c:url value="/css/bootstrap.min.css"/>" />
<script type="text/javascript" src="<c:url value="/js/jquery-2.1.3.min.js"/>"></script>
<title>Cadastro & Listagem</title>
</head>
<body>
<!-- 
	<h1>Lista de usuários cadastrados</h1>
	<table>
		<thead>
			<tr>
				<th>User</th>
				<th>User_Telefones</th>
				<th>User_Experiencias</th>
				<th>User_Experiencias</th>
				<th>User_Idiomas</th>
				<th>Função 1</th>
				<th>Função 2</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${userList}" var="user">
				<tr>
					<td>${user.nome}</td>
					
			<c:forEach items="${user.telefones}" var="telefone">
					<td>${telefone.numeroTelefone}</td>
			</c:forEach>
			
			<c:forEach items="${user.experiencias}" var="experiencias">
					<td>${experiencias.empresa}</td>
					<td>${experiencias.cargo}</td>
			</c:forEach>
			
			<c:forEach items="${user.formacaoAcademica.idiomas}" var="idiomas">
					<td>${idiomas.idioma}</td>
			</c:forEach>
					
					<td><a href="<c:url value="/users/${user.id}"/>">Editar</a></td>
					<td><a href="<c:url value="/users/delete/${user.id}"/>">Excluir</a></td>
				</tr>
			</c:forEach>
			
			
			
		</tbody>
	</table>

	<c:if test="${not empty mensagem }">

		<h3>
			Mensagem: <span style="color: red;">${mensagem}</span>
		</h3>

	</c:if>

 -->
 
	<div class="container">
	<h1 class="text-center">Cadastro de Curriculum</h1>
	<c:if test="${not empty mensagem }">
		<h2 class="text-center">${mensagem}</h2>
	</c:if>
	<form class="form-horizontal bg-form" role="form" action="<c:url value="/users"/>" name="registerForm" method="POST">
	<h3 class="bg-primary">Objetivo</h3>
	
	<div class="form-group">
			<label class="control-label col-sm-2" for="objetivos.cargoPretendido">Cargo pretendido:</label>
				<div class="col-sm-10">
					<input class="form-control" type="text" name="objetivos.cargoPretendido" value="${objetivos.cargoPretendido}" required="required">
				</div>
	</div>
	
	<div class="form-group">
			<label class="control-label col-sm-2" for="objetivos.salarioPretendido">Pretensão salarial:</label>
				<div class="col-sm-10">
					<input class="form-control" type="text" name="objetivos.salarioPretendido" value="${objetivos.salarioPretendido}" required="required">
				</div>
	</div>
	
	<div class="form-group">
			<label class="control-label col-sm-2" for="objetivos.areaInteresse">Área de interesse:</label>
				<div class="col-sm-10">
					<select class="form-control" name="objetivos.areaInteresse">
									<option value=" ">Selecione</option>
									<option <c:if test="${objetivos.areaInteresse == 'Administrativa'}">selected</c:if> value="Administrativa">Administrativa</option>
									<option <c:if test="${objetivos.areaInteresse == 'Call Center'}">selected</c:if> value="Call Center">Call Center</option>
									<option <c:if test="${objetivos.areaInteresse == 'Desenvolvimento de Sistemas'}">selected</c:if> value="Desenvolvimento de Sistemas">Desenvolvimento de Sistemas</option>
									<option <c:if test="${objetivos.areaInteresse == 'Financeiro'}">selected</c:if> value="Financeiro">Financeiro</option>
									<option <c:if test="${objetivos.areaInteresse == 'Marketing'}">selected</c:if> value="Marketing">Marketing</option>
									<option <c:if test="${objetivos.areaInteresse == 'Recursos Humanos'}">selected</c:if> value="Recursos Humanos">Recursos Humanos</option>
									<option <c:if test="${objetivos.areaInteresse == 'Relacionamento'}">selected</c:if> value="Relacionamento">Relacionamento</option>
									<option <c:if test="${objetivos.areaInteresse == 'Suporte ao Cliente'}">selected</c:if> value="Suporte ao Cliente">Suporte ao Cliente</option>
									<option <c:if test="${objetivos.areaInteresse == 'Tecnologia da Informação'}">selected</c:if> value="Tecnologia da Informação">Tecnologia da Informação</option>
									<option <c:if test="${objetivos.areaInteresse == 'Vendas'}">selected</c:if> value="Vendas">Vendas</option>
								</select>
				</div>
	</div>
	
	<h3 class="bg-primary">Dados Pessoais</h3>
	
	<div class="form-group">
			<label class="control-label col-sm-2" for="user.nome">Nome Completo:</label>
				<div class="col-sm-10">
					<input class="form-control" type="text" name="user.nome" value="${user.nome}" required="required">
				</div>
	</div>
	
	<div class="form-group">
			<label class="control-label col-sm-2" for="user.nome">CPF:</label>
				<div class="col-sm-10">
					<input placeholder="XXX.XXX.XXX-XX" pattern="[0-9]{3}\.[0-9]{3}\.[0-9]{3}-[0-9]{2}" class="form-control" type="text" name="user.numeroRg" value="${user.numeroCpf}" required="required">
				</div>
	</div>
	
	<div class="form-group">
			<label class="control-label col-sm-2" for="user.nome">RG:</label>
				<div class="col-sm-10">
					<input placeholder="XX.XXX.XXX-X" pattern="[0-9]{2}\.[0-9]{3}\.[0-9]{3}-[0-9]{1}" class="form-control" type="text" name="user.numeroCpf" value="${user.numeroRg}" required="required">
				</div>
	</div>
	
	<div class="form-group">
			<label class="control-label col-sm-2" for="user.nacionalidade">Nacionalidade:</label>
				<div class="col-sm-10">
					<select class="form-control" name="user.nacionalidade">
									<option value=" ">Selecione</option>
									<option <c:if test="${user.nacionalidade == 'Brasileiro(a)'}">selected</c:if> value="Brasileiro(a)">Brasileiro(a)</option>
									<option <c:if test="${user.nacionalidade == 'Estrangeiro(a)'}">selected</c:if> value="Estrangeiro(a)">Estrangeiro(a)</option>
					</select>
				</div>
	</div>
	
	<div class="form-group">
			<label class="control-label col-sm-2" for="user.dataNascimento">Data de Nascimento:</label>
				<div class="col-sm-10">
					<input class="form-control" type="date" name="user.dataNascimento" value="${user.dataNascimento}" required="required">
				</div>
	</div>
	
	<div class="form-group">
			<label class="control-label col-sm-2" for="user.estadoCivil">Estado Civil:</label>
				<div class="col-sm-10">
					<select class="form-control" name="user.estadoCivil">
									<option value=" ">Selecione</option>
									<option <c:if test="${user.estadoCivil == 'Solteiro(a)'}">selected</c:if> value="Solteiro(a)">Solteiro(a)</option>
												<option <c:if test="${user.estadoCivil == 'Casado(a)'}">selected</c:if> value="Casado(a)">Casado(a)</option>
												<option <c:if test="${user.estadoCivil == 'Separado(a)'}">selected</c:if> value="Separado(a)">Separado(a)</option>
												<option <c:if test="${user.estadoCivil == 'Divorciado(a)'}">selected</c:if> value="Divorciado(a)">Divorciado(a)</option>
												<option <c:if test="${user.estadoCivil == 'Viúvo(a)'}">selected</c:if> value="Viúvo(a)">Viúvo(a)</option>
					</select>
				</div>
	</div>
	
	<div class="form-group">
			<label class="control-label col-sm-2" for="user.sexo">Sexo:</label>
				<div class="col-sm-10">
					<select class="form-control" name="user.sexo">
									<option value=" ">Selecione</option>
												<option <c:if test="${user.sexo == 'Masculino'}">selected</c:if> value="Masculino">Masculino</option>
												<option <c:if test="${user.sexo == 'Feminino'}">selected</c:if> value="Feminino">Feminino</option>
					</select>
				</div>
	</div>
	
	<div class="form-group">
			<label class="control-label col-sm-2" for="user.cep">CEP:</label>
				<div class="col-sm-10">
					<input id="cep" class="form-control" type="text" name="user.cep" value="${user.cep}" required="required">
				</div>
	</div>
	
	<div class="form-group">
			<label class="control-label col-sm-2" for="user.endereco">Endereço:</label>
				<div class="col-sm-10">
					<input id="endereco" class="form-control" type="text" name="user.endereco" value="${user.endereco}" required="required">
				</div>
	</div>
	
	<div class="form-group">
			<label class="control-label col-sm-2" for="user.numero">Numero:</label>
				<div class="col-sm-10">
					<input class="form-control" type="text" name="user.numero" value="${user.numero}" required="required">
				</div>
	</div>
	
	<div class="form-group">
			<label class="control-label col-sm-2" for="user.complemento">Complemento:</label>
				<div class="col-sm-10">
					<input class="form-control" type="text" name="user.complemento" value="${user.complemento}" required="required">
				</div>
	</div>
	
	<div class="form-group">
			<label class="control-label col-sm-2" for="user.bairro">Bairro:</label>
				<div class="col-sm-10">
					<input id="bairro" class="form-control" type="text" name="user.bairro" value="${user.bairro}" required="required">
				</div>
	</div>
	
	<div class="form-group">
			<label class="control-label col-sm-2" for="user.cidade">Cidade:</label>
				<div class="col-sm-10">
					<input id="cidade" class="form-control" type="text" name="user.cidade" value="${user.cidade}" required="required">
				</div>
	</div>
	
	<div class="form-group">
			<label class="control-label col-sm-2" for="user.estado">Estado:</label>
				<div class="col-sm-10">
					<select class="form-control" name="user.estado">
											<option value=" ">Selecione</option>
												<option <c:if test="${user.estado == 'AC'}">selected</c:if> value="AC">AC</option>
												<option <c:if test="${user.estado == 'AL'}">selected</c:if> value="AL">AL</option>
												<option <c:if test="${user.estado == 'AM'}">selected</c:if> value="AM">AM</option>
												<option <c:if test="${user.estado == 'AP'}">selected</c:if> value="AP">AP</option>
												<option <c:if test="${user.estado == 'BA'}">selected</c:if> value="BA">BA</option>
												<option <c:if test="${user.estado == 'CE'}">selected</c:if> value="CE">CE</option>
												<option <c:if test="${user.estado == 'DF'}">selected</c:if> value="DF">DF</option>
												<option <c:if test="${user.estado == 'ES'}">selected</c:if> value="ES">ES</option>
												<option <c:if test="${user.estado == 'GO'}">selected</c:if> value="GO">GO</option>
												<option <c:if test="${user.estado == 'MA'}">selected</c:if> value="MA">MA</option>
												<option <c:if test="${user.estado == 'MG'}">selected</c:if> value="MG">MG</option>
												<option <c:if test="${user.estado == 'MS'}">selected</c:if> value="MS">MS</option>
												<option <c:if test="${user.estado == 'MT'}">selected</c:if> value="MT">MT</option>
												<option <c:if test="${user.estado == 'PA'}">selected</c:if> value="PA">PA</option>
												<option <c:if test="${user.estado == 'PB'}">selected</c:if> value="PB">PB</option>
												<option <c:if test="${user.estado == 'PE'}">selected</c:if> value="PE">PE</option>
												<option <c:if test="${user.estado == 'PI'}">selected</c:if> value="PI">PI</option>
												<option <c:if test="${user.estado == 'PR'}">selected</c:if> value="PR">PR</option>
												<option <c:if test="${user.estado == 'RJ'}">selected</c:if> value="RJ">RJ</option>
												<option <c:if test="${user.estado == 'RN'}">selected</c:if> value="RN">RN</option>
												<option <c:if test="${user.estado == 'RO'}">selected</c:if> value="RO">RO</option>
												<option <c:if test="${user.estado == 'RR'}">selected</c:if> value="RR">RR</option>
												<option <c:if test="${user.estado == 'RS'}">selected</c:if> value="RS">RS</option>
												<option <c:if test="${user.estado == 'SC'}">selected</c:if> value="SC">SC</option>
												<option <c:if test="${user.estado == 'SE'}">selected</c:if> value="SE">SE</option>
												<option <c:if test="${user.estado == 'SP'}">selected</c:if> value="SP">SP</option>
												<option <c:if test="${user.estado == 'TO'}">selected</c:if> value="TO">TO</option>
											</select>
				</div>
	</div>
	
	<div class="form-group">
			<label class="control-label col-sm-2" for="telefonesList[].numeroTelefone">Telefone:</label>
				<div class="col-sm-10">
					<input class="form-control" type="text" name="telefonesList[].numeroTelefone" required="required">		<!-- Chamando a lista -->
				</div>
	</div>
	
	<div class="form-group">
			<label class="control-label col-sm-2" for="user.email">Email:</label>
				<div class="col-sm-10">
					<input class="form-control" type="email" name="user.email" required="required" placeholder="seunome@email.com">
				</div>
	</div>
	
	<div class="form-group">
			<label class="control-label col-sm-2" for="user.realizacoes">Realizações:</label>
				<div class="col-sm-10">
					<input class="form-control" type="text" name="user.realizacoes" required="required">
				</div>
	</div>
	
	<h3 class="bg-primary">Formação Acadêmica</h3>
	
	<div class="form-group">
			<label class="control-label col-sm-2" for="cursosList[].modalidade">Modalidade:</label>
				<div class="col-sm-10">
					<select class="form-control" name="cursosList[].modalidade">
									<option value=" ">Selecione</option>
										<option <c:if test="${cursosList.modalidade == 'Superior'}">selected</c:if> value="Superior">Superior</option>
										<option <c:if test="${cursosList.modalidade == 'Especialização'}">selected</c:if> value="Especialização">Especialização</option>
										<option <c:if test="${cursosList.modalidade == 'Pós Graduação'}">selected</c:if> value="Pós-Graduação">Pós-Graduação</option>
										<option <c:if test="${cursosList.modalidade == 'Mestrado'}">selected</c:if> value="Mestrado">Mestrado</option>
										<option <c:if test="${cursosList.modalidade == 'Doutorado'}">selected</c:if> value="Doutorado">Doutorado</option>
										<option <c:if test="${cursosList.modalidade == 'MBA'}">selected</c:if> value="MBA">MBA</option>
					</select>
				</div>
	</div>
	
	<div class="form-group">
			<label class="control-label col-sm-2" for="cursosList[].curso">Curso:</label>
				<div class="col-sm-10">
					<input class="form-control" type="text" name="cursosList[].curso" required="required">
				</div>
	</div>
	
	<div class="form-group">
			<label class="control-label col-sm-2" for="cursosList[].instituicao">Instituição:</label>
				<div class="col-sm-10">
					<input class="form-control" type="text" name="cursosList[].instituicao" required="required">
				</div>
	</div>
	
	<div class="form-group">
			<label class="control-label col-sm-2" for="cursosList[].dataConclusao">Data de conclusão:</label>
				<div class="col-sm-10">
					<input class="form-control" type="date" name="cursosList[].dataConclusao" required="required">
				</div>
	</div>
	
	<h3 class="bg-primary">Idiomas</h3>
	
	<c:forEach var="x" begin="0" end="1" step="1">
	<div class="form-group">
			<label class="control-label col-sm-2" for="idiomasList[].idioma">Idioma ${x+1}:</label>
				<div class="col-sm-10">
					<select class="form-control" name="idiomasList[${x}].idioma">
									<option value=" ">Selecione</option>
										<option <c:if test="${idiomasList.idioma == 'Inglês'}"	>selected</c:if> value="Inglês">Inglês</option>
													<option <c:if test="${idiomasList[x].idioma == 'Espanhol'}">selected</c:if> value="Espanhol">Espanhol</option>
													<option <c:if test="${idiomasList[x].idioma == 'Italiano'}">selected</c:if> value="Italiano">Italiano</option>
													<option <c:if test="${idiomasList[x].idioma == 'Alemão'}"	>selected</c:if> value="Alemão">Alemão</option>
													<option <c:if test="${idiomasList[x].idioma == 'Francês'}"	>selected</c:if> value="Francês">Francês</option>
													<option <c:if test="${idiomasList[x].idioma == 'Japonês'}"	>selected</c:if> value="Japonês">Japonês</option>
													<option <c:if test="${idiomasList[x].idioma == 'Outros'}"	>selected</c:if> value="Outros">Outros</option>
					</select>
				</div>
	</div>
	
	<div class="form-group">
			<label class="control-label col-sm-2" for="idiomasList[].nivel">Nível ${x+1}:</label>
				<div class="col-sm-10">
					<select class="form-control" name="idiomasList[${x}].nivel">
									<option value=" ">Selecione</option>
													<option <c:if test="${idiomasList[x].nivel == 'Básico'}"		>selected</c:if> value="Básico">Básico</option>
													<option <c:if test="${idiomasList[x].nivel == 'Intermediário'}">selected</c:if> value="Intermediário">Intermediário</option>
													<option <c:if test="${idiomasList[x].nivel == 'Avançado'}"		>selected</c:if> value="Avançado">Avançado</option>
													<option <c:if test="${idiomasList[x].nivel == 'Nativo'}"		>selected</c:if> value="Nativo">Nativo</option>
					</select>
				</div>
	</div>
	
	</c:forEach>
	
	<h3 class="bg-primary">Conhecimentos Específicos</h3>
	
	<div class="form-group">
			<label class="control-label col-sm-2" for="conhecimentosList[].conhecimento">Conhecimento:</label>
				<div class="col-sm-10">
					<select class="form-control" name="conhecimentosList[].conhecimento">
									<option value=" ">Selecione</option>
													<option <c:if test="${conhecimentosList.conhecimento == 'Access'}">selected</c:if> value="Access">Access</option>
													<option <c:if test="${conhecimentosList.conhecimento == 'Word'}">selected</c:if> value="Word">Word</option>
													<option <c:if test="${conhecimentosList.conhecimento == 'Excel'}">selected</c:if> value="Excel">Excel</option>
													<option <c:if test="${conhecimentosList.conhecimento == 'Powerpoint'}">selected</c:if> value="Powerpoint">Powerpoint</option>
													<option <c:if test="${conhecimentosList.conhecimento == 'Project'}">selected</c:if> value="Project">Project</option>
													<option <c:if test="${conhecimentosList.conhecimento == 'Corel Draw'}">selected</c:if> value="Corel Draw">Corel Draw</option>
													<option <c:if test="${conhecimentosList.conhecimento == 'Adobe Photoshop'}">selected</c:if> value="Adobe Photoshop">Adobe Photoshop</option>
													<option <c:if test="${conhecimentosList.conhecimento == 'Auto Cad'}">selected</c:if> value="Auto Cad">Auto Cad</option>
													<option <c:if test="${conhecimentosList.conhecimento == 'Assembler'}">selected</c:if> value="Assembler">Assembler</option>
													<option <c:if test="${conhecimentosList.conhecimento == 'C++'}">selected</c:if> value="C++">C++</option>
													<option <c:if test="${conhecimentosList.conhecimento == 'Cobol'}">selected</c:if> value="Cobol">Cobol</option>
													<option <c:if test="${conhecimentosList.conhecimento == 'Delphi'}">selected</c:if> value="Delphi">Delphi</option>
													<option <c:if test="${conhecimentosList.conhecimento == 'DOS'}">selected</c:if> value="DOS">DOS</option>
													<option <c:if test="${conhecimentosList.conhecimento == 'Front Page'}">selected</c:if> value="Front Page">Front Page</option>
													<option <c:if test="${conhecimentosList.conhecimento == 'HTML'}">selected</c:if> value="HTML">HTML</option>
													<option <c:if test="${conhecimentosList.conhecimento == 'Java'}">selected</c:if> value="Java">Java</option>
													<option <c:if test="${conhecimentosList.conhecimento == 'Javascript'}">selected</c:if> value="Javascript">Javascript</option>
													<option <c:if test="${conhecimentosList.conhecimento == 'Linux'}">selected</c:if> value="Linux">Linux</option>
													<option <c:if test="${conhecimentosList.conhecimento == 'Oracle'}">selected</c:if> value="Oracle">Oracle</option>
													<option <c:if test="${conhecimentosList.conhecimento == 'PERL'}">selected</c:if> value="PERL">PERL</option>
													<option <c:if test="${conhecimentosList.conhecimento == 'Power Builder'}">selected</c:if> value="Power Builder">Power Builder</option>
													<option <c:if test="${conhecimentosList.conhecimento == 'SQL Server'}">selected</c:if> value="SQL Server">SQL Server</option>
													<option <c:if test="${conhecimentosList.conhecimento == 'UNIX'}">selected</c:if> value="UNIX">UNIX</option>
													<option <c:if test="${conhecimentosList.conhecimento == 'VB SCRIPT'}">selected</c:if> value="VB SCRIPT">VB SCRIPT</option>
													<option <c:if test="${conhecimentosList.conhecimento == 'Visual Basic'}">selected</c:if> value="Visual Basic">Visual Basic</option>
													<option <c:if test="${conhecimentosList.conhecimento == 'Windows'}">selected</c:if> value="Windows">Windows</option>
												</select>
				</div>
	</div>
	
	<div class="form-group">
			<label class="control-label col-sm-2" for="conhecimentosList[].nivel">Nível:</label>
				<div class="col-sm-10">
					<select class="form-control" name="conhecimentosList[].nivel">
									<option value=" ">Selecione</option>
										<option <c:if test="${idiomasList.idioma == 'Inglês'}"	>selected</c:if> value="Inglês">Inglês</option>
													<option <c:if test="${conhecimentosList.nivel == 'Básico'}"		>selected</c:if> value="Básico">Básico</option>
													<option <c:if test="${conhecimentosList.nivel == 'Intermediário'}">selected</c:if> value="Intermediário">Intermediário</option>
													<option <c:if test="${conhecimentosList.nivel == 'Avançado'}"		>selected</c:if> value="Avançado">Avançado</option>
													<option <c:if test="${conhecimentosList.nivel == 'Nativo'}"		>selected</c:if> value="Nativo">Nativo</option>
					</select>
				</div>
	</div>
	
	<h3 class="bg-primary">Experiência Profissional</h3>
	
	<div class="form-group">
			<label class="control-label col-sm-2" for="experienciasList[].empresa">Empresa:</label>
				<div class="col-sm-10">
					<input class="form-control" type="text" name="experienciasList[].empresa" required="required">
				</div>
	</div>
	
	<div class="form-group">
			<label class="control-label col-sm-2" for="experienciasList[].ramoAtividade">Ramo de Atividade:</label>
				<div class="col-sm-10">
					<input class="form-control" type="text" name="experienciasList[].ramoAtividade" required="required">
				</div>
	</div>
	
	<div class="form-group">
			<label class="control-label col-sm-2" for="experienciasList[].cargo">Cargo:</label>
				<div class="col-sm-10">
					<input class="form-control" type="text" name="experienciasList[].cargo" required="required">
				</div>
	</div>
	
	<div class="form-group">
			<label class="control-label col-sm-2" for="experienciasList[].dataEntrada">Data de Entrada:</label>
				<div class="col-sm-10">
					<input class="form-control" type="date" name="experienciasList[].dataEntrada" required="required">
				</div>
	</div>
	
	<div class="form-group">
			<label class="control-label col-sm-2" for="experienciasList[].dataSaida">Data de Saída:</label>
				<div class="col-sm-10">
					<input class="form-control" type="date" name="experienciasList[].dataSaida" required="required">
				</div>
	</div>
	
	<div class="form-group">
			<label class="control-label col-sm-2" for="experienciasList[].atividades">Principais atividades:</label>
				<div class="col-sm-10">
					<textarea class="form-control" rows="3" name="experienciasList[].atividades" required></textarea>
				</div>
	</div>
	
	<input type="submit" value="Cadastrar">
			
	</form>
	</div>
	
	<script type="text/javascript" src="<c:url value="/js/consultaCEP.js"/>"></script>
</body>
</html>