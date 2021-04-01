package br.edu.infnet.appatandressaguerra.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import br.edu.infnet.appatandressaguerra.model.service.UsuarioService;

@Controller
public class AcessoController {
	
	@Autowired
	UsuarioService usuarioService;
	
	@GetMapping(value = "/")
	public String init() {
		return "login";
	}
	
	@GetMapping(value = "/home")
	public String home(Model model) {
		return "index";
	}

}
