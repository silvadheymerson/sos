package dao;


import java.util.List;

import modelo.Busca;

public interface BuscaDao {
	
	public void salvar(Busca busca);
	public void atualizar(Busca busca);
	public void remover(Busca busca);
	public List<Busca> getListAll();
	public Busca findById(int id);
       
}
