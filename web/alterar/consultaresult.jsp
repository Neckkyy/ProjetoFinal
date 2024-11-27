<%-- 
    Document   : consultaresult
    Created on : 26 de nov. de 2024, 14:41:50
    Author     : Carlos Eduardo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import ="Model.Roupa"%>
<%@page import ="Model.DAO.RoupaDAO"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alterar Roupas</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    </head>
    <body>
        <h3>Alterar informações!</h3>
        <%
            //Pegando o parâmetro passado pelo usuário no formulário
            int id = Integer.parseInt(request.getParameter("id"));
            //instanciando um novo objeto de Roupa e setando seu id
            Roupa r1 = new Roupa();
            r1.setId(id);
            //instancia da classe DAO para manipulação no BD
            RoupaDAO rdao = new RoupaDAO();
            //Caso verdadeiro, ou seja, a lista não estiver nula, o formulário será preenchido na tela com todas as informações
            //Assim o usuário poderá altera-las, menos o ID
            if(rdao.consultaRoupa(r1) != null){
            %>
                <form method="post" action="altera.jsp">
                <div class="mb-3">
                  <label for="alteraid" class="form-label">Id da Roupa:</label>
                  <input type="text" class="form-control" id="IdRpAlt" name="id" value="<%= r1.getId()%>" readonly="true">
                </div>
                <div class="mb-3">
                  <label for="alteranome" class="form-label">Nome da Roupa:</label>
                  <input type="text" class="form-control" id="NmRpAlt" name="nomeroupa" value="<%= r1.getNomeroupa()%>" maxlength="30">
                </div>
                <div class="mb-3">
                  <label for="alteravalor" class="form-label">Valor da Roupa:</label>
                  <input type="text" class="form-control" id="ValorRpAlt" name="valor" value="<%= r1.getValorroupa()%>" maxlength="30">
                </div>
                <div class="mb-3">
                  <label for="alteramarca" class="form-label">Marca da Roupa:</label>
                  <input type="text" class="form-control" id="MarcaRpAlt" name="marca" value="<%= r1.getMarcaroupa()%>" maxlength="30">
                </div>
                  <button type="submit" class="btn btn-primary">Salvar!</button>
                </form>
                <br>
            <%
            }else
            {
               out.println("Registro não encontrado!!!");
            }
            %>
            <br><br>
            <button type="button" class="btn btn-primary" onclick="window.location.href='../index.html';">Voltar ao Início</button>
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script> 
    </body>
</html>
