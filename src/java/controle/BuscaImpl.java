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
                                + "(servico ,cep, nome, email, telefone , prazo , descricao , rua , numero , bairro , cidade , estado) values(?,?,?,?,? , ? , ? ,? ,? ,? ,? ,? )";
			
			stmt = conn.prepareStatement(sql);
			stmt.setString(1, busca.getServico());
                        stmt.setString(2, busca.getCep());
			stmt.setString(3, busca.getNome());
                        stmt.setString(4, busca.getEmail());
                        stmt.setString(5, busca.getTelefone());
                        stmt.setString(6, busca.getPrazo());
                        stmt.setString(7, busca.getDescricao());
                        stmt.setString(8, busca.getRua());
                        stmt.setString(9, busca.getNumero());
                        stmt.setString(10, busca.getBairro());
                        stmt.setString(11, busca.getCidade());
                        stmt.setString(12, busca.getEstado());
                        
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
			String sql = "select o.id, o.nome, o.email, o.telefone , o.prazo , t.nome , o.descricao , o.data , o.estado , o.cidade , o.bairro from ofertas o ,tipos_servicos t where t.id = o.servico order by o.id  ";
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
                                busca.setDescricao(notNull(rs.getString(7)));
                                busca.setData(notNull(rs.getString(8)));
                                busca.setEstado(notNull(rs.getString(9)));
                                busca.setCidade(notNull(rs.getString(10)));
                                busca.setBairro(notNull(rs.getString(11)));
                                
                                
				
				list.add(busca);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public Busca findById(int id) {
		String sql = "select id, nome, email, telefone , prazo , servico , descricao from ofertas where id = ?";
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
                    busca.setDescricao(notNull(rs.getString(6)));
                    
                    
                    
                    
                    
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
