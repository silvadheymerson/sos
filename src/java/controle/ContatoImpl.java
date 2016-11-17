package controle;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import dao.ContatoDao;
import dao.ConnectionFactory;
import java.util.logging.Level;
import java.util.logging.Logger;
import modelo.Contato;

public class ContatoImpl implements ContatoDao {
	
	Connection conn = ConnectionFactory.getConnection();
	PreparedStatement stmt;
	ResultSet rs;

	@Override
	public void salvar(Contato contato) {
		try {
			String sql = "insert into email "
                                + "(email, texto) values(?,?)";
			
			stmt = conn.prepareStatement(sql);
			
			stmt.setString(1, contato.getEmail());
                        stmt.setString(2, contato.getTexto());
                       
			
			stmt.execute();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public void atualizar(Contato  contato) {
		// TODO Auto-generated method stub
            String sql = "update email set resposta = ? "
                    + "where id = ?";
            try {
                stmt = conn.prepareStatement(sql);
                
                stmt.setString(1, contato.getResposta());
                
                stmt.setInt(2, contato.getId());
                
                stmt.executeUpdate();
                
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
	}

	@Override
	public void remover(Contato contato) {
		// TODO Auto-generated method stub
            String sql = "delete from email where id = ?";
            try {
                stmt = conn.prepareStatement(sql);
                stmt.setInt(1, contato.getId());
                
                stmt.execute();
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
	}

	@Override
	public List<Contato> getListAll() {
		List<Contato> list = new ArrayList<Contato>();
		try {
			String sql = "select id ,email, texto , resposta from email";
			stmt = conn.prepareStatement(sql);
			rs = stmt.executeQuery();
			while(rs.next()){
				Contato contato = new Contato();
                                contato.setId(rs.getInt(1));
				contato.setEmail(rs.getString(2));
				contato.setTexto(notNull(rs.getString(3)));
                                contato.setResposta(notNull(rs.getString(4)));
                                
                                
				
				list.add(contato);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public Contato findById(int id) {
		String sql = "select email, texto,resposta, id from email where id = ?";
                Contato contato = new Contato();
                try{
                    stmt = conn.prepareStatement(sql);
                    stmt.setInt(1, id);
                    rs = stmt.executeQuery();
                    rs.next();
                    contato.setEmail(rs.getString(1));
                    contato.setTexto(notNull(rs.getString(2)));
                    contato.setResposta(notNull(rs.getString(3)));

                    
                }catch (SQLException e) {
			e.printStackTrace();
		}
		return contato;
	}
        
        private String notNull(String v){
            if(v == null)
                return "";
            return v;
        }

}
