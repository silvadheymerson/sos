package dao;


import java.util.List;

import controle.Usuario;

public interface UsuarioDao {
	
	public void salvar(Usuario usuario);
	public void atualizar(Usuario usuario);
	public void remover(Usuario usuario);
	public List<Usuario> getListAll();
	public Usuario findById(int id);
        public List<Usuario> findByNome(String nome);
}
