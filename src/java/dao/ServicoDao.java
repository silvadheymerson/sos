package dao;


import java.util.List;

import modelo.Servico;

public interface ServicoDao {
	
	public void salvar(Servico servico);
	public void atualizar(Servico servico);
	public void remover(Servico servico);
	public List<Servico> getListAll();
	public Servico findById(int id);
       
}
