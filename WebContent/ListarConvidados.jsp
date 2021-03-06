<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <!DOCTYPE html>
        <html lang="pt-br">

        <head>
            <meta charset="utf-8">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
            <meta name="viewport" content="width=device-width, initial-scale=1">
                <style>		
    	#body{
    	background-color: #F5F2EC;
    	}
}
	</style>
            <title>Buscar Convidados</title>

            <link href="css/bootstrap.min.css" rel="stylesheet">
            <link href="css/style.css" rel="stylesheet">

        </head>

        <body id="body">
            <!-- Modal -->
            <div class="modal fade" id="delete-modal" tabindex="-1" role="dialog" aria-labelledby="modalLabel">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Fechar"><span aria-hidden="true">&times;</span>
                            </button>
                            <h4 class="modal-title" id="modalLabel">Excluir Convidado</h4>
                        </div>
                        <div class="modal-body">
                            Deseja realmente excluir este convidado?
                        </div>
                        <div class="modal-footer">
                            <form action="controller.do" method="post">
                                <input type="hidden" name="id" id="id_excluir" />
                                <button type="submit" class="btn btn-primary" name="command" value="ExcluirConvidados">Sim</button>
                                <button type="button" class="btn btn-default" data-dismiss="modal">N&atilde;o</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <!-- /.modal -->
            <!-- Barra superior com os menus de navega????o -->
			<c:import url="Menu.jsp"/>
            <!-- Container Principal -->
            <div id="main" class="container">
                <form action="controller.do" method="post">
                    <div id="top" class="row">
                        <div class="col-md-3">
                            <h2>Convidados</h2>
                        </div>

                        <div class="col-md-6">
                            <div class="input-group h2">
                                <input name="data[search]" class="form-control" id="search" type="text" placeholder="Pesquisar Convidados (deixe vazio para trazer todos)">
                                <span class="input-group-btn">
                <button class="btn btn-primary" type="submit" name="command" value="ListarConvidadosBuscar">
                    <span class="glyphicon glyphicon-search"></span>
                                </button>
                                </span>
                            </div>
                        </div>

                        <div class="col-md-3">
                            <a href="CriarConvidados.jsp" class="btn btn-primary pull-right h2">Novo Convidado</a>
                        </div>
                    </div>
                    <!-- /#top -->
                </form>
                <hr />
                <c:if test="${not empty lista}">
                <div id="list" class="row">

                    <div class="table-responsive col-md-12">
                        <table class="table table-striped" cellspacing="0" cellpadding="0">
                            <thead>
                                <tr>
                                    <th>C??digo</th>
                                    <th>Nome</th>
                                    <th>CPF</th>
                                    <th>Parentesco</th>
                                    <th>Acompanhante</th>
                                    
                                    <th class="actions1">Comparecer???</th>
                                    <th class="actions2">A????es</th>
                                </tr>
                            </thead>
                            <tbody>
          					<c:forEach var="convidados" items="${lista}">
                                       <tr>
                                            <td>
                                               ${convidados.id}
                                            </td>
                                            <td>
                                                ${convidados.nome}
                                            </td>
                                            <td>
                                                ${convidados.cpf}
                                            </td>
                                            <td>
                                                ${convidados.parentesco}
                                            </td>
                                            <td>
                                                ${convidados.acompanhante}
                                            </td>
                                            <td class="actions1">
                                                <button id="btn${convidados.id}%>" type="button" class="btn btn-success btn-xs"">Sim</button>
                                                <button id="btn${convidados.id}%>" type="button" class="btn btn-danger btn-xs" data-toggle="modal" data-target="#delete-modal" data-convidados="${convidados.id}">N??o</button>
                                                
                                            </td>
                                            
                                           <td class="actions2">                                         
                                           <a class="btn btn-info btn-xs" href="controller.do?command=VisualizarConvidados&id=${convidados.id}">Visualizar</a>
                                                <a class="btn btn-warning btn-xs" href="controller.do?command=EditarConvidados&id=${convidados.id}">Editar</a>
                                           </td>
                                        </tr>             
                            </c:forEach>

                            </tbody>
                        </table>

                    </div>
                </div>
                <!-- /#list -->

                <div id="bottom" class="row">
                    <div class="col-md-12">
                        <!-- pagina????o ainda n??o foi implementada -->
                        <ul class="pagination">
                            <li class="disabled"><a>&lt; Anterior</a>
                            </li>
                            <li class="disabled"><a>1</a>
                            </li>
                            <li><a href="#">2</a>
                            </li>
                            <li><a href="#">3</a>
                            </li>
                            <li class="next"><a href="#" rel="next">Pr??ximo &gt;</a>
                            </li>
                        </ul>
                        <!-- /.pagination -->
                    </div>
                </div>
                </c:if>
                <!-- /#bottom -->
            </div>
            <!-- /#main -->
            <script src="js/jquery.min.js"></script>
            <script src="js/bootstrap.min.js"></script>
            <script type="text/javascript">
                $("#delete-modal").on('show.bs.modal', function(event) {
                    var button = $(event.relatedTarget); //botao que disparou a modal
                    var recipient = button.data('convidados');
                    $("#id_excluir").val(recipient);
                });
            </script>
        </body>

        </html>