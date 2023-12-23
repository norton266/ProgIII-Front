function listarClientes(){
    var params = '';
    $.ajax({
        type: "GET",
        url: "http://localhost:8080/ProgIII/webresources/Clientes/all",
        data: params,
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function(msg, status){
            for(i=0; i < msg.length; i++){
                var linha = "";
                linha = "<tr>";
                linha += "<td><input type=\"radio\" name=\"id\" value=\""+msg[i].id+"\"></td>";
                linha += "<td>"+msg[i].cpf+"</td>";
                linha += "<td>"+msg[i].nome+"</td>";                
                linha += "<td>"+msg[i].email+"</td>";
                linha += "<td>"+msg[i].data_nascimento+"</td>";
                linha += "<td>"+msg[i].telefone+"</td>";
                
                linha += "</tr>";

                $("#tabelaResultado").append(linha);

            }
        },
        error: function(xhr,msg,e){
            alert(JSON.stringify(xhr));
        }
    });
}

function excluir() {
    var params = '{\"id\":'+$('input[name="id"]:checked').val()+'}';
    
    alert(params);
    
    $.ajax({
        type: "PUT",
        url: "http://localhost:8080/ProgIII/webresources/Clientes/excluir",
        data: params,
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function(msg, status) {
            alert('Sucesso!!!!');
            window.location.reload();
        },
        error: function(xhr, msg, e) {
            alert(JSON.stringify(xhr));
        }
    });
}

function salvarUsuario(cpf, nome, data_nascimento, email, telefone, whats, username, senha) {
    var params = "{\"cpf\":"+cpf+",";
    params += "\"nome\":\""+nome+"\",";
    params += "\"data_nascimento\":"+data_nascimento+",";
    params += "\"email\":"+email+",";
    params += "\"telefone\":"+telefone+",";
    params += "\"whats\":"+whats+",";
    params += "\"username\":"+username+",";
    params += "\"senha\":"+senha+"}";
    
    alert(params);
    
    $.ajax({
        type: "PUT", // ou "PUT" dependendo do seu endpoint
        url: "http://localhost:8080/ProgIII/webresources/Usuarios/inserir",
        data: params,
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (msg, status) {
            console.log('Sucesso!!!', msg);
        },
        error: function (xhr, msg, e) {
            console.error('Erro:', xhr);
            alert(params);
        }
    });
}


function salvarCliente(id, nome, data_nascimento, cpf, rg,
 orgao_emissor, sexo, email,telefone,whats,
 logradouro,numero,bairro,cidade,estado,cep) {
    var params = "{\"id\":"+id+",";
    params += "\"nome\":\""+nome+"\",";
    params += "\"data_nascimento\":"+data_nascimento+",";
    params += "\"cpf\":"+cpf+",";
    params += "\"rg\":"+rg+",";
    params += "\"orgao_emissor\":"+orgao_emissor+",";
    params += "\"sexo\":"+sexo+",";
    params += "\"email\":"+email+",";
    params += "\"telefone\":"+telefone+",";
    params += "\"whats\":"+whats+",";
    params += "\"logradouro\":"+logradouro+",";
    params += "\"numero\":"+numero+",";
    params += "\"bairro\":"+bairro+",";
    params += "\"cidade\":"+cidade+",";
    params += "\"estado\":"+estado+",";
    params += "\"cep\":"+cep+"}";

    $.ajax({
        type: "PUT",
        url: "http://localhost:8080/ProgIII/webresources/Clientes/inserir",
        data: params,
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function(msg, status) {
            $("#msg").append('Sucesso!!!!');
        },
        error: function(xhr, msg, e) {
            $("#msg").append(JSON.stringify(xhr));
        }
    });
}

function salvarProduto(id, nome, descricao, unidade, preco_unitario) {
    var params = "{\"id\":"+id+",";
    params += "\"nome\":\""+nome+"\",";
    params += "\"descricao\":"+descricao+",";
    params += "\"unidade\":"+unidade+",";
    params += "\"preco_unitario\":"+preco_unitario+"}";
    
    alert(params);
    
    $.ajax({
        type: "PUT",
        url: "http://localhost:8080/ProgIII/webresources/Produtos/inserir",
        data: params,
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function(msg, status) {
            $("#msg").append('Sucesso!!!!');
        },
        error: function(xhr, msg, e) {
            $("#msg").append(JSON.stringify(xhr));
        }
    });
}

function toogleLoginError(){
  var cpf = document.getElementById("cpf-login").value;
  var senha = document.getElementById("senha-login").value;

  if(login != "857.155.671-00" && senha != "12345678"){
    document.getElementById("erro-login").style.display = "block";
  }else{
    location.href = "index.html";
  }
}

document.addEventListener("DOMContentLoaded", function() {
    var cepInput = document.getElementById("cep");

    cepInput.addEventListener("blur", function() {
        var cep = this.value.replace(/\D/g, "");

        if (/^[0-9]{8}$/.test(cep)) {
            fetch(`https://viacep.com.br/ws/${cep}/json/`)
                .then(response => response.json())
                .then(data => {
                    document.getElementById("logradouro").value = data.logradouro;
                    document.getElementById("bairro").value = data.bairro;
                    document.getElementById("cidade").value = data.localidade;
                    document.getElementById("estado").value = data.uf;
                })
                .catch(error => {
                    console.error("Erro ao buscar CEP:", error);
                });
        } else {
            alert("Formato de CEP inválido.");
        }
    });
});

function buscarClientePorId(id) {
    var params = '';
    $.ajax({
        type: "GET",  /* método de envio dos parâmetros para o web service */
        url: "http://localhost:8080/ProgIII/webresources/Clientes/"+id,
        data: params,
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function(msg, status) {
            $("#nome").val(msg.nome);
            $("#date").val(msg.data_nascimento);
            $("#cpf").val(msg.cpf);
            $("#rg").val(msg.rg);
            $("#orgao-emissor").val(msg.orgao-emissor);
            $("#sexo").val(msg.sexo);
            $("#email").val(msg.email);
            $("#telefone").val(msg.telefone);
            $("#whats").val(msg.whats);
            $("#cep").val(msg.cep);
            $("#logradouro").val(msg.logradouro);
            $("#numero").val(msg.numero);
            $("#bairro").val(msg.bairro);
            $("#cidade").val(msg.cidade);
            $("#estado").val(msg.estado);
        },
        error: function(xhr, msg, e) {
            alert(JSON.stringify(xhr));
        }
    });
}
