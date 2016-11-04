package controle;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import dao.UsuarioDao;
import dao.ConnectionFactory;
import java.util.logging.Level;
import java.util.logging.Logger;
import modelo.Usuario;

public class UsuarioImpl implements UsuarioDao {
	
	Connection conn = ConnectionFactory.getConnection();
	PreparedStatement stmt;
	ResultSet rs;

	@Override
	public void salvar(Usuario usuario) {
		try {
			String sql = "insert into usuarios "
                                + "(nome, email, senha1 , senha2) values(?,?,?,?)";
			
			stmt = conn.prepareStatement(sql);
			
			stmt.setString(1, usuario.getNome());
                        stmt.setString(2, usuario.getEmail());
                        stmt.setString(3, usuario.getSenha1());
                        stmt.setString(4, usuario.getSenha2());
			
			stmt.execute();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public void atualizar(Usuario  usuario) {
		// TODO Auto-generated method stub
            String sql = "update usuarios set nome = ?, email = ? , senha1 = ? , senha2 = ? "
                    + "where id = ?";
            try {
                stmt = conn.prepareStatement(sql);
                
                stmt.setString(1, usuario.getNome());
                stmt.setString(2, usuario.getEmail());
                stmt.setString(3, usuario.getSenha1());
                stmt.setString(4, usuario.getSenha2());
                stmt.setInt(3, usuario.getId());
                
                stmt.executeUpdate();
                
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
	}

	@Override
	public void remover(Usuario usuario) {
		// TODO Auto-generated method stub
            String sql = "delete from usuarios where id = ?";
            try {
                stmt = conn.prepareStatement(sql);
                stmt.setInt(1, usuario.getId());
                
                stmt.execute();
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
	}

	@Override
	public List<Usuario> getListAll() {
		List<Usuario> list = new ArrayList<Usuario>();
		try {
			String sql = "select id, nome, telefone from usuarios";
			stmt = conn.prepareStatement(sql);
			rs = stmt.executeQuery();
			while(rs.next()){
				Usuario usuario = new Usuario();
				usuario.setId(rs.getInt(1));
				usuario.setNome(notNull(rs.getString(2)));
                                usuario.setEmail(notNull(rs.getString(3)));
                                usuario.setSenha1(notNull(rs.getString(4)));
                                usuario.setSenha2(notNull(rs.getString(5)));
				
				list.add(usuario);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public Usuario findById(int id) {
		String sql = "select id, nome, email, senha1 , senha2 from usuarios where id = ?";
                Usuario usuario = new Usuario();
                try{
                    stmt = conn.prepareStatement(sql);
                    stmt.setInt(1, id);
                    rs = stmt.executeQuery();
                    rs.next();
                    usuario.setId(rs.getInt(1));
                    usuario.setNome(notNull(rs.getString(2)));
                    usuario.setEmail(notNull(rs.getString(3)));
                    usuario.setSenha1(notNull(rs.getString(3)));
                    usuario.setSenha2(notNull(rs.getString(3)));
                }catch (SQLException e) {
			e.printStackTrace();
		}
		return usuario;
	}
        
        private String notNull(String v){
            if(v == null)
                return "";
            return v;
        }

}
