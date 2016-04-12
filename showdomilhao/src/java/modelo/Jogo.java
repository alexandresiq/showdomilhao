
package modelo;

import java.util.List;

public class Jogo {
    private List<Pergunta> perguntas;
    private Integer pontuacao;
    private Integer pulos;
    
    public Jogo(){
        this.pulos = 3;
        this.pontuacao = 0;
    }

    public List<Pergunta> getPerguntas() {
        return perguntas;
    }

    public void setPerguntas(List<Pergunta> perguntas) {
        this.perguntas = perguntas;
    }

    public Integer getPontuacao() {
        return pontuacao;
    }

    public void setPontuacao(Integer pontuacao) {
        this.pontuacao = pontuacao;
    }

    public Integer getPulos() {
        return pulos;
    }

    public void setPulos(Integer pulos) {
        this.pulos = pulos;
    }
    
    
}
