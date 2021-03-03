

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista de Clientes</title>
        <link href="https://fonts.googleapis.com/css2?family=Commissioner&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300&display=swap" rel="stylesheet">        
        <script type="text/javascript" src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
        
        <style>
            .main{
                margin: 20px; /*Same as the width of the sidenav */
                padding: 0px 0px;
            }
            .menuBtn{
                font-family: 'Poppins', sans-serif;
                transition-duration: 0.1s;
                background-color: #444;                
                border: 2px solid white;
                border-radius: 1px;
                width: 300px;
            }
        </style>   
    </head>
    <body>
       <%@include file="index.html" %>
        <div class="main">
            <a href="index.html"><p class='menuBtn'>Voltar</p></a>
            <h1>Lista completa de Clientes</h1>           
            <table class="tab">
                <thead>
                <th>Nome</th>
                <th>Email</th>
                <th>CPF</th>                
                <th>Telefone</th>
                <th>Logardouro</th>
                <th>Numero</th>
                <th>Complemento</th>
                <th>Bairro</th>
                <th>Cidade</th>
                <th>Estado</th>                
                </thead>
                <tbody>                    
                    <c:set var = "i" scope = "session" value = "${0}"/>
                    <c:forEach var="cliente" items="${listaClientes}">
                        <c:set var = "i" scope = "session" value = "${i+1}"/>
                        <tr id="row${i}">
                        <tr>    
                            <td>${cliente.nome}</td>
                            <td>${cliente.cpf}</td>
                            <td>${cliente.email}</td>                            
                            <td>${cliente.telefone}</td>                            
                            <td>${cliente.logradouro}</td>
                            <td>${cliente.numero}</td>
                            <td>${cliente.complemento}</td>
                            <td>${cliente.bairro}</td>
                            <td>${cliente.cidade}</td>   
                            <td>${cliente.estado}</td> 
                            <td class="options"><a href="AlteraCliente?cpf=${cliente.cpf}"><p id="alter" class="option">Alterar</p></a></td>
                            <td class="options"><a href="ExcluirCliente?cpf=${cliente.cpf}" onclick="return confirm('Confirma a exclusão do cliente ${cliente.nome}?')"><p id="excluir" class="option">Excluir</p></a></td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </body>
</html>
