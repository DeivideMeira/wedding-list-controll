package tests;

import static org.junit.jupiter.api.Assertions.*;

import static org.junit.Assert.assertEquals;

import org.junit.Before;
import org.junit.FixMethodOrder;
import org.junit.jupiter.api.Test;
import org.junit.runners.MethodSorters;

import model.Convidados;
import service.ConvidadosService;


@FixMethodOrder(MethodSorters.NAME_ASCENDING)

class ConvidadosTest {
	Convidados convidados = new Convidados();
	Convidados copia = new Convidados();
	static int id = 0;
	
	@Before
	public void setUp() throws Exception{
		
		System.out.println("setup");
		convidados = new Convidados(id, "Manoel", "11122233345", "Colega", "Marissol");
		copia = new Convidados(id, "Manoel", "11122233345", "Colega", "Marissol");
		System.out.println(convidados);
		System.out.println(copia);
		System.out.println(id);
	}
	

	@Test
	public void test01Criar () {
		

		ConvidadosService cs = new ConvidadosService();
		System.out.println("Criar");
		System.out.println(convidados);
		cs.criar(convidados);

		id = convidados.getId();
		System.out.println(id);
		copia.setId(id);
		assertEquals("TESTE CRIAÇÃO", convidados, copia);
	}
}
