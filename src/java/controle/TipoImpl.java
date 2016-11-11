package controle;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


import dao.ConnectionFactory;
import dao.TipoDao;
import modelo.Tipo;



public class TipoImpl implements TipoDao {
	
	Connection conn = ConnectionFactory.getConnection();
	PreparedStatement stmt;
	ResultSet rs;

	@Override
	public void salvar(Tipo tipo) {
		try {
			String sql = "insert into tipos_servicos "
                                + "(nome) values(?)";
			
			stmt = conn.prepareStatement(sql);
			stmt.setString(1, tipo.getNome());
                        
                        
			stmt.execute();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public void atualizar(Tipo tipo) {
		// TODO Auto-generated method stub
            String sql = "update tipos_servicos set nome = ? "
                    + "where id = ?";
            try {
                stmt = conn.prepareStatement(sql);
                
                        stmt.setString(1, tipo.getNome());
                        
                        
                stmt.setInt(3, tipo.getId());
                
                stmt.executeUpdate();
                
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
	}

	@Override
	public void remover(Tipo tipo) {
		// TODO Auto-generated method stub
            String sql = "delete from tipos_servicos where id = ?";
            try {
                stmt = conn.prepareStatement(sql);
                stmt.setInt(1, tipo.getId());
                
                stmt.execute();
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
	}

	@Override
	public List<Tipo> getListAll() {
		List<Tipo> list = new ArrayList<Tipo>();
		try {
			String sql = "select id, nome from tipos_servicos";
			stmt = conn.prepareStatement(sql);
			rs = stmt.executeQuery();
			while(rs.next()){
				Tipo tipo = new Tipo();
				tipo.setId(rs.getInt(1));
                                tipo.setNome(notNull(rs.getString(2)));
                                
                                
				
				list.add(tipo);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public Tipo findById(int id) {
		String sql = "select id, nome from usuarios where id = ?";
                Tipo tipo = new Tipo();
                try{
                    stmt = conn.prepareStatement(sql);
                    stmt.setInt(1, id);
                    rs = stmt.executeQuery();
                    rs.next();
                    tipo.setId(rs.getInt(1));
                    tipo.setNome(notNull(rs.getString(2)));
                    
                    
                }catch (SQLException e) {
			e.printStackTrace();
		}
		return tipo;
	}
        
        private String notNull(String v){
            if(v == null)
                return "";
            return v;
        }

    
}
