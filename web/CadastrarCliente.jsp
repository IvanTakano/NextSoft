<%-- 
    Document   : CadastrarCliente
    Created on : 2 de mar. de 2021, 20:16:53
    Author     : ivanyuratakano
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://fonts.googleapis.com/css2?family=Commissioner&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link href="<c:url value="Estilo.css"/>
        <style>
            .menuBtn{
                font-family: 'Poppins', sans-serif;
                transition-duration: 0.1s;
                background-color: #444;
                width: 200px;
                border: 2px solid white;
                border-radius: 1px;
            }
            .menuBtn:hover{
                font-size: 18px;
                color: #fff;
                background-color: #666;
                width: 240px;
            }
        </style>
        <title>Cadastar Cliente</title>
    </head>
    <body>
       <form action="Cliente" method="post">
            <a href="index.html"><p class='menuBtn'>Voltar</p></a>
            <h3>Cadastro de Cliente</h3>
            <table>
                <tr>
                    <td>Nome</td>
                    <td><input type="text" name="nome"/></td>    
                </tr>
                
                <tr>
                    <td>CPF</td>
                    <td><input type="text" name="cpf"/></td>    
                </tr>
                
                <tr>
                    <td>E-mail</td>
                    <td><input type="text" name="email"/></td>    
                </tr>
                
                <tr>
                    <td>Telefone</td>
                    <td><input type="text" name="telefone"/></td>    
                </tr>
                
                <tr>
                    <td>Endereço</td><br/>
                </tr>
                   
                <div>
                    <td>Tipo de Endereço</td>
                    <td>    
                        <select name = "tipoEndereco">                            
                            <option>Principal</option>
                            <option>Correspondencia</option>
                            <option>Comercial</option>
                            <option>Outro</option>
                        </select>
                    </td>
                    <td>Logradouro</td>
                    <td><input type="text" name="logradouro"/> </td>                    
                    <td>Número</td>
                    <td><input type="text" name="numero"/></td>                     
                </div>
                <tr>
                    <td>Complemento</td>                    
                    <td><input type="text" name="complemento"/></td>
                    <td>Bairro</td>
                    <td><input type="text" name="bairro"/></td>    
                    <td>Cidade</td>
                    <td><input type="text" name="cidade"/></td>
                    <td>Estado</td>
                    <td><input type="text" name="estado"/></td>
                </tr>
                
                <td>
                    <input type="submit" value="enviar"/>
                </td>
            </table>            
        </form>
    </body>
</html>
