<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
    String nome = request.getParameter("txtNome");
    String idade = request.getParameter("txtIdade");
    session.setAttribute("nome", nome);
    session.setAttribute("idade", idade);
%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <a href="escreverNome.jsp">Ver o nome e a idade</a>
        
    </body>
</html>
