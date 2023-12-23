<%-- 
    Document   : processamento
    Created on : 23 de dez. de 2023, 10:53:55
    Author     : nxrtxn
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lojão Oba Oba</title>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
        <script language="javascript" src="./js/scripts.js"></script>
    </head>
    <%
    String acao = request.getParameter("acao");
    %>
    <body onload="salvarUsuario('<%= request.getParameter("cpf")%>', '<%= request.getParameter("nome")%>', '<%= request.getParameter("data_nascimento")%>', '<%= request.getParameter("email")%>', '<%= request.getParameter("telefone")%>', <%= request.getParameter("whats")%>, '<%= request.getParameter("username")%>', '<%= request.getParameter("senha")%>', '<%= acao%>')">
        <h1>Cadastro de Usuarios</h1>
        <hr>
        <p id="msg"></p>
        <a href="/FrontEnd1012/camisas/lista.jsp">Voltar para Lista de Camisas</a>
    </body>
</html>
