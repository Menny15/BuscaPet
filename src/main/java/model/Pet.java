package model;

public class Pet {

    private int id;

    private String nome;

    private String especie;

    private String raca;

    private String genero;

    private String cidade;

    private String telefone;

    private String tipoAnuncio;

    private String descricao;

    private boolean recompensa;

    private String foto;

    // ================= ID =================

    public int getId() {

        return id;
    }

    public void setId(int id) {

        this.id = id;
    }

    // ================= NOME =================

    public String getNome() {

        return nome;
    }

    public void setNome(String nome) {

        this.nome = nome;
    }

    // ================= ESPECIE =================

    public String getEspecie() {

        return especie;
    }

    public void setEspecie(String especie) {

        this.especie = especie;
    }

    // ================= RACA =================

    public String getRaca() {

        return raca;
    }

    public void setRaca(String raca) {

        this.raca = raca;
    }

    // ================= GENERO =================

    public String getGenero() {

        return genero;
    }

    public void setGenero(String genero) {

        this.genero = genero;
    }

    // ================= CIDADE =================

    public String getCidade() {

        return cidade;
    }

    public void setCidade(String cidade) {

        this.cidade = cidade;
    }

    // ================= TIPO ANUNCIO =================

    public String getTipoAnuncio() {

        return tipoAnuncio;
    }

    public void setTipoAnuncio(String tipoAnuncio) {

        this.tipoAnuncio = tipoAnuncio;
    }

    // ================= COMPATIBILIDADE =================
    // PARA FUNCIONAR COM O DAO ANTIGO

    public String getTipo_Anuncio() {

        return tipoAnuncio;
    }

    public void setTipo_Anuncio(String tipoAnuncio) {

        this.tipoAnuncio = tipoAnuncio;
    }

    // ================= TELEFONE =================

    public String getTelefone() {

        return telefone;
    }

    public void setTelefone(String telefone) {

        this.telefone = telefone;
    }

    // ================= DESCRICAO =================

    public String getDescricao() {

        return descricao;
    }

    public void setDescricao(String descricao) {

        this.descricao = descricao;
    }

    // ================= RECOMPENSA =================

    public boolean isRecompensa() {

        return recompensa;
    }

    public void setRecompensa(boolean recompensa) {

        this.recompensa = recompensa;
    }

    // ================= FOTO =================

    public String getFoto() {

        return foto;
    }

    public void setFoto(String foto) {

        this.foto = foto;
    }
}