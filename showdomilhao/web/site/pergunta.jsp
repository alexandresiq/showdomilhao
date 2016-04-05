<%@page import="modelo.Pergunta"%>
<%@page import="modelo.Jogo"%>
<%
    /*  Quando o JOGO COMEÇA
        - INICIALIZA O MEU JOGO
        - BUSCAR A LISTA DE PERGUNTAS
        - GUARDAR O MEU JOGO NA session
        - EXIBIR A PRIMEIRA PERGUNTA NA TELA
    */
    
    Jogo jogo = new Jogo();
    
    Pergunta pergunta = jogo.getPerguntas().get(0);
    
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
            <h4 class="enunciado">Quem foi o primeiro apresentador do SBT?</h4>
            <div class="opcoes">
                <form action="fim.jsp" method="post">
                    <input type="radio" value="A" name="rdoPergunta" />
                    Silvio Santos<br/>
                    <input type="radio" value="B" name="rdoPergunta" />
                    Carlos Alberto de Nogrega<br/>
                    <input type="radio" value="C" name="rdoPergunta" />
                    Gugu<br/>
                    <input type="radio" value="D" name="rdoPergunta" />
                    Roberto Bolaños<br/>
                    <hr/>
                    <input type="submit" value="confirmar" />
                     <input type="submit" value="pular" />(3)
                      <input type="submit" value="parar" />
                </form>
            </div>
        </div>
        <div class="painelUsuario">
            Siedler<br />
            500 errar<br/>
            1000 parar<br/>
            2000 acertar<br/>
            
            
        </div>
        
    </body>
</html>
