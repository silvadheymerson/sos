/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controle;



/**
 *
 * @author SEE
 */
public class UsuarioImpl{
    private String nome;
    private String email;
    private String senha1;
    private String senha2;

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getSenha1() {
        return senha1;
    }

    public void setSenha1(String senha1) {
        this.senha1 = senha1;
    }

    public String getSenha2() {
        return senha2;
    }

    public void setSenha2(String senha2) {
        this.senha2 = senha2;
    }
    
}