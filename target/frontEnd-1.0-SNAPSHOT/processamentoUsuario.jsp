<%-- 
    Document   : processamento
    Created on : 23 de dez. de 2023, 10:53:55
    Author     : nxrtxn
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="styles.css" />
    <script src="./js/scripts.js"></script>
    <title>Document</title>
  </head>
    <%
        String acao = request.getParameter("acao");
    %>
  <body onload="salvarUsuario('<%= request.getParameter("cpf")%>', '<%= request.getParameter("nome")%>', '<%= request.getParameter("data_nascimento")%>', '<%= request.getParameter("email")%>', '<%= request.getParameter("telefone")%>', <%= request.getParameter("whats")%>, '<%= request.getParameter("username")%>', '<%= request.getParameter("senha")%>', '<%= acao%>')">
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
          <a href="./pesquisaUsuario.jsp">Pesquisa usuário</a>
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
        <h1>Cadastro</h1>
        <hr id="hr-form" />
      </div>
      <p id="msg"></p>
        <a href="/frontEnd/pesquisa.jsp">Voltar</a>
     </div>
  </body>
        
        
</html>
