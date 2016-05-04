<%@page import="modelo.Jogador"%>
<%@page import="java.util.List"%>
<%@page import="dao.PerguntaDAO"%>
<%@page import="modelo.Pergunta"%>
<%@page import="modelo.Jogo"%>
<%
    Jogo jogo;
    //verificar se já tem jogo sendo jogado, senão inicia um novo jogo.
    if (session.getAttribute("jogo") != null) {
        jogo = (Jogo) session.getAttribute("jogo");
    } else {
        jogo = new Jogo();
    }

    if (request.getParameter("btnConfirmar") != null) {
        String opcaomarcada = request.getParameter("rdoPergunta");

        if (!jogo.confirmar(opcaomarcada)) {
            response.sendRedirect("fim.jsp");
        } else {
            if (jogo.getPontuacao() == 5000) {
                session.setAttribute("jogo", jogo);
                response.sendRedirect("fim.jsp");
                return;
            }
        }
    } else {
        if (request.getParameter("btnPular") != null) {
            jogo.pular();
        } else {
            if (request.getParameter("btnParar") != null) {
                response.sendRedirect("fim.jsp");
            } else {
                //iniciar o jogo
                jogo.iniciar();
            }

        }
    }

    session.setAttribute("jogo", jogo);
    Pergunta pergunta = jogo.getPerguntas().get(0);
%>
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="css/estilo.css"/>
    </head>



    <div class="pergunta">
        <h4 class="enunciado"><%=pergunta.getEnunciado()%></h4>
        <div class="opcoes">
            <form action="pergunta.jsp" method="post">
                <input type="radio" value="A" name="rdoPergunta" /><%=pergunta.getA()%><br/>
                <input type="radio" value="B" name="rdoPergunta" /><%=pergunta.getB()%><br/>
                <input type="radio" value="C" name="rdoPergunta" /><%=pergunta.getC()%><br/>
                <input type="radio" value="D" name="rdoPergunta" /><%=pergunta.getD()%><br/>
                <hr/>
                <input type="submit" value="confirmar" name="btnConfirmar"/>
                <input type="submit" value="pular" name="btnPular"/><%=jogo.getPulos()%>
                <input type="submit" value="parar" name="btnParar" />
            </form>
        </div>
    </div>


    <%=jogo.getPontuacao()%> Pontuação atual<br />
    <%=jogo.getErro()%> Errar<br/>
    <%=jogo.getPontuacao()%> Parar<br/>
    <%=jogo.getAcerto()%> Acertar<br/>





</html>
