<%-- 
    Document   : AlterarCliente
    Created on : 2 de mar. de 2021, 20:09:01
    Author     : ivanyuratakano
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://fonts.googleapis.com/css2?family=Commissioner&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300&display=swap" rel="stylesheet">
        <link href="<c:url value="Estilo.css"/>" rel="stylesheet">
        <title>JSP Page</title>
    </head>
    <body>
        <h1><a id="voltar" href="<c:url value="/ListarClientes"/>">◀</a>Alteração do melequin ${cliente.nome}</h1>
        <form action="AlterarCliente" method="POST">
            <p class="p_form">nome</p>
            <input class="input_form" name="nome" value="${cliente.nome}" required>
            <p class="p_form">email</p>
            <input class="input_form" name="email" value="${cliente.email}" required>
            <p class="p_form">cpf</p>
            <input class="input_form" name="cpf" value="${cliente.cpf}" readonly="true">
            <p class="p_form">telefone</p>
            <input class="input_form" name="telefone" value="${cliente.telefone}" required>
            <p class="p_form">logradouro</p>
            <input class="input_form" name="" value="${cliente.logradouro}" required>
            <p class="p_form">numero</p>
            <input class="input_form" name="endereco" value="${cliente.numero}" required>
            <p class="p_form">complemento</p>
            <input class="input_form" name="endereco" value="${cliente.complemento}" required>
            <p class="p_form">bairro</p>
            <input class="input_form" name="endereco" value="${cliente.bairro}" required>
            <p class="p_form">cidade</p>
            <input class="input_form" name="endereco" value="${cliente.cidade}" required>
            <p class="p_form">estado</p>
            <input class="input_form" name="endereco" value="${cliente.estado}" required>
            <button type="submit" class="submit">Enviar</button>
        </form>
    </body>
</html>
