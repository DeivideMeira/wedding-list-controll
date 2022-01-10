package service;

import java.util.ArrayList;

import model.Convidados;
import dao.ConvidadosDAO;

public class VendedorService {
	ConvidadosDAO dao;
	
	public VendedorService(){
		dao = new ConvidadosDAO();
	}
	public ArrayList<Convidados> listarConvidados(){
		return dao.listarConvidados();
	}
	public ArrayList<Convidados> listarConvidados(String chave){
		return dao.listarConvidados(chave);
	}

}
