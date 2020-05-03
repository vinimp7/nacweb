package br.com.fiap.filmes.repository;

import java.math.BigDecimal;
import java.math.MathContext;
import java.util.HashMap;
import java.util.List;
import java.util.ArrayList;
import java.util.Map;

import br.com.fiap.filmes.model.FilmeModel;

public class FilmeRepository {

	private static FilmeRepository instance;
	
	private Map<Long, FilmeModel> filmes;
	
	public static FilmeRepository getInstance() {
		if (instance == null) {
			instance = new FilmeRepository();
		}
		return instance;
	}
	
	public FilmeRepository() {
		filmes = new HashMap<Long, FilmeModel>();
		
		filmes.put(1L, new FilmeModel(1L, "Vingadores: Ultimato", "Joe Russo e Anthony Russo", 
				"Acao/Ficcao Cientifica", "Walt Disney Pictures", 12, 182, 2019, new BigDecimal("2798000000.00", MathContext.UNLIMITED)));
		
		filmes.put(2L, new FilmeModel(2L, "Invocacao do Mal 2", "James Wan", 
				"Terror/Horror", "Warner Bros", 18, 134, 2016, new BigDecimal("320382818.00", MathContext.UNLIMITED)));
		
		filmes.put(3L, new FilmeModel(3L, "Gente Grande", "Dennis Dugan", 
				"Comedia/Familia", "Columbia Pictures", 0, 115, 2010, new BigDecimal("271400000.00", MathContext.UNLIMITED)));
		
		filmes.put(4L, new FilmeModel(4L, "1917", "Sam Mendes", 
				"Drama/Historico/Guerra", "Universal Studios", 16, 119, 2019, new BigDecimal("249700000.00", MathContext.UNLIMITED)));
	}
	
	public List<FilmeModel> findAll() {
		return new ArrayList<FilmeModel>(filmes.values());
	}
	
	public FilmeModel findById(Long id) {
		return filmes.get(id);
	}
	
	public void save(FilmeModel filme) {
		Long id = (long) filmes.size() + 1L;
		filme.setId(id);
		filmes.put(id, filme);
	}
	
	public void update(FilmeModel filme) {
		filmes.put(filme.getId(), filme);
	}
	
	public void deleteById(Long id) {
		filmes.remove(id);
	}
}
