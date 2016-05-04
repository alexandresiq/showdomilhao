<%@page import="java.util.List"%>
<%@page import="dao.RankingDAO"%>
<%@page import="java.util.Date"%>
<%@page import="modelo.Jogador"%>
<%@page import="modelo.Ranking"%>
<%@page import="modelo.Jogo"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    if(session.getAttribute("jogador")==null){
     response.sendRedirect("index.jsp");
   }
    if(session.getAttribute("jogador") == "anônimo"){
    response.sendRedirect("index.jsp");
    
    }
    Jogo jogo = (Jogo) session.getAttribute("jogo");

    Ranking ranking = new Ranking();

    Jogador jogador = (Jogador) session.getAttribute("jogador");
    Date d = new Date();

    ranking.setPontos(jogo.getPontuacao());
    ranking.setJogador(jogador);
    ranking.setData(d);

    RankingDAO dao = new RankingDAO();

    dao.incluir(ranking);

    List<Ranking> lista;
    lista = dao.listartop();

    dao.fechaEmf();
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
          <link rel="stylesheet" href="css/estilo.css"/>
    </head>
    <body>
        <h1>ACABOU!!!!!</h1>
        <a href="jogo.jsp">Jogar novamente</a>
        <hr />
        <h4>TOP 10</h4>
        <%
            for (Ranking item : lista) {
        %>
        <ol>
            <li><%=item.getPontos()%> - <%=item.getJogador()%></li>
        </ol>
        <%
            }
        %>
        
    </body>
</html>
