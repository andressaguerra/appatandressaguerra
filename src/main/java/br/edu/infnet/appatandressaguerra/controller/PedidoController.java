package br.edu.infnet.appatandressaguerra.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import br.edu.infnet.appatandressaguerra.model.negocio.Pedido;
import br.edu.infnet.appatandressaguerra.model.service.ClienteService;
import br.edu.infnet.appatandressaguerra.model.service.PedidoService;
import br.edu.infnet.appatandressaguerra.model.service.UsuarioService;

@Controller
public class PedidoController {
	
	@Autowired
	private PedidoService pedidoService;
	
	@Autowired
	private ClienteService clienteService;
	
	@Autowired
	private UsuarioService usuarioService;
	
	@GetMapping(value = "/pedido")
	public String showPedido(Model model) {
		
		model.addAttribute("lista", pedidoService.obterLista());
		model.addAttribute("clientes", clienteService.obterLista());
		model.addAttribute("usuarios", usuarioService.obterLista());
		
		return "pedido/detalhe";
	}
	
	@PostMapping(value = "/pedido/incluir")
	public String incluir(Pedido pedido) {
		
		pedidoService.incluir(pedido);
		
		return "redirect:/pedido";
	}
	
	@GetMapping(value = "/pedido/{id}/excluir")
	public String excluir(@PathVariable Integer id) {
		
		pedidoService.excluir(id);
		
		return "redirect:/pedido";
	}

}
