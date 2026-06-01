const inputs = document.querySelectorAll(".codigo");
const form = document.getElementById("formVerificacao");

inputs.forEach((input, index) => {

    // Digitar número
    input.addEventListener("input", () => {

        // Apenas números
        input.value = input.value.replace(/\D/g, "");

        // Vai para o próximo
        if (input.value !== "" && index < inputs.length - 1) {
            inputs[index + 1].focus();
        }
    });

    // Backspace e Enter
    input.addEventListener("keydown", (e) => {

        // Voltar campo
        if (e.key === "Backspace" && input.value === "" && index > 0) {
            inputs[index - 1].focus();
        }

        // Enter envia formulário
        if (e.key === "Enter") {
            e.preventDefault();
            form.requestSubmit();
        }
    });

});

// Verificação do formulário
form.addEventListener("submit", (e) => {

    e.preventDefault();

    let codigo = "";

    inputs.forEach(input => {
        codigo += input.value;
    });

    if (codigo.length < 6) {
        alert("Digite os 6 números do código!");
        return;
    }

    alert("Código verificado: " + codigo);

});