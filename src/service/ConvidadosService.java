package service;

import model.Convidados;
import dao.ConvidadosDAO;


public class ConvidadosService {
	ConvidadosDAO dao = new ConvidadosDAO();
	
	public int criar(Convidados convidados) {
		return dao.criar(convidados);
	}
	
	public void atualizar(Convidados convidados){
		dao.atualizar(convidados);
	}
	
	public void excluir(int id){
		dao.excluir(id);
	}
	
	public Convidados carregar(int id){
		return dao.carregar(id);
	}

}
