<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <!DOCTYPE html>
        <html lang="pt-br">

        <head>
            <meta charset="utf-8">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
            <meta name="viewport" content="width=device-width, initial-scale=1">
            <title>Alterar Convidado</title>

            <link href="css/bootstrap.min.css" rel="stylesheet">
            <link href="css/style.css" rel="stylesheet">
           <script src="js/jquery.min.js">
           </script>
            <script src="js/bootstrap.min.js"></script>
            <script type="text/javascript">
            
            </script>
                        <style>		
        	#body{
        	background-color: #F5F2EC;

        	}
        	
        	#main{
        	        	color: #4D4D4D;}
        	        	p{
        	        	color: #4D4D4D;
        	        	}
        	        	h3{
        	        	color: #4D4D4D;
        	        	}
        	        	h4{
        	        	color: #4D4D4D;}
        	</style>
            
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
                                    <input type="hidden" name="id" value="${convidados.id }" />
                                    <button type="submit" class="btn btn-primary" name="command" value="ExcluirConvidados">Sim</button>
                                    <button type="button" class="btn btn-default" data-dismiss="modal">N&atilde;o</button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /.modal -->
                <!-- Barra superior com os menus de navegação -->
				<c:import url="Menu.jsp"/>
                <!-- Container Principal -->
                <div id="main" class="container">
                    <h3 class="page-header">Queridx Convidadx ${convidados.nome}</h3>
                    <div class="row">
                        <div class="col-md-12">
                            <p><strong>Nome</strong>
                            </p>
                           <p>
                                ${convidados.nome}
                            </p>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <p><strong>CPF</strong>
                            </p>
                            <p>
                                ${convidados.cpf}
                            </p>
                        </div>
                        <div class="col-md-6">
                            <p><strong>Parentesco</strong>
                            </p>
                            <p>
                                ${convidados.parentesco}
                            </p>
                        </div>
                        <div class="col-md-6">
                            <p><strong>Acompanhante</strong>
                            </p>
                            <p>
                                ${convidados.acompanhante}
                            </p>
                        </div>
                    </div>
                    <hr />
                    <div id="actions" class="row">
                        <div class="col-md-12">
                            <a href="controller.do?command=EditarConvidados&id=${convidados.id}" class="btn btn-primary">Editar</a>
                            <a href="#" class="btn btn-danger" data-toggle="modal" data-target="#delete-modal">Excluir</a>
                            <a href="ListarConvidados.jsp" class="btn btn-default">Voltar</a>
                        </div>
                    </div>
                </div>

        </body>

        </html>