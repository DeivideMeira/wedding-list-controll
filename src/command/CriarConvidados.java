package command;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Convidados;
import service.ConvidadosService;

public class CriarConvidados implements Command {

	@Override
	public void executar(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		
		String pId = request.getParameter("id");
		String pNome = request.getParameter("nome");
		String pCpf = request.getParameter("cpf");
		String pParentesco = request.getParameter("parentesco");
		String pAcompanhante = request.getParameter("acompanhante");

		int id = -1;

		try {
			id = Integer.parseInt(pId);

		} catch (NumberFormatException e) {

		}

		Convidados convidados = new Convidados();
		convidados.setId(id);
		convidados.setNome(pNome);
		convidados.setCpf(pCpf);
		convidados.setParentesco(pParentesco);
		convidados.setAcompanhante(pAcompanhante);
		
		ConvidadosService cs = new ConvidadosService();
		RequestDispatcher view = null;
		HttpSession session = request.getSession();

		cs.criar(convidados);
		ArrayList<Convidados> lista = new ArrayList<>();
		lista.add(convidados);
		session.setAttribute("lista", lista);
		view = request.getRequestDispatcher("ListarConvidados.jsp");

		view.forward(request, response);

	}

	public int busca(Convidados convidados, ArrayList<Convidados> lista) {
		Convidados to;
		for (int i = 0; i < lista.size(); i++) {
			to = lista.get(i);
			if (to.getId() == convidados.getId()) {
				return i;
			}
		}
		return -1;
	}

}
