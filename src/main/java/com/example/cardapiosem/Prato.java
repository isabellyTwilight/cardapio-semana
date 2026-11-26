package com.example.cardapiosem;

import java.time.LocalDate;

public class Prato {
    private String nome;
    private String tipo;
    private String categoria;
    private int porcoes;
    private LocalDate dataPlanejada;
    private String observacao;

    public Prato () {

    }

    public Prato (String nome, String tipo, String categoria, int porcoes, LocalDate dataPlanejada, String observacao) {
        this.nome = nome;
        this.tipo = tipo;
        this.categoria = categoria;
        this.porcoes = porcoes;
        this.dataPlanejada = dataPlanejada;
        this.observacao = observacao;
    }

    public String getNome() {
        return nome;
    }
    public void setNome(String nome) {
        this.nome = nome;
    }
    public String getTipo() {
        return tipo;
    }
    public void setTipo(String tipo) {
        this.tipo = tipo;
    }
    public String getCategotia() {
        return categoria;
    }
    public void setCategoria(String categoria) {
        this.categoria = categoria;
    }
    public int getPorcoes() {
        return porcoes;
    }
    public void setPorcoes(int porcoes){
        this.porcoes= porcoes;
    }
    public LocalDate getDataPlanejada() {
        return dataPlanejada;
    }
    public void setDataPlanejada (LocalDate dataPlanejada) {
        this.dataPlanejada = dataPlanejada;
    }
    public String getObservacao() {
        return observacao;
    }
    public void setObservacao(String observacao) {
        this.observacao = observacao;
    }

    public String getCategoria() {
        return categoria;
    }
}
