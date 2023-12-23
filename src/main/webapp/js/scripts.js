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
                linha += "<td>"+msg[i].nome+"</td>";
                linha += "<td>"+msg[i].cpf+"</td>";
                linha += "<td>"+msg[i].email+"</td>";
                linha += "<td>"+msg[i].telefone+"</td>";
                linha += "<td>"+msg[i].cep+"</td>";
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
    var params = '{\"cpf\":'+$('input[name="cpf"]:checked').val()+'}';

    $.ajax({
        type: "PUT",
        url: "http://localhost/ProgIII/webresources/Clientes/excluir",
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
        url: "http://localhost/ProgIII/webresources/Clientes/inserir",
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
