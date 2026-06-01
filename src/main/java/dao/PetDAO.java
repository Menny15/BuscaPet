package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import model.Pet;
import util.ConexaoFactory;

public class PetDAO {

    // =========================
    // GRAVAR PET
    // =========================
    public boolean gravar(Pet p) throws Exception {

        Connection con =
                ConexaoFactory.conectar();

        String sql;

        // INSERT
        if (p.getId() == 0) {

        sql =
            "INSERT INTO pet "
            + "(nome, especie, raca, genero, cidade, tipo_anuncio, telefone, descricao, recompensa, foto) "
            + "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
            
        } else {

            // UPDATE
            sql =
                "UPDATE pet SET "
              + "nome=?, especie=?, raca=?, genero=?, cidade=?, "
              + "tipo_anuncio=?, telefone=?, descricao=?, "
              + "recompensa=?, foto=? "
              + "WHERE idPet=?";
        }

        PreparedStatement ps =
                con.prepareStatement(sql);

        // CAMPOS
        ps.setString(1, p.getNome());
        ps.setString(2, p.getEspecie());
        ps.setString(3, p.getRaca());
        ps.setString(4, p.getGenero());
        ps.setString(5, p.getCidade());

        // IMPORTANTE
        ps.setString(6, p.getTipoAnuncio());

        ps.setString(7, p.getTelefone());
        ps.setString(8, p.getDescricao());

        ps.setBoolean(9, p.isRecompensa());

        ps.setString(10, p.getFoto());

        // UPDATE
        if (p.getId() != 0) {

            ps.setInt(11, p.getId());
        }

        ps.executeUpdate();

        ps.close();

        ConexaoFactory.close(con);

        return true;
    }

    // =========================
    // LISTAR
    // =========================
    public List<Pet> getLista()
            throws Exception {

        List<Pet> lista =
                new ArrayList<>();

        Connection con =
                ConexaoFactory.conectar();

        String sql =
                "SELECT * FROM pet";

        PreparedStatement ps =
                con.prepareStatement(sql);

        ResultSet rs =
                ps.executeQuery();

        while (rs.next()) {

            Pet p = new Pet();

            p.setId(
                    rs.getInt("idPet")
            );

            p.setNome(
                    rs.getString("nome")
            );

            p.setEspecie(
                    rs.getString("especie")
            );

            p.setRaca(
                    rs.getString("raca")
            );

            p.setGenero(
                    rs.getString("genero")
            );

            p.setCidade(
                    rs.getString("cidade")
            );

            // IMPORTANTE
            p.setTipoAnuncio(
                    rs.getString("tipo_anuncio")
            );

            p.setTelefone(
                    rs.getString("telefone")
            );

            p.setDescricao(
                    rs.getString("descricao")
            );

            p.setRecompensa(
                    rs.getBoolean("recompensa")
            );

            p.setFoto(
                    rs.getString("foto")
            );

            lista.add(p);
        }

        rs.close();
        ps.close();

        ConexaoFactory.close(con);

        return lista;
    }

    // =========================
    // DELETAR
    // =========================
    public boolean deletar(int id)
            throws Exception {

        Connection con =
                ConexaoFactory.conectar();

        String sql =
                "DELETE FROM pet WHERE idPet=?";

        PreparedStatement ps =
                con.prepareStatement(sql);

        ps.setInt(1, id);

        ps.executeUpdate();

        ps.close();

        ConexaoFactory.close(con);

        return true;
    }

    // =========================
    // CARREGAR POR ID
    // =========================
    public Pet getCarregarPorId(int id)
            throws Exception {

        Connection con =
                ConexaoFactory.conectar();

        String sql =
                "SELECT * FROM pet WHERE idPet=?";

        PreparedStatement ps =
                con.prepareStatement(sql);

        ps.setInt(1, id);

        ResultSet rs =
                ps.executeQuery();

        Pet p = new Pet();

        if (rs.next()) {

            p.setId(
                    rs.getInt("idPet")
            );

            p.setNome(
                    rs.getString("nome")
            );

            p.setEspecie(
                    rs.getString("especie")
            );

            p.setRaca(
                    rs.getString("raca")
            );

            p.setGenero(
                    rs.getString("genero")
            );

            p.setCidade(
                    rs.getString("cidade")
            );

            // IMPORTANTE
            p.setTipoAnuncio(
                    rs.getString("tipo_anuncio")
            );

            p.setTelefone(
                    rs.getString("telefone")
            );

            p.setDescricao(
                    rs.getString("descricao")
            );

            p.setRecompensa(
                    rs.getBoolean("recompensa")
            );

            p.setFoto(
                    rs.getString("foto")
            );
        }

        rs.close();
        ps.close();

        ConexaoFactory.close(con);

        return p;
    }
}
