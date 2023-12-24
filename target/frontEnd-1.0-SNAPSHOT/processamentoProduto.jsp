<%-- 
    Document   : processamentoProduto
    Created on : 23 de dez. de 2023, 17:23:10
    Author     : nxrtxn
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
  <body onload="salvarProduto(<%= request.getParameter("id")%>, '<%= request.getParameter("nome")%>', '<%= request.getParameter("descricao")%>', '<%= request.getParameter("unidade")%>', '<%= request.getParameter("preco_unitario")%>', '<%= acao%>')">
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
          <a href="./pesquisaUsuario.jsp">Pesquisa usuário</a>
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
          <a href="pesquisa.jsp">Pesquisa cliente</a>
        </div>
      </div>
      <div>
        <h1>Cadastro de cliente</h1>
        <hr id="hr-form" />
      </div>
      <p id="msg"></p>
        <a href="/FrontEnd1012/camisas/lista.jsp">Voltar para Lista de Camisas</a>
     </div>
  </body>
