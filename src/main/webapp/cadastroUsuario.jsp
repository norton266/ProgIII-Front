<%-- 
    Document   : cadastroUsuario
    Created on : 23 de dez. de 2023, 10:52:34
    Author     : nxrtxn
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String cpf = request.getParameter("cpf");
    String acao = request.getParameter("acao");
%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
    <link rel="stylesheet" href="styles.css" />
    <script src="./js/scripts.js"></script>
    <title>Document</title>
  </head>
  <%
      if (acao.equals("atualizar") || acao.equals("excluir")) {
  %>
      <body onload="buscarUsuarioPorId('<%= cpf%>')">
  <%
      } else {
  %>
      <body>
  <%
          cpf = "-1";
      }
  %>
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
          <a href="pesquisa.jsp">Pesquisa Cliente</a>
        </div>
      </div>
      <div>
        <h1>Cadastro de usuário</h1>
        <hr id="hr-form" />
      </div>
      <form id="formulario" action="processamentoUsuario.jsp" method="post">
      <input type="hidden" name="id" id="id" value="<%= cpf%>">

        <label for="cpf">CPF:</label>
        <input
          type="text"
          id="cpf"
          name="cpf"
          pattern="\d{3}\.\d{3}\.\d{3}-\d{2}"
          placeholder ="000.000.000-00"
          required
          title="Digite um CPF válido no formato 000.000.000-00"
        />

        <label for="nome">Nome:</label>
        <input type="text" id="nome" name="nome" maxlength="100" required />
        
        <label for="date">Data:</label>
        <input type="date" id="date" name="date" required />
        
        <label for="email">Email:</label>
        <input type="email" id="email" name="email" required />

        

        <label for="telefone">Telefone:</label>
        <input
          type="text"
          id="telefone"
          name="telefone"
          pattern="\+\d{2}\(\d{2}\)\d{5}-\d{4}"
          required
          title="Digite um telefone válido no formato +55(00)00000-0000"
        />

        <label for="whats">Whatsapp:</label>
        <input type="tel" id="whats" name="whats" required />

        <div class="input-container">
          <label for="username">Username:</label>
          <input
            type="text"
            id="username"
            name="username"
            class="input-form"
            pattern=".{8,15}"
            required
            title="O username deve conter entre 8 e 15 caracteres"
            maxlength="15"
          />

          <label for="senha">Senha:</label>
          <input
            type="password"
            id="senha"
            name="senha"
            class="input-form"
            pattern="^(?=.*[A-Za-z0-9]).{8,}$"
            required
            title="A senha deve conter pelo menos 8 caracteres, incluindo uma letra ou um número"
          />
        </div>

        <div class="buttons">
          <input type="submit" name="acao" value="<%= acao%>" id="salvar"/>
          <input type="submit" value="Cancelar" id="cancelar" />
        </div>
      </form>
    </div>
  </body>
</html>
