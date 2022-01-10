<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %><!DOCTYPE html>
<html lang="pt-br">

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Great+Vibes&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Cormorant+Garamond:wght@300&display=swap" rel="stylesheet">
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    
    <style>		
    	#body{
    	background-color: #F5F2EC;
    	}
    	
		#maintitle{
		font-family: 'Great Vibes', cursive;
		font-size:100px;
		color: #642B3C;
		margin-top: 15%;
		}
		
		#mainh5{
		font-family: 'Cormorant Garamond', serif;
		font-size:25px;
		color: #642B3C;
		text-align: center;
		}
		
		#mainbtn{
		width: 20%;
 		margin-left: 40%;
 		margin-right: 30%;
 		margin-top: 3%;
 		}
	}
}
		
	</style>
	
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Página Inicial</title>



</head>

<body id="body">
    <!-- Barra superior com os menus de navegaÃ§Ã£o -->
	<c:import url="Menu.jsp"/>
    <!-- Container Principal -->
    <div id="main" class="container">
        <h3 id="maintitle"class="page-header">William & Elizabeth</h3>
        <h5 id="mainh5">Aos nossos queridos convidados...</h5>
       
        <a id="mainbtn" type="submit" class="btn btn-primary" href="controller.do?command=ListarConvidadosReiniciar">Meus Convidados</a>

    </div>
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</body>

</html>