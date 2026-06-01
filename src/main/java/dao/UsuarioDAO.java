package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import model.Usuario;
import util.ConexaoFactory;

public class UsuarioDAO {

    // ================= CADASTRAR USUARIO =================

    public boolean cadastrar(Usuario u) throws Exception {

        Connection con =
                ConexaoFactory.conectar();

        String sql =
                "INSERT INTO usuario "
                + "(nome, email, senha, telefone, dataCadastro) "
                + "VALUES (?, ?, ?, ?, ?)";

        PreparedStatement ps =
                con.prepareStatement(sql);

        ps.setString(1, u.getNome());
        ps.setString(2, u.getEmail());
        ps.setString(3, u.getSenha());
        ps.setString(4, u.getTelefone());
        ps.setDate(5, java.sql.Date.valueOf(java.time.LocalDate.now()));

        ps.executeUpdate();

        ps.close();

        ConexaoFactory.close(con);

        return true;
    }

    // ================= LOGIN =================

    public Usuario login(
            String email,
            String senha) throws Exception {

        Connection con =
                ConexaoFactory.conectar();

        String sql =
                "SELECT * FROM usuario "
                + "WHERE email=? AND senha=?";

        PreparedStatement ps =
                con.prepareStatement(sql);

        ps.setString(1, email);
        ps.setString(2, senha);

        ResultSet rs =
                ps.executeQuery();

        Usuario u = null;

        if (rs.next()) {

            u = new Usuario();

            u.setId(
                    rs.getInt("idUsuario")
            );

            u.setNome(
                    rs.getString("nome")
            );

            u.setEmail(
                    rs.getString("email")
            );

            u.setSenha(
                    rs.getString("senha")
            );

            u.setTelefone(
                    rs.getString("telefone")
            );
        }

        rs.close();

        ps.close();

        ConexaoFactory.close(con);

        return u;
    }
}