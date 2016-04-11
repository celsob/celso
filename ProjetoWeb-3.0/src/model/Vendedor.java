package model;

import java.util.ArrayList;

import dao.VendedorDAO;
import to.ClienteTO;

public class Vendedor {
	public ArrayList<ClienteTO> listarClientes() {
		ArrayList<ClienteTO> lista;
		VendedorDAO dao = new VendedorDAO();
		lista = dao.listarClientes();
		return lista;
	}

	public ArrayList<ClienteTO> listarClientes(String chave) {
		ArrayList<ClienteTO> lista;
		VendedorDAO dao = new VendedorDAO();
		lista = dao.listarClientes(chave);
		return lista;
	}

}
