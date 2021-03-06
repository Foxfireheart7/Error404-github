package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionFactory {
private static final ThreadLocal<Connection> conn = new ThreadLocal<>();
	
	static {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			throw new RuntimeException(e);
		}
	}

	public static Connection obterConexao() throws SQLException {
		if (conn.get() == null){
			conn.set(DriverManager.getConnection("jdbc:mysql://localhost:3306/Projeto?useSSL=false&useTimezone=true&serverTimezone=UTC", "root", "gameover8218"));
		}
		return conn.get();
	}
	
	public static void fecharConexao() throws SQLException {
		if(conn.get() != null){
			conn.get().close();
			conn.set(null);
		}
	}
}

