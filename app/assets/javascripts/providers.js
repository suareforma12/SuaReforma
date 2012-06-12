// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
var num_tasks = 0;

function add_task(){
  name_task  = $('#new_task').val();
  id_task    = 'task_'+num_tasks;

  content = "<li>";
  content += "<input type='hidden' name='new_tasks[]' value='"+name_task+"' />";
  content += "<p>"+name_task+"</p>";
  content += "<a href='javascript:void(0);' class='excluir' onclick=\"del_task('"+id_task+"');return false;\"> x excluir</a>";
  content += "</li>";
  $('<p>',{
    html : content,
    id   : id_task
  }).appendTo("#new_tasks ul");
  num_tasks++;
  $('#new_task').val('');
}
function del_task(id){
  id = '#'+id;
  $(id).remove();
}

function getEndereco() {
  // Se o campo CEP não estiver vazio
  if($.trim($("#campoCep").val()) != ""){
  //document.getElementById("load").style.display = 'block';
  /*
   *  Para conectar no serviço e executar o json, precisamos usar a função
   *  getScript do jQuery, o getScript e o dataType:"jsonp" conseguem fazer o cross-domain, os outros
   *  dataTypes não possibilitam esta interação entre domínios diferentes
   *  Estou chamando a url do serviço passando o parâmetro "formato=javascript" e o CEP digitado no formulário
   *  http://cep.republicavirtual.com.br/web_cep.php?formato=javascript&cep="+$("#cep").val()
   */
    $.getScript("http://cep.republicavirtual.com.br/web_cep.php?formato=javascript&cep="+$("#campoCep").val(),function(){
      // o getScript dá um eval no script, então é só ler!
      //Se o resultado for igual a 1
      if(resultadoCEP["resultado"] && resultadoCEP["bairro"] != ""){
        // troca o valor dos elementos
        $("#campoLogradouro").val(unescape(resultadoCEP["tipo_logradouro"])+":"+unescape(resultadoCEP["logradouro"]));
        //$("#bairro").val(unescape(resultadoCEP["bairro"]));
        $("#campoCidade").val(unescape(resultadoCEP["cidade"]));
        $("#campoEstado").val(unescape(resultadoCEP["uf"]));
        //$("#enderecoCompleto").show("slow");
        $("#campoNumero").focus();
        //document.getElementById("load").style.display = 'none';
        //validate()
      }else{
        alert("Endereço não encontrado");
        //$("#enderecoCompleto").show("slow");
        return false;
      }
    });
  }else{
    alert('Antes, preencha o campo CEP!')
    //document.getElementById("load").style.display = 'none';
  }
}
