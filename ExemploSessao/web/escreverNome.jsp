<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
   String nome = session.getAttribute("nome").toString();
   
   String idade = session.getAttribute("idade").toString();
    
    
%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <p>Seu nome é: <%=nome%></p>
        <p>Você tem: <%=idade%> anos</p>
    </body>
</html>
