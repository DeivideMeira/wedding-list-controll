package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import model.Convidados;

public class ConvidadosDAO {
	public int criar(Convidados convidados) {
		String sqlInsert = "INSERT INTO convidados(nome, cpf, parentesco, acompanhante) VALUES (?, ?, ?, ?)";
		// usando o try with resources do Java 7, que fecha o que abriu
		try (Connection conn = ConnectionFactory.obtemConexao();
				PreparedStatement stm = conn.prepareStatement(sqlInsert);) {
			stm.setString(1, convidados.getNome());
			stm.setString(2, convidados.getCpf());
			stm.setString(3, convidados.getParentesco());
			stm.setString(4, convidados.getAcompanhante());

			stm.execute();
			String sqlQuery = "SELECT LAST_INSERT_ID()";
			try (PreparedStatement stm2 = conn.prepareStatement(sqlQuery);
					ResultSet rs = stm2.executeQuery();) {
				if (rs.next()) {
					convidados.setId(rs.getInt(1));
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return convidados.getId();
	}

	public void atualizar(Convidados convidados) {
		String sqlUpdate = "UPDATE convidados SET nome=?, cpf=?, parentesco=?, acompanhante=? WHERE id=?";
		// usando o try with resources do Java 7, que fecha o que abriu
		try (Connection conn = ConnectionFactory.obtemConexao();
				PreparedStatement stm = conn.prepareStatement(sqlUpdate);) {
			stm.setString(1, convidados.getNome());
			stm.setString(2, convidados.getCpf());
			stm.setString(3, convidados.getParentesco());
			stm.setString(4, convidados.getAcompanhante());
			stm.setInt(5, convidados.getId());
			stm.execute();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void excluir(int id) {
		String sqlDelete = "DELETE FROM convidados WHERE id = ?";
		// usando o try with resources do Java 7, que fecha o que abriu
		try (Connection conn = ConnectionFactory.obtemConexao();
				PreparedStatement stm = conn.prepareStatement(sqlDelete);) {
			stm.setInt(1, id);
			stm.execute();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}


	public Convidados carregar(int id) {
		Convidados convidados = new Convidados();
		convidados.setId(id);
		String sqlSelect = "SELECT nome, cpf, parentesco, acompanhante FROM convidados WHERE convidados.id = ?";
		// usando o try with resources do Java 7, que fecha o que abriu
		try (Connection conn = ConnectionFactory.obtemConexao();
				PreparedStatement stm = conn.prepareStatement(sqlSelect);) {
			stm.setInt(1, convidados.getId());
			try (ResultSet rs = stm.executeQuery();) {
				if (rs.next()) {
					convidados.setNome(rs.getString("nome"));
					convidados.setCpf(rs.getString("cpf"));
					convidados.setParentesco(rs.getString("parentesco"));
					convidados.setAcompanhante(rs.getString("acompanhante"));

				} else {
					convidados.setId(-1);
					convidados.setNome(null);
					convidados.setCpf(null);
					convidados.setParentesco(null);
					convidados.setAcompanhante(null);

				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		} catch (SQLException e1) {
			System.out.print(e1.getStackTrace());
		}
		return convidados;
	}

	public ArrayList<Convidados> listarConvidados() {
		Convidados convidados;
		ArrayList<Convidados> lista = new ArrayList<>();
		String sqlSelect = "SELECT id, nome, cpf, parentesco, acompanhante FROM convidados";
		// usando o try with resources do Java 7, que fecha o que abriu
		try (Connection conn = ConnectionFactory.obtemConexao();
				PreparedStatement stm = conn.prepareStatement(sqlSelect);) {
			try (ResultSet rs = stm.executeQuery();) {
				while (rs.next()) {
					convidados = new Convidados();
					convidados.setId(rs.getInt("id"));
					convidados.setNome(rs.getString("nome"));
					convidados.setCpf(rs.getString("cpf"));
					convidados.setParentesco(rs.getString("parentesco"));
					convidados.setAcompanhante(rs.getString("acompanhante"));

					lista.add(convidados);
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		} catch (SQLException e1) {
			System.out.print(e1.getStackTrace());
		}
		return lista;
	}

	public ArrayList<Convidados> listarConvidados(String chave) {
		Convidados convidados;
		ArrayList<Convidados> lista = new ArrayList<>();
		String sqlSelect = "SELECT id, nome, cpf, parentesco, acompanhante FROM convidados where upper(nome) like ?";
		// usando o try with resources do Java 7, que fecha o que abriu
		try (Connection conn = ConnectionFactory.obtemConexao();
				PreparedStatement stm = conn.prepareStatement(sqlSelect);) {
			stm.setString(1, "%" + chave.toUpperCase() + "%");
			try (ResultSet rs = stm.executeQuery();) {
				while (rs.next()) {
					convidados = new Convidados();
					convidados.setId(rs.getInt("id"));
					convidados.setNome(rs.getString("nome"));
					convidados.setCpf(rs.getString("cpf"));
					convidados.setParentesco(rs.getString("parentesco"));
					convidados.setAcompanhante(rs.getString("acompanhante"));

					lista.add(convidados);
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		} catch (SQLException e1) {
			System.out.print(e1.getStackTrace());
		}
		return lista;
	}

}
