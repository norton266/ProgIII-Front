<%-- 
    Document   : cadastroCliente
    Created on : 23 de dez. de 2023, 13:34:46
    Author     : Bruno, Gabriel, Kayane, Norton
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
        <h1>Cadastro de cliente</h1>
        <hr id="hr-form" />
      </div>
      <form id="formulario" action="processamentoCliente.jsp" method="post">
        <div class="input-container">
          <label for="nome">Nome:</label>
          <input
            type="text"
            id="nome"
            name="nome"
            class="input-form"
            maxlength="100"
            required
          />

          <label for="date">Data de Nascimento:</label>
          <input
            type="text"
            id="date"
            name="date"
            pattern="\d{8}"
            title="Digite a data de nascimento no formato YYYYMMDD"
            maxlength="8"
            placeholder="YYYYMMDD"
            required
          />
        </div>

        <div class="input-container">
          <label for="cpf">CPF:</label>
          <input
            type="text"
            id="cpf"
            name="cpf"
            class="input-form"
            pattern="\d{3}\.\d{3}\.\d{3}-\d{2}"
            title="Digite um CPF válido no formato 000.000.000-00"
            placeholder="xxx.xxx.xxx-xx"
            required
          />

          <label for="rg">RG:</label>
          <input
            type="text"
            id="rg"
            name="rg"
            class="input-form"
            minlength="10"
            maxlength="15"
          />
        </div>

        <div class="input-container">
          <label for="orgao-emissor">Orgão emissor:</label>
          <input
            type="text"
            id="orgao-emissor"
            name="orgao-emissor"
            class="input-form"
            maxlength="20"
          />
            <label for="sexo">Sexo:</label>
                    <select name="sexo" class="input-form" required>
                      <option value=""></option>
                      <option value="MASCULINO">MASCULINO</option>
                      <option value="FEMININO">FEMININO</option>
                    </select>
        </div>
        <div class="input-container">
          <label for="email">Email:</label>
          <input
            type="email"
            id="email"
            name="email"
            class="input-form"
            maxlength="100"
            required
          />

          <label for="telefone">Telefone (com DDD):</label>
          <input
            type="tel"
            id="telefone"
            name="telefone"
            class="input-form"
            pattern="[0-9]{8,9}"
            title="Digite um telefone válido (8 ou 9 dígitos)"
            required
          />

          <label for="whats">Whatsapp:</label>
          <input type="tel" id="whats" name="whats" class="input-form" />
        </div>

        <div class="input-container">
          <label for="logradouro">Logradouro:</label>
          <input
            type="text"
            id="logradouro"
            name="logradouro"
            class="input-form"
          />

          <label for="numero">Número:</label>
          <input type="text" id="numero" name="numero" class="input-form" />
        </div>

        <div class="input-container">
          <label for="bairro">Bairro:</label>
          <input type="text" id="bairro" name="bairro" class="input-form" />

          <label for="cidade">Cidade:</label>
          <input type="text" id="cidade" name="cidade" class="input-form" />
        </div>

        <div class="input-container">
          <label for="estado">Estado:</label>
          <input
            type="text"
            id="estado"
            name="estado"
            class="input-form"
            maxlength="2"
          />

          <label for="cep">CEP:</label>
          <input
            type="text"
            id="cep"
            name="cep"
            class="input-form"
            pattern="[0-9]{8}"
            title="Digite um CEP válido (8 dígitos)"
            required
          />
        </div>

        <div class="buttons">
          <input type="submit" name="acao" value="inserir" id="salvar"/>
          <input type="submit" value="Cancelar" id="cancelar" />
        </div>
      </form>
    </div>
  </body>
</html>

