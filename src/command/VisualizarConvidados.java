package command;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Convidados;
import service.ConvidadosService;

public class VisualizarConvidados implements Command {

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

		convidados = cs.carregar(convidados.getId());
		request.setAttribute("convidados", convidados);
		view = request.getRequestDispatcher("VisualizarConvidados.jsp");

		view.forward(request, response);

	}

}
