package br.edu.infnet.appatandressaguerra.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.bind.annotation.SessionAttributes;

import br.edu.infnet.appatandressaguerra.model.negocio.Usuario;
import br.edu.infnet.appatandressaguerra.model.service.UsuarioService;

@Controller
@SessionAttributes("user")
public class UsuarioController {
	
	@Autowired
	private UsuarioService usuarioService;
	
	@PostMapping(value = "/usuario/login")
	public String login(Model model, @RequestParam String email, @RequestParam String senha) {
		
		Usuario usuario = usuarioService.autenticacao(email, senha);
		
		if (usuario != null) {
			
			model.addAttribute("user", usuario);
			
			return "redirect:/home";
		}
		
		model.addAttribute("erro", "Verifique suas credenciais e tente novamente.");
		
		return "login";
	}
	
	@GetMapping(value = "/usuario")
	public String showUsuario(Model model) {
		
		model.addAttribute("voltar", "/");
		
		return "usuario/detalhe";
	}
	
	@GetMapping(value = "/usuario/novo")
	public String showUsuarioLogado(Model model) {
		
		model.addAttribute("voltar", "/usuario/conta");
		
		return "usuario/detalhe";
	}
	
	@GetMapping(value = "/usuario/conta")
	public String showConta(Model model) {
		
		model.addAttribute("lista", usuarioService.obterLista());
		
		return "usuario/conta";
	}
	
	@PostMapping(value = "/usuario/incluir")
	public String incluir(Usuario usuario) {
		
		usuarioService.incluir(usuario);
		
		return "usuario/confirmacao";
	}
	
	@GetMapping(value = "/usuario/{id}/excluir")
	public String excluir(Model model, @PathVariable Integer id) {
		
		try {
			usuarioService.excluir(id);
		} catch (Exception e) {
			
			model.addAttribute("erro", "<strong>Erro!</strong> Não é possível excluir um usuário que possui clientes.");
			
			return showConta(model);
		}
		
		return "redirect:/usuario/conta";
	}
}
