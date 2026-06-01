package model;

public class Usuario {

    private int id;

    private String nome;

    private String email;

    private String senha;

    private String telefone;

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

    // ================= EMAIL =================

    public String getEmail() {

        return email;
    }

    public void setEmail(String email) {

        this.email = email;
    }

    // ================= SENHA =================

    public String getSenha() {

        return senha;
    }

    public void setSenha(String senha) {

        this.senha = senha;
    }

    // ================= TELEFONE =================

    public String getTelefone() {

        return telefone;
    }

    public void setTelefone(String telefone) {

        this.telefone = telefone;
    }
}