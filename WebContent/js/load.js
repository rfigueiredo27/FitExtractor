function loading() {
/* Assim que o documento estiver pronto */
$(document).ready(function() {
$("a").click(function(event) { /* No evento click da tag (a) */
$('#conteudo').html('<img src="images/loader.gif">'); /* Dentro da div conteudo ele irá adicionar a seguinte imagem */	
$('#conteudo').load('lista_pos_app.jsp',aviso()); /* Quando ele terminar de carregar o arquivo contato.php ele some com a imagem e mostra o conteudo */
}); /* Fecha evento click do mouse */
}); /* Fecha Funcao Loading */

function aviso(){
alert ('Conteudo será carregado agora!'); /* Cria uma caixa de mensagem exibindo um aviso */
}
} 