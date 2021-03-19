package br.edu.infnet.appatandressaguerra.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AcessoController {
	
	@GetMapping(value = "/")
	public String init(Model model) {
		
		model.addAttribute("nome", "Andressa Guerra");
		model.addAttribute("email", "andressa.guerra@al.infnet.edu.br");
		model.addAttribute("git", "https://github.com/andressaguerra/appatandressaguerra");
		
		return "index";
	}

}
