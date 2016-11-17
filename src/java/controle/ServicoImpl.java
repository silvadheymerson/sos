package controle;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


import dao.ConnectionFactory;
import dao.ServicoDao;
import java.util.logging.Level;
import java.util.logging.Logger;
import modelo.Servico;
import modelo.Usuario;

public class ServicoImpl implements ServicoDao {
	
	Connection conn = ConnectionFactory.getConnection();
	PreparedStatement stmt;
	ResultSet rs;

	@Override
	public void salvar(Servico servico) {
		try {
			String sql = "insert into servicos "
                                + "(servico ,cep, nome, email, telefone) values(?,?,?,?,?)";
			
			stmt = conn.prepareStatement(sql);
			stmt.setString(1, servico.getServico());
                        stmt.setString(2, servico.getCep());
			stmt.setString(3, servico.getNome());
                        stmt.setString(4, servico.getEmail());
                        stmt.setString(5, servico.getTelefone());
                        
			stmt.execute();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public void atualizar(Servico servico) {
		// TODO Auto-generated method stub
            String sql = "update servicos set servico = ?, cep = ? , nome = ? , email = ? , telefone = ? "
                    + "where id = ?";
            try {
                stmt = conn.prepareStatement(sql);
                
                        stmt.setString(1, servico.getServico());
                        stmt.setString(2, servico.getCep());
			stmt.setString(3, servico.getNome());
                        stmt.setString(4, servico.getEmail());
                        stmt.setString(5, servico.getTelefone());
                        
                stmt.setInt(3, servico.getId());
                
                stmt.executeUpdate();
                
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
	}

	@Override
	public void remover(Servico servico) {
		// TODO Auto-generated method stub
            String sql = "delete from servicos where id = ?";
            try {
                stmt = conn.prepareStatement(sql);
                stmt.setInt(1, servico.getId());
                
                stmt.execute();
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
	}

	@Override
	public List<Servico> getListAll() {
		List<Servico> list = new ArrayList<Servico>();
		try {
			String sql = "select s.id, s.nome, s.email, s.telefone , t.nome from servicos s ,tipos_servicos t where t.id = s.servico  ";
			stmt = conn.prepareStatement(sql);
			rs = stmt.executeQuery();
			while(rs.next()){
				Servico servico = new Servico();
				servico.setId(rs.getInt(1));
                                servico.setNome(notNull(rs.getString(2)));
                                servico.setEmail(notNull(rs.getString(3)));
                                servico.setTelefone(notNull(rs.getString(4)));
                                servico.setServico(notNull(rs.getString(5)));
                                
				
				list.add(servico);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public Servico findById(int id) {
		String sql = "select id, nome, email, senha1 , senha2 from usuarios where id = ?";
                Servico servico = new Servico();
                try{
                    stmt = conn.prepareStatement(sql);
                    stmt.setInt(1, id);
                    rs = stmt.executeQuery();
                    rs.next();
                    servico.setId(rs.getInt(1));
                    servico.setServico(notNull(rs.getString(3)));
                    servico.setCep(notNull(rs.getString(3)));
                    servico.setNome(notNull(rs.getString(2)));
                    servico.setEmail(notNull(rs.getString(3)));
                    servico.setTelefone(notNull(rs.getString(3)));
                    
                }catch (SQLException e) {
			e.printStackTrace();
		}
		return servico;
	}
        
        private String notNull(String v){
            if(v == null)
                return "";
            return v;
        }

    
}
