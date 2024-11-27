<%-- 
    Document   : consulta
    Created on : 24 de nov. de 2024, 23:04:00
    Author     : Carlos Eduardo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "Model.Roupa"%>
<%@page import = "Model.DAO.RoupaDAO"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Consulta</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    </head>
    <body>
        <h3>Consulta de roupa (por ID)</h3>
        <%
            //pegando o parâmetro passado pelo usuario
            int id = Integer.parseInt(request.getParameter("id"));
            //instanciando e setando uma nova roujpa
            Roupa r1 = new Roupa();
            r1.setId(id);
            //instanciando a classe dao para a interação com o BD
            RoupaDAO rdao = new RoupaDAO();
            //verificando se a roupa existe
            if(rdao.consultaRoupa(r1) != null){
                out.println("<br>Consulta realizada:");
                //trazendo as informações para o usuário
                out.println("<br>ID: " + r1.getId());
                out.println("<br>Nome da roupa: " + r1.getNomeroupa());
                out.println("<br>Marca da roupa: " + r1.getMarcaroupa());
            }
            else{
                out.println("Registro não foi encontrado!");
            }
        %>
        <br><br>
        <button type="button" class="btn btn-primary" onclick="window.location.href='../index.html';">Voltar ao Início</button>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script> 
    </body>
</html>
