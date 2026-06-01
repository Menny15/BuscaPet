const form = document.getElementById("formCadastro");

const email = document.getElementById("email");
const senha = document.getElementById("senha");
const confirmar = document.getElementById("confirmar");

// Função Enter
[email, senha, confirmar].forEach(input => {

    input.addEventListener("keydown", (e) => {

        if (e.key === "Enter") {

            e.preventDefault();

            form.requestSubmit();
        }
    });

});

// Envio do formulário
form.addEventListener("submit", (e) => {

    e.preventDefault();

    const emailValor = email.value.trim();
    const senhaValor = senha.value.trim();
    const confirmarValor = confirmar.value.trim();

    // Verificar campos vazios
    if (
        emailValor === "" ||
        senhaValor === "" ||
        confirmarValor === ""
    ) {

        alert("Preencha todos os campos!");
        return;
    }

    // Verificar senha
    if (senhaValor !== confirmarValor) {

        alert("As senhas não coincidem!");
        return;
    }

    alert("Conta criada com sucesso!");

    window.location.href = "verificacao.jsp";

    alert("Conta criada com sucesso!");

    // Redirecionamento
    // window.location.href = "login.html";
});