package dao;


import java.util.List;

import modelo.Tipo;

public interface TipoDao {
	
	public void salvar(Tipo tipo);
	public void atualizar(Tipo tipo);
	public void remover(Tipo tipo);
	public List<Tipo> getListAll();
	public Tipo findById(int id);
       
}
