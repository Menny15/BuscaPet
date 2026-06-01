document.addEventListener("DOMContentLoaded", () => {

    const form = document.getElementById("formReset");

    form.addEventListener("submit", function(e){

        e.preventDefault();

        const email = document.getElementById("emailReset").value.trim();
        const novaSenha = document.getElementById("novaSenha").value.trim();
        const confirmarSenha = document.getElementById("confirmarSenha").value.trim();

        // ✅ SENHA COM NO MÍNIMO 8 CARACTERES
        if (novaSenha.length < 8) {
            alert("A senha precisa ter pelo menos 8 caracteres!");
            return;
        }

        // ✅ CONFIRMAR SENHA
        if (novaSenha !== confirmarSenha) {
            alert("As senhas não coincidem!");
            return;
        }

        // ✅ BUSCAR USUÁRIOS
        let usuarios = JSON.parse(localStorage.getItem("usuarios")) || [];

        // ✅ ENCONTRAR EMAIL
        const index = usuarios.findIndex(user => user.email === email);

        if (index === -1) {
            alert("Email não encontrado!");
            return;
        }

        // ✅ ALTERAR SENHA
        usuarios[index].senha = novaSenha;

        // ✅ SALVAR
        localStorage.setItem("usuarios", JSON.stringify(usuarios));

        alert("Senha alterada com sucesso!");

        // ✅ REDIRECIONAR
        window.location.href = "login.jsp";

    });

});