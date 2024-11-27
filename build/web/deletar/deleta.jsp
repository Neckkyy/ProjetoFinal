<%-- 
    Document   : deleta
    Created on : 24 de nov. de 2024, 23:04:05
    Author     : Carlos Eduardo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "Model.Roupa"%>
<%@page import = "Model.DAO.RoupaDAO"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Excluir!</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    </head>
    <body>
        <h4>Excluir</h4>
        <%
            //recebendo o parâmetro que o usuário passou no form
            int id = Integer.parseInt(request.getParameter("id"));
            //instanciando e setando uma nova roupa
            Roupa r1 = new Roupa();
            r1.setId(id);
            //Classe DAO para interagir com o BD
            RoupaDAO rdao = new RoupaDAO();
            //verificando se o retorno é verdadeiro(E excluindo caso retorne true)
            if(rdao.deletaRoupa(r1)){
                out.println("Registro excluído!");
            }
            else{
                out.println("Erro em excluir registro");
            }
        %>
        <br><br>
        <button type="button" class="btn btn-primary" onclick="window.location.href='../index.html';">Voltar ao Início</button>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script> 
    </body>
</html>
