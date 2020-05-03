package br.com.fiap.filmes.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import br.com.fiap.filmes.model.FilmeModel;
import br.com.fiap.filmes.repository.FilmeRepository;

@Controller
@RequestMapping("/filmes")
public class FilmeController {
	
	private FilmeRepository filmeRepository = new FilmeRepository();

	@GetMapping
	public String index(Model model) {
		List<FilmeModel> filmes = filmeRepository.findAll();
		
		model.addAttribute("filmes", filmes);
		
		return "filmes";
	}
	
	@GetMapping("/{id}")
	public String show(@PathVariable("id") Long id, Model model) {
		FilmeModel filme = filmeRepository.findById(id);
		
		model.addAttribute("filme", filme);
		
		return "filme-detalhe";
	}
	
	@GetMapping("/form")
	public String form(@RequestParam(required = false) String page,
			@RequestParam(required = false) Long id,
			Model model) {
		
		if("filme-edit".equals(page)) {
			model.addAttribute("filme", filmeRepository.findById(id));
		}
		
		return page;
	}
	
	@PostMapping
	public String store(@Valid FilmeModel filme, BindingResult bindingResult, 
			RedirectAttributes redirectAttributes) {
		
		if(bindingResult.hasErrors()) {
			return "filme-add";
		}
		
		filmeRepository.save(filme);
		
		redirectAttributes.addFlashAttribute("mensagem", "Novo filme adicionado com sucesso!");
		
		return "redirect:/filmes";
	}
	
	@GetMapping("/update/{id}")
	public String navigateUpdate(@PathVariable("id") Long id, Model model) {
		model.addAttribute("filme", filmeRepository.findById(id));
		
		return "filme-edit";
	}
	
	@PutMapping
	public String update(@Valid FilmeModel filme, BindingResult bindingResult, RedirectAttributes redirectAttributes) {
		
		if(bindingResult.hasErrors()) {
			return "filme-edit";
		}
		
		filmeRepository.update(filme);
		
		redirectAttributes.addFlashAttribute("message", "Filme atualizado com sucesso!");
		
		return "redirect:/filmes";
	}
	
	@DeleteMapping("/{id}")
	public String destroy(@PathVariable("id") Long id, RedirectAttributes redirectAttributes) {
		
		filmeRepository.deleteById(id);
		
		redirectAttributes.addFlashAttribute("message", "Filme excluido com sucesso!");
		
		return "redirect:/filmes";
	}
	
}
