package br.edu.infnet.appatandressaguerra.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import br.edu.infnet.appatandressaguerra.model.negocio.Pedido;
import br.edu.infnet.appatandressaguerra.model.negocio.Usuario;
import br.edu.infnet.appatandressaguerra.model.repository.IPedidoRepository;

@Service
public class PedidoService {
	
	@Autowired
	private IPedidoRepository pedidoRepository;
	
	public void incluir(Pedido pedido) {
		pedidoRepository.save(pedido);
	}
	
	public void excluir(Integer id) {
		pedidoRepository.deleteById(id);
	}
	
	public List<Pedido> obterLista() {
		return (List<Pedido>)pedidoRepository.findAll();
	}
	
	public List<Pedido> obterLista(Usuario usuario) {
		return (List<Pedido>)pedidoRepository.obterLista(usuario.getId(), Sort.by(Sort.Direction.ASC, "nome"));
	}

}
