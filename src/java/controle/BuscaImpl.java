package controle;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


import dao.ConnectionFactory;
import dao.BuscaDao;
import java.util.logging.Level;
import java.util.logging.Logger;
import modelo.Busca;
import modelo.Usuario;

public class BuscaImpl implements BuscaDao {
	
	Connection conn = ConnectionFactory.getConnection();
	PreparedStatement stmt;
	ResultSet rs;

	@Override
	public void salvar(Busca busca) {
		try {
			String sql = "insert into ofertas "
                                + "(servico ,cep, nome, email, telefone , prazo , descricao) values(?,?,?,?,? , ? , ?)";
			
			stmt = conn.prepareStatement(sql);
			stmt.setString(1, busca.getServico());
                        stmt.setString(2, busca.getCep());
			stmt.setString(3, busca.getNome());
                        stmt.setString(4, busca.getEmail());
                        stmt.setString(5, busca.getTelefone());
                        stmt.setString(6, busca.getPrazo());
                        stmt.setString(7, busca.getDescricao());
                        
			stmt.execute();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public void atualizar(Busca busca) {
		// TODO Auto-generated method stub
            String sql = "update ofertas set servico = ?, cep = ? , nome = ? , email = ? , telefone = ? , prazo = ? , descricao ? "
                    + "where id = ?";
            try {
                stmt = conn.prepareStatement(sql);
                
                        stmt.setString(1, busca.getServico());
                        stmt.setString(2, busca.getCep());
			stmt.setString(3, busca.getNome());
                        stmt.setString(4, busca.getEmail());
                        stmt.setString(5, busca.getTelefone());
                        stmt.setString(6, busca.getPrazo());
                        stmt.setString(7, busca.getDescricao());
                        
                stmt.setInt(8, busca.getId());
                
                stmt.executeUpdate();
                
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
	}

	@Override
	public void remover(Busca busca) {
		// TODO Auto-generated method stub
            String sql = "delete from ofertas where id = ?";
            try {
                stmt = conn.prepareStatement(sql);
                stmt.setInt(1, busca.getId());
                
                stmt.execute();
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
	}

	@Override
	public List<Busca> getListAll() {
		List<Busca> list = new ArrayList<Busca>();
		try {
			String sql = "select o.id, o.nome, o.email, o.telefone , o.prazo , t.nome from ofertas o ,tipos_servicos t where t.id = o.servico  ";
			stmt = conn.prepareStatement(sql);
			rs = stmt.executeQuery();
			while(rs.next()){
				Busca busca = new Busca();
				busca.setId(rs.getInt(1));
                                busca.setNome(notNull(rs.getString(2)));
                                busca.setEmail(notNull(rs.getString(3)));
                                busca.setTelefone(notNull(rs.getString(4)));
                                busca.setPrazo(notNull(rs.getString(5)));
                                busca.setServico(notNull(rs.getString(6)));
                                
                                
				
				list.add(busca);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public Busca findById(int id) {
		String sql = "select id, nome, email, telefone , prazo , servico from ofertas where id = ?";
                Busca busca = new Busca();
                try{
                    stmt = conn.prepareStatement(sql);
                    stmt.setInt(1, id);
                    rs = stmt.executeQuery();
                    rs.next();
                    busca.setId(rs.getInt(1));
                    busca.setNome(notNull(rs.getString(2)));
                    busca.setEmail(notNull(rs.getString(3)));
                    busca.setTelefone(notNull(rs.getString(4)));
                    busca.setPrazo(notNull(rs.getString(5)));
                    busca.setServico(notNull(rs.getString(6)));
                    
                    
                    
                    
                    
                }catch (SQLException e) {
			e.printStackTrace();
		}
		return busca;
	}
        
        private String notNull(String v){
            if(v == null)
                return "";
            return v;
        }

    
}
