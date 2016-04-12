<%@page import="modelo.Jogador"%>
<%@page import="java.util.List"%>
<%@page import="dao.PerguntaDAO"%>
<%@page import="modelo.Pergunta"%>
<%@page import="modelo.Jogo"%>
<%
    /*  Quando o JOGO COMEÇA
        - INICIALIZA O MEU JOGO
        - BUSCAR A LISTA DE PERGUNTAS
        - GUARDAR O MEU JOGO NA session
        - EXIBIR A PRIMEIRA PERGUNTA NA TELA
    */
    Jogador jogador = (Jogador)session.getAttribute("spiderman");
    Jogo jogo = new Jogo();
    
    PerguntaDAO dao = new PerguntaDAO();
    List<Pergunta> lista = dao.listar();
    Pergunta pergunta = lista.get(0);
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
          <link rel="stylesheet" href="css/estilo.css"/>
    </head>
    <body>
        
        
        <div class="pergunta">
            <h4 class="enunciado"><%=pergunta.getEnunciado()%></h4>
            <div class="opcoes">
               <form action="fim.jsp" method="post">
                    <input type="radio" value="A" name="rdoPergunta" /><%=pergunta.getA()%><br/>
                    <input type="radio" value="B" name="rdoPergunta" /><%=pergunta.getB()%><br/>
                    <input type="radio" value="C" name="rdoPergunta" /><%=pergunta.getC()%><br/>
                    <input type="radio" value="D" name="rdoPergunta" /><%=pergunta.getD()%><br/>
                    <hr/>
                    <input type="submit" value="confirmar" />
                     <input type="submit" value="pular" />(3)
                      <input type="submit" value="parar" />
                </form>
            </div>
        </div>
        <div class="painelUsuario">
            <%=jogador.getLogin()%><br />
            500 errar<br/>
            1000 parar<br/>
            2000 acertar<br/>
            
            
        </div>
        
    </body>
</html>
