<%-- 
    Document   : cadastrar
    Created on : 24 de nov. de 2024, 22:53:46
    Author     : Carlos Eduardo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "Model.Roupa"%>
<%@page import = "Model.DAO.RoupaDAO" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    </head>
    <body>
        <h3>Cadastrar</h3>
        <%
        //entrada dos valores 
        String nomeroupa = request.getParameter("nomeroupa");
        double valor = Double.parseDouble(request.getParameter("valor"));
        String marca = request.getParameter("marca");
        //Instanciando um novo objeto e "setando" seus atributos
        Roupa r1 = new Roupa();
        r1.setNomeroupa(nomeroupa);
        r1.setValorroupa(valor);
        r1.setMarcaroupa(marca);
        //instanciando a classe DAO que irá atuar no BD
        RoupaDAO rdao = new RoupaDAO();
        
        if(rdao.insereRoupa(r1)){
            out.println("Inserção bem sucedida!");
        }
        else{
            out.println("Ocorreu um erro ao inserir no banco!");
        }
        %>
        <br><br>
        <button type="button" class="btn btn-primary" onclick="window.location.href='../index.html';">Voltar ao Início</button>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script> 
    </body>
</html>
