package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import factory.ConnectionFactory;
import to.ClienteTO;

public class VendedorDAO {

	public ArrayList<ClienteTO> listarClientes() {
		ClienteTO to;
		ArrayList<ClienteTO> lista = new ArrayList<>();
		String sqlSelect = "SELECT id, nome, fone, endereco, nasc FROM cliente";
		// usando o try with resources do Java 7, que fecha o que abriu
		try (Connection conn = ConnectionFactory.obtemConexao();
				PreparedStatement stm = conn.prepareStatement(sqlSelect);) {
			try (ResultSet rs = stm.executeQuery();) {
				while (rs.next()) {
					to = new ClienteTO();
					to.setId(rs.getInt("id"));
					to.setNome(rs.getString("nome"));
					to.setTelefone(rs.getString("fone"));
					to.setEndereco(rs.getString("endereco"));
					to.setNasc(rs.getString("nasc"));
					lista.add(to);
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		} catch (SQLException e1) {
			System.out.print(e1.getStackTrace());
		}
		return lista;
	}
	
	public ArrayList<ClienteTO> listarClientes(String chave) {
		ClienteTO to;
		ArrayList<ClienteTO> lista = new ArrayList<>();
		String sqlSelect = "SELECT id, nome, fone, endereco, nasc FROM cliente where upper(nome) like ?";
		// usando o try with resources do Java 7, que fecha o que abriu
		try (Connection conn = ConnectionFactory.obtemConexao();
				PreparedStatement stm = conn.prepareStatement(sqlSelect);) {
				stm.setString(1, "%" + chave.toUpperCase() + "%");
			try (ResultSet rs = stm.executeQuery();) {
				while(rs.next()) {
					to = new ClienteTO();
					to.setId(rs.getInt("id"));
					to.setNome(rs.getString("nome"));
					to.setTelefone(rs.getString("fone"));
					to.setEndereco(rs.getString("endereco"));
					to.setNasc(rs.getString("nasc"));
					lista.add(to);
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
