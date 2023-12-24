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

  <body onload="listarClientes()">
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
          <a href="pesquisa.html">Pesquisa cliente</a>
        </div>
      </div>

      <div>
        <h1>Pesquisa</h1>
        <hr id="hr-form" />
      </div>

      <form class="filtroGeral">
        <label for="nome">Filtro:</label>
        <div id="campoFiltro">
          <input type="text" id="filtro" name="filtro" required />
        </div>
        <div class="botaoFiltro">
          <button id="botaoFiltrar" class="input-filter">Filtrar</button>
        </div>
      </form>
      <form action="cadastroCliente.jsp" method="post">
      <div id="buttons-pesquisa">
        <a href="./cadastroCliente.jsp"
          ><input type="submit" name="acao" value="Inserir" class="input-filter"
        /></a>
        <a href="./cadastroCliente.jsp"
          ><input type="submit" name="acao" value="Atualizar" class="input-filter"
        /></a>
        <a href="./cadastroCliente.jsp"
          ><input type="submit" value="Excluir" class="input-filter" onclick="excluir()"
        /></a>
      </div>

      <div id="resultadoPesquisa">
        <div id="tabela">
          <table id="tabelaResultado">
            <tr id="menu">
              <th>Seleção</th>
              <th>CPF</th>
              <th>Nome</th>
              <th>Email</th>
              <th>Data de Nascimento</th>
              <th>Telefone</th>
            </tr>

          </table>
        </div>
      </div>
    </form>
    </div>
  </body>
</html>
