<%-- 
    Document   : consultarmarca
    Created on : 26 de nov. de 2024, 17:28:07
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
        <title>Consultar Nome da Roupa</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    </head>
    <body>
        <h3>Consultar</h3>
        <%
            String marca = request.getParameter("marcaroupa");
            
            Roupa r1 = new Roupa();
            r1.setMarcaroupa(marca);
            
            RoupaDAO rdao = new RoupaDAO();
            List<Roupa> roupas = new ArrayList<>();
            //esse código funcionava, mas só retornava 1 valor
            /*if(rdao.consultaRoupaMarca(r1) != null){
                out.println("<br>Consulta realizada:");
                out.println("<br>ID: " + r1.getId());
                out.println("<br>Nome da roupa: " + r1.getNomeroupa());
                out.println("<br>Marca da roupa: " + r1.getMarcaroupa());
            }
            else{
                out.println("Registro não foi encontrado!");
            */
            //verificando se existe valores com o Id recebido
            if(rdao.consultaRoupaMarca(r1) == null){
                out.println("Registro não foi encontrado!");
            }
            else{
                //lista vai receber os valores do retorno do método
                roupas = rdao.consultaRoupaMarca(r1);
                //inteiro que fará a contagem das ocorrências
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
            for( int i = 0; i <= roupas.size()-1; i++){       
        %> 
            <tr>
                <td><%= registro+1 %> </td>
                <td><%= roupas.get(i).getId() %> </td>
                <td><%= roupas.get(i).getNomeroupa()%> </td>
                <td><%= roupas.get(i).getValorroupa()%></td>
                <td><%= roupas.get(i).getMarcaroupa()%></td>
            </tr>  
        <%
                registro++;                           
            }
        %>
        </table>
        <%                                                     
            out.println("<b>Registros: </b>" + registro + "<br>");}
        %>
        
        
        <br><br>
        <button type="button" class="btn btn-primary" onclick="window.location.href='../index.html';">Voltar ao Início</button>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script> 
    </body>
</html>
