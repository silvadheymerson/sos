package dao;


import java.util.List;

import modelo.Contatos;

public interface ContatosDao {
	
	public void salvar(Contatos contatos);
	public void atualizar(Contatos contatos);
	public void remover(Contatos contatos);
	public List<Contatos> getListAll();
	public Contatos findById(int id);
       
}
