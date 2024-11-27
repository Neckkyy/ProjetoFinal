<%-- 
    Document   : index
    Created on : 26 de nov. de 2024, 17:02:53
    Author     : Carlos Eduardo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import ="Model.Roupa"%>
<%@page import ="Model.DAO.RoupaDAO"%>

<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Consulta Geral</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    </head>
    <body>
        <h3>Consulta Geral(Tabela)</h3>
        <%
            //instanciação da classe DAO e de uma lista de Roupas para exibir em tela
            RoupaDAO rdao = new RoupaDAO();
            List<Roupa> lista = new ArrayList<>();
            //lista recebendo o return do método consultaRoupaGeral
            lista = rdao.consultaRoupaGeral();
            
            int registro = 0;
            out.println("<br>Roupas:<br>");
        %>
        <table class="table table-striped" style="width: 100%"; border="1">
            <tr>
                <th>#</th>
                <th>Id.</th>
                <th>Nome</th>
                <th>Valor</th>
                <th>Marca</th
            </tr>
            
        <%   
            for( int i = 0; i <= lista.size()-1; i++){                
                //Minha tabela - DT/TR/...
        %> 
        <tr>
                <td><%= registro+1 %> </td>
                <td><%= lista.get(i).getId() %> </td>
                <td><%= lista.get(i).getNomeroupa()%> </td>
                <td><%= lista.get(i).getValorroupa()%></td>
                <td><%= lista.get(i).getMarcaroupa()%></td>
            </tr>  
            
        <%
                registro++;                           
            }
        %>
        </table>
        <%                                                     
            out.println("<b>Registros: </b>" + registro + "<br>");
        %>
        <button type="button" class="btn btn-primary" onclick="window.location.href='../index.html';">Voltar ao Início</button>
        
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script> 
    </body>
</html>
