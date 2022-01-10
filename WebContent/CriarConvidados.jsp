<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
            <title>Alterar Convidados</title>

    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
    
                        <style>		
        	#body{
        	background-color: #F5F2EC;
        	color: #4D4D4D;
        	}
        	
        	h3{
        	        	color: #4D4D4D;
        	}
        	</style>
</head>

<body id="body">
    <!-- Barra superior com os menus de navegação -->
	<c:import url="Menu.jsp"/>
    <!-- Container Principal -->
    <div id="main" class="container">
        <h3 class="page-header">Incluir Convidados</h3>
        <!-- Formulario para inclusao de clientes -->
        <form action="controller.do" method="post">
            <!-- area de campos do form -->
                        <div class="row">
                            <div class="form-group col-md-12">
                                <label for="nome">Nome</label>
                                <input type="text" class="form-control" name="nome" id="nome" required maxlength="100" placeholder="nome completo" value="${convidados.nome}">
                            </div>
                        </div>
                        <div class="row">
                            <div class="form-group col-md-6">
                                <label for="cpf">CPF</label>
                                <input type="text" class="form-control" name="cpf" id="cpf" required maxlength="11" pattern="\d{11}" placeholder="Digite o CPF do convidado" value="${convidados.cpf}">
                            </div>
                        </div>

                        <div class="row">
                            <div class="form-group col-md-6">
                                <label for="parentesco">Parentesco</label>
                                <input type="text" class="form-control" name="parentesco" id="parentesco" maxlength="20" placeholder="Digite o grau de Parentesco" value="${convidados.parentesco}">
</div>
                            </div>
                                                    <div class="row">
                            <div class="form-group col-md-6">
                                <label for="acompanhante">Acompanhante</label>
                                <input type="text" class="form-control" name="acompanhante" id="acompanhante" maxlength="100" placeholder="Digite o nome do acompanhante" value="${convidados.acompanhante}">
                            </div>
                        </div>
            <hr />
            <div id="actions" class="row">
                <div class="col-md-12">
                    <button type="submit" class="btn btn-primary" name="command" value="CriarConvidados">Salvar</button>
                    <a href="index.jsp" class="btn btn-default">Cancelar</a>
                </div>
            </div>
        </form>
    </div>
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</body>

</html>