$(function(){
    var passa1 = false;
    var passa2 = false;
    var passa3 = false;
    var passa4 = false;
    var passa5 = false;
    var passa6 = false;
    var passa7 = false;
    var passa8 = false;
    var passa9 = false;
    var passa10 = false;
    var passa11 = false;
    var passa12 = false;
    var passa13 = false;

    /* MUDA PESSOA */
    $(".tipoPessoa").change(function(){
        if( $(".tipoPessoa").index(this) == 0 ){
            $(".fisica").show()
            $(".juridica").hide();
            $("#campoDocumento").mask("999.999.999-99");
        }else{
            $(".fisica").hide()
            $(".juridica").show();
            $("#campoDocumento").mask("99.999.999/9999-99");
        }
        passa1 = true;
    });
    /* / MUDA PESSOA */
    
    /* ENVIAR FORMULARIO */
    $("#btEnviar").click(function(){
        /* NOME */
        if( $("#campoNome").val().length >= 3 ){
            passa2 = true;
        }else{
            passa2 = false;
        }
        /* / NOME */
        
        /* EMAIL */
 //       var regexEmail = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i;
        if( $("#campoEmail").val().length >= 5 ){
            passa3 = true;
        }else{
            passa3 = false;
        }
        /* / EMAIL */
        
        /* TELEFONE */
        if( $("#campoTelefone").val().length > 1 ){
            passa4 = true;
        }else{
            passa4 = false;
        }
        /* / TELEFONE */
        
        /* DOCUMENTO */
        if( $("#campoDocumento").val().length > 1 ){
            passa5 = true;
        }else{
            passa5 = false;
        }
        /* / DOCUMENTO */
        
        /* CEP */
        if( $("#campoCep").val().length > 1 ){
            passa6 = true;
        }else{
            passa6 = false;
        }
        /* / CEP */
        
        /* LOGRADOURO */
        if( $("#campoLogradouro").val().length > 5 ){
            passa7 = true;
        }else{
            passa7 = false;
        }
        /* / LOGRADOURO */
        
        /* NUMERO */
        if( $("#campoNumero").val().length > 0 ){
            passa8 = true;
        }else{
            passa8 = false;
        }
        /* / NUMERO */
        
        /* CIDADE */
        if( $("#campoCidade").val().length > 2 ){
            passa9 = true;
        }else{
            passa9 = false;
        }
        /* / CIDADE */
        
        /* ESTADO */
        if( $("#campoEstado").val().length > 2 ){
            passa10 = true;
        }else{
            passa10 = false;
        }
        /* / ESTADO */
        
        /* FUNCAO */
        var count = 0;
        
        $(".funcao").each(function(){
            if( $(this).hasClass('funcSelected') ){
                count++;
            }
        });
        
        if( count >= 1 ){
            passa11 = true;
        }else{
            passa11 = false;
        }
        /* / FUNCAO */
        
        /* MENSAGEM */
        if( $('#campoDescricao').val().length > 3 ){
            passa12 = true;
        }else{
            passa12 = false;
        }
        /* / MENSAGEM */
        
        if( passa1 && passa2 && passa3 && passa4 && passa5 && passa6 && passa7 && passa8 && passa9 && passa10 && passa11 && passa12 && passa13 ){
            $('form').submit();
        }else{
		alert("Preencha todos os campos corretamente");
	   }
    });
    
    /* SERVICO PRESTADO */
    $(".servicoPrestado").change(function(){
        passa13 = true;
    });
    /* / SERVICO PRESTADO */
    
    /* FUNCAO */
    $(".funcao").click(
        function(){
            $(this).addClass('funcSelected');
        },function(){
            $(this).removeClass('funcSelected');
        }
    );
    /* / FUNCAO */
    
    /* MENSAGEM */
    var carac = 200;
    
    $("#campoDescricao").keypress(function(){
        carac--;
        if( carac == 1 ){
            $("#avisoDescricao").html( carac + " caracter restante" )
        }else if( carac == 0 ){
            $("#avisoDescricao").html( "Nenhum caracter restante" )
            $("#campoDescricao").unbind('keypress');
        }else{
            $("#avisoDescricao").html( carac + " caracteres restantes" )
        }
        
    });
    /* / MENSAGEM */
    
    /* / ENVIAR FORMULARIO */
});
