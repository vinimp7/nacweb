package br.com.fiap.filmes.model;

import java.math.BigDecimal;

import javax.validation.constraints.DecimalMin;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;

public class FilmeModel {
	
	private Long id;
	
	@NotEmpty(message = "Informe o titulo do filme.")
	private String titulo;
	
	@NotEmpty(message = "Informe o diretor do filme.")
	private String diretor;
	
	@NotEmpty(message = "Informe o genero do filme.")
	private String genero;
	
	@NotEmpty(message = "Informe a empresa distribuidora do filme.")
	private String distribuicao;
	
	@Size(min = 1, max = 18, message = "Informe a classificacao do filme (0 para classificacao Livre) ate 18 anos.")
	private int classificacao;
	
	@Min(value = 1985, message = "Nao e possivel informar um ano tao baixo. (Minimo 1985)")
	@Max(value = 2020, message = "Nao e possivel informar um ano tao alto. (Maximo 2020)")
	private int ano_lancamento;
	
	@Min(value = 1, message = "Informe a duracao do filme em minutos. Um filme nao pode ter menos de um (1) minuto de duracao.")
	private int duracao;
	
	@DecimalMin(value = "0.01", message = "A bilheteria nao pode conter 0 ou valor negativo.")
	private BigDecimal bilheteria;
	
	public FilmeModel(Long id, String titulo, String diretor, String genero, String distribuicao, int classificacao, int duracao, int ano_lancamento, BigDecimal bilheteria) {
		super();
		this.id = id;
		this.titulo = titulo;
		this.diretor = diretor;
		this.genero = genero;
		this.distribuicao = distribuicao;
		this.classificacao = classificacao;
		this.ano_lancamento = ano_lancamento;
		this.duracao = duracao;
		this.bilheteria = bilheteria;
	}
	
	public Long getId() {
		return id;
	}
	
	public void setId(Long id) {
		this.id = id;
	}

	public String getTitulo() {
		return titulo;
	}
	
	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}
	
	public String getDiretor() {
		return diretor;
	}
	
	public void setDiretor(String diretor) {
		this.diretor = diretor;
	}
	
	public String getGenero() {
		return genero;
	}
	
	public void setGenero(String genero) {
		this.genero = genero;
	}
	
	public int getDuracao() {
		return duracao;
	}
	
	public void setDuracao(int duracao) {
		this.duracao = duracao;
	}
	
	public String getDistribuicao() {
		return distribuicao;
	}
	
	public void setDistribuicao(String distribuicao) {
		this.distribuicao = distribuicao;
	}
	
	public int getClassificacao() {
		return classificacao;
	}
	
	public void setClassificacao(int classificacao) {
		this.classificacao = classificacao;
	}
	
	public int getAno_lancamento() {
		return ano_lancamento;
	}
	
	public void setAno_lancamento(int ano_lancamento) {
		this.ano_lancamento = ano_lancamento;
	}
	
	public BigDecimal getBilheteria() {
		return bilheteria;
	}
	
	public void setBilheteria(BigDecimal bilheteria) {
		this.bilheteria = bilheteria;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((id == null) ? 0 : id.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		FilmeModel other = (FilmeModel) obj;
		if (id == null) {
			if (other.id != null)
				return false;
		} else if (!id.equals(other.id))
			return false;
		return true;
	}
	

}
