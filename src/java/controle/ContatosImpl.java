package controle;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import dao.ContatosDao;
import dao.ConnectionFactory;
import java.util.logging.Level;
import java.util.logging.Logger;
import modelo.Contatos;

public class ContatosImpl implements ContatosDao {
	
	Connection conn = ConnectionFactory.getConnection();
	PreparedStatement stmt;
	ResultSet rs;

	@Override
	public void salvar(Contatos contatos) {
		try {
			String sql = "insert into contatos "
                                + "(email, texto) values(?,?";
			
			stmt = conn.prepareStatement(sql);
			
			stmt.setString(1, contatos.getEmail());
                        stmt.setString(2, contatos.getTexto());
                       
			
			stmt.execute();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public void atualizar(Contatos  contatos) {
		// TODO Auto-generated method stub
            String sql = "update contatos set email = ?, texto = ? "
                    + "where id = ?";
            try {
                stmt = conn.prepareStatement(sql);
                
                stmt.setString(1, contatos.getEmail());
                stmt.setString(2, contatos.getTexto());
                
                stmt.setInt(3, contatos.getId());
                
                stmt.executeUpdate();
                
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
	}

	@Override
	public void remover(Contatos contatos) {
		// TODO Auto-generated method stub
            String sql = "delete from contatos where id = ?";
            try {
                stmt = conn.prepareStatement(sql);
                stmt.setInt(1, contatos.getId());
                
                stmt.execute();
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
	}

	@Override
	public List<Contatos> getListAll() {
		List<Contatos> list = new ArrayList<Contatos>();
		try {
			String sql = "select email, texto from contatos";
			stmt = conn.prepareStatement(sql);
			rs = stmt.executeQuery();
			while(rs.next()){
				Contatos contatos = new Contatos();
				contatos.setEmail(rs.getInt(1));
				contatos.setTexto(notNull(rs.getString(2)));
                                contatos.setId(notNull(rs.getString(3)));
                                
				
				list.add(contatos);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public Contatos findById(int id) {
		String sql = "select email, texto, id from contatos where id = ?";
                Contatos contatos = new Contatos();
                try{
                    stmt = conn.prepareStatement(sql);
                    stmt.setInt(1, id);
                    rs = stmt.executeQuery();
                    rs.next();
                    contatos.setEmail(rs.getInt(1));
                    contatos.setTexto(notNull(rs.getString(2)));
                    contatos.setId(notNull(rs.getString(3)));
                   
                }catch (SQLException e) {
			e.printStackTrace();
		}
		return contatos;
	}
        
        private String notNull(String v){
            if(v == null)
                return "";
            return v;
        }

}
