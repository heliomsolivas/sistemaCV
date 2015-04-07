$(document).ready(function() {

    function cleanForm() {
        // Limpa valores do formulário de cep.
        $("#rua").val("");
        $("#bairro").val("");
        $("#cidade").val("");
        $("#endereco").val("");
    }

    //Quando o campo cep perde o foco.
    $("#cep").blur(function() {

        //Nova variável com valor do campo "cep".
        var cep = $(this).val();

        //Verifica se campo cep possui valor informado.
        if (cep != "") {

            //Expressão regular para validar o CEP.
            var validacep = /^[0-9]{5}-?[0-9]{3}$/;

            //Valida o formato do CEP.
            if (validacep.test(cep)) {

                //Preenche os campos com "..." enquanto consulta webservice.
                $("#rua").val("...")
                $("#bairro").val("...")
                $("#cidade").val("...")
                $("#endereco").val("");

                //Consulta o webservice viacep.com.br/
                $.getJSON("http://api.postmon.com.br/v1/cep/" + cep, function(dados) {

                    if (!("erro" in dados)) {
                        //Atualiza os campos com os valores da consulta.
                        $("#rua").val(dados.logradouro);
                        $("#bairro").val(dados.bairro);
                        $("#cidade").val(dados.estado_info.nome);
                        $("#endereco").val(dados.logradouro);
                    } //end if.
                    else {
                        //CEP pesquisado não foi encontrado.
                        cleanForm();
                        alert("CEP não encontrado.");
                    }
                });
            } //end if.
            else {
                //cep é inválido.
                limpa_formulário_cep();
                alert("Formato de CEP inválido.");
            }
        } //end if.
        else {
            //cep sem valor, limpa formulário.
            limpa_formulário_cep();
        }
    });
});