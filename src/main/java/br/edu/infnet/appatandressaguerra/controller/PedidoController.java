package br.edu.infnet.appatandressaguerra.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import br.edu.infnet.appatandressaguerra.model.negocio.Pedido;
import br.edu.infnet.appatandressaguerra.model.service.PedidoService;

@Controller
public class PedidoController {
	
	@Autowired
	private PedidoService pedidoService;
	
	@GetMapping(value = "/pedido")
	public String showPedido(Model model) {
		
		model.addAttribute("lista", pedidoService.obterLista());
		
		return "pedido/detalhe";
	}
	
	@PostMapping(value = "/pedido/incluir")
	public String incluir(Pedido pedido) {
		
		pedidoService.incluir(pedido);
		
		return "redirect:/pedido";
	}

}
