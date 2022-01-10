package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionFactory {
	static {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			throw new RuntimeException(e);
		}
	}
	
	// Obtém conexão com o banco de dados
	public static Connection obtemConexao() throws SQLException {
		String servidor = "localhost";
		String porta = "3306";
		String database = "pwefinal";
		return DriverManager.getConnection("jdbc:mysql://"+servidor+":"+porta+"/"+database+""
                + "?useTimezone=true&serverTimezone=UTC", "root", "DeivideMeira19");

	}

}
