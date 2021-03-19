package br.edu.infnet.appatandressaguerra.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import br.edu.infnet.appatandressaguerra.model.negocio.Cliente;
import br.edu.infnet.appatandressaguerra.model.service.ClienteService;

@Controller
public class ClienteController {
	
	@Autowired
	private ClienteService clienteService;
	
	@GetMapping(value = "/cliente")
	public String showCliente(Model model) {
		
		model.addAttribute("lista", clienteService.obterLista());
		
		return "cliente/detalhe";
	}
	
	@PostMapping(value = "/cliente/incluir")
	public String incluir(Cliente cliente) {
		
		clienteService.incluir(cliente);
		
		return "redirect:/cliente";
	}

}
