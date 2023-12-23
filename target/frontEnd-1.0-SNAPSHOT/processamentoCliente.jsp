<%-- 
    Document   : processamentoCliente
    Created on : 23 de dez. de 2023, 13:48:02
    Author     : Bruno, Gabriel, Kayane, Norton
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
    <link rel="stylesheet" href="styles.css" />
    <script src="./js/scripts.js"></script>
    <title>Document</title>
  </head>
    <%
        String acao = request.getParameter("acao");
    %>
  <body onload="salvarCliente(<%= request.getParameter("id")%>, '<%= request.getParameter("nome")%>', <%= request.getParameter("data_nascimento")%>, 
              '<%= request.getParameter("cpf")%>', '<%= request.getParameter("rg")%>', 
              <%= request.getParameter("Orgao Emissor")%>, '<%= request.getParameter("sexo")%>', 
              '<%= request.getParameter("email")%>', '<%= request.getParameter("telefone")%>',
              '<%= request.getParameter("whats")%>', '<%= request.getParameter("logradouro")%>', 
              '<%= request.getParameter("numero")%>', '<%= request.getParameter("bairro")%>', 
              '<%= request.getParameter("cidade")%>', '<%= request.getParameter("estado")%>', 
              '<%= request.getParameter("cep")%>', '<%= acao%>')">
    <div>
      <header>
        <img src="./icons/pizza.png" id="logo-img" />
        <h1>Sabor Celestial</h1>
      </header>
      <div class="menu-lateral">
        <div id="menu-links">
          <img src="./icons/botao-home.png" class="menu-icones" />
          <a href="index.html">Home</a>
        </div>
        <div id="menu-links">
          <img src="./icons/pessoas.png" class="menu-icones" />
          <a href="tela-login.html">Login</a>
        </div>
        <div id="menu-links">
          <img src="./icons/pessoas.png" class="menu-icones" />
          <a href="./cadastro-usuario.html">Cadastro de usuário</a>
        </div>
        <div id="menu-links">
          <img src="./icons/pessoas.png" class="menu-icones" />
          <a href="./cadastro-cliente.html">Cadastro de cliente</a>
        </div>
        <div id="menu-links">
          <img src="./icons/icone-pizza-menu.png" class="menu-icones" />
          <a href="./cadastro-produto.html">Cadastro de produto</a>
        </div>
        <div id="menu-links">
          <img src="./icons/icone-pizza-menu.png" class="menu-icones" />
          <a href="./cadastro-pedido.html">Cadastro de pedido</a>
        </div>
        <div id="menu-links">
          <img src="./icons/icone-pizza-menu.png" class="menu-icones" />
          <a href="pesquisa.jsp">Pesquisa</a>
        </div>
      </div>
      <div>
        <h1>Cadastro de cliente</h1>
        <hr id="hr-form" />
        <p id="msg"></p>
        <a href="/FrontEnd1012/camisas/lista.jsp">Voltar para Lista de Camisas</a>
      </div>
      
     </div>
  </body>
        
        
</html>
