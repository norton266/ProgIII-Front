<%-- 
    Document   : cadastroProduto
    Created on : 23 de dez. de 2023, 17:18:12
    Author     : nxrtxn
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String id = request.getParameter("id");
    String acao = request.getParameter("acao");
%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="styles.css" />
    <script src="./js/scripts.js"></script>
    <title>Document</title>
  </head>

  <body>
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
        <h1>Cadastro de produto</h1>
        <hr id="hr-form" />
      </div>
      <form id="formulario" action="processamentoProduto.jsp" method="post">
        <label for="nome">Nome:</label>
        <input type="text" id="nome" name="nome" maxlength="100" required />

        <label for="descricao">Descrição:</label>
        <input type="text" id="descricao" name="descricao" />

        <label for="unidade">Unidade:</label>
        <input
          type="text"
          id="unidade"
          name="unidade"
          pattern="(UNI|PEC|LT|KG|CX|FR|GAR)"
          title="Por favor, insira uma das opções válidas: UNI, PEC, LT, KG, CX, FR, GAR"
          required
        />

        <label for="preco">Preço:</label>
        <input
          type="number"
          id="preco"
          name="preco"
          step="0.01"
          min="0.00"
          required
        />

        <div class="buttons">
          <input type="submit" value="inserir" name="acao" id="salvar" />
          <input type="submit" value="Cancelar" id="cancelar" />
        </div>
      </form>
    </div>
  </body>
</html>
