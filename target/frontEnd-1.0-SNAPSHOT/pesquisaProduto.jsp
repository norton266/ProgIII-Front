<%-- 
    Document   : pesquisaProduto
    Created on : 23 de dez. de 2023, 22:16:27
    Author     : nxrtxn
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="styles.css" />
    <script language="javascript" src="./js/scripts.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
    <title>Document</title>
  </head>

  <body onload="listarProdutos()">
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
          <a href="./pesquisaProduto.jsp">Pesquisa produto</a>
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
        <h1>Pesquisa</h1>
        <hr id="hr-form" />
      </div>

      <form action="cadastroProduto.jsp" method="post">
      <div id="buttons-pesquisa">
        <a href="./cadastroProduto.jsp"
          ><input type="submit" name="acao" value="inserir" class="input-filter"
        /></a>
        <a href="./cadastroProduto.jsp"
          ><input type="submit" name="acao" value="atualizar" class="input-filter"
        /></a>
        <a href="./cadastroProduto.jsp"
          ><input type="submit" value="excluir" class="input-filter" onclick="excluirProduto()"
        /></a>
      </div>

      <div id="resultadoPesquisa">
        <div id="tabela">
          <table id="tabelaResultado">
            <tr id="menu">
              <th>Seleção</th>
              <th>Nome</th>
              <th>Descrição</th>                          
              <th>Unidade</th>
              <th>Preço</th>
            </tr>

          </table>
        </div>
      </div>
    </form>
    </div>
  </body>
</html>

