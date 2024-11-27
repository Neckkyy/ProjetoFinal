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
    </head>
    <body>
        <h1>Consulta de roupa (por ID)</h1>
        <%
            int id = Integer.parseInt(request.getParameter("id"));
            
            Roupa r1 = new Roupa();
            r1.setId(id);
            
            RoupaDAO rdao = new RoupaDAO();
            
            if(rdao.consultaRoupa(r1) != null){
                out.println("<br>Consulta realizada:");
                out.println("<br>ID: " + r1.getId());
                out.println("<br>Nome da roupa: " + r1.getNomeroupa());
                out.println("<br>Marca da roupa: " + r1.getMarcaroupa());
            }
            else{
                out.println("Registro não foi encontrado!");
            }
        %>
    </body>
</html>
