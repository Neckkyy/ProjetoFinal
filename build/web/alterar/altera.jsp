<%-- 
    Document   : altera
    Created on : 24 de nov. de 2024, 23:03:54
    Author     : Carlos Eduardo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import ="Model.Roupa"%>
<%@page import ="Model.DAO.RoupaDAO"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alterar roupas</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    </head>
    <body>
        <h1>Alterar informações!</h1>
        <%
            //pegando todas as informações passadas pelo usuário no form
            int id = Integer.parseInt(request.getParameter("id"));
            String nomeroupa = request.getParameter("nomeroupa");
            double valor = Double.parseDouble(request.getParameter("valor"));
            String marca = request.getParameter("marca");
            
            //instanciando e setando um novo obj roupa
            Roupa r1 = new Roupa();
            r1.setId(id);
            r1.setNomeroupa(nomeroupa);
            r1.setValorroupa(valor);
            r1.setMarcaroupa(marca);
            //instanciando a classe DAO para a alteração no BD
            RoupaDAO rdao = new RoupaDAO();
            if(rdao.alteraRoupa(r1)){
                out.println("Informações alteradas!");
            }
            else{
                out.println("Erro, não foi possível alterar o registro!");
            }
        %>
        <br><br>
        <button type="button" class="btn btn-primary" onclick="window.location.href='../index.html';">Voltar ao Início</button>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script> 
    </body>
</html>
