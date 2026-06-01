document.addEventListener("DOMContentLoaded", () => {

    // =========================
    // 📞 TELEFONE (SÓ NÚMEROS)
    // =========================
    const telefoneInput =
        document.getElementById("telefone");

    if (telefoneInput) {

        telefoneInput.addEventListener("input", () => {

            let valor =
                telefoneInput.value.replace(/\D/g, "");

            if (valor.length > 11) {

                valor = valor.slice(0, 11);
            }

            telefoneInput.value = valor;
        });
    }


    // =========================
    // 📝 CONTADOR DESCRIÇÃO
    // =========================
    const textarea =
        document.getElementById("descricao");

    const contador =
        document.getElementById("contadorDescricao");

    if (textarea && contador) {

        contador.innerText = "0/150";

        textarea.addEventListener("input", () => {

            let total =
                textarea.value.length;

            contador.innerText =
                total + "/150";

            // COR
            if (total >= 150) {

                contador.style.color = "red";

            } else {

                contador.style.color = "#555";
            }
        });
    }


    // =========================
    // 📄 FORM CADASTRAR PET
    // =========================
    const formAnuncio =
        document.getElementById("formAnuncio");

    if (formAnuncio) {

        formAnuncio.addEventListener("submit", function(e){

            const especie =
                document.getElementById("especie").value;

            const genero =
                document.getElementById("genero").value;

            const cidade =
                document.getElementById("cidade").value.trim();

            const tipo =
                document.getElementById("tipo").value;

            const telefone =
                telefoneInput.value.trim();

            // CAMPOS OBRIGATÓRIOS
            if (
                !especie ||
                !genero ||
                !cidade ||
                !tipo ||
                !telefone
            ) {

                e.preventDefault();

                alert("Preencha todos os campos obrigatórios!");

                return;
            }

            // TELEFONE
            if (telefone.length !== 11) {

                e.preventDefault();

                alert("Digite um telefone válido com 11 números!");

                telefoneInput.focus();

                return;
            }

            // DESCRIÇÃO
            if (textarea.value.length > 150) {

                e.preventDefault();

                alert("A descrição deve ter no máximo 150 caracteres!");

                return;
            }
        });
    }


    // =========================
    // 📸 PREVIEW DA FOTO
    // =========================
    const imagem =
        document.getElementById("imagem");

    const preview =
        document.getElementById("preview");

    if (imagem && preview) {

        imagem.addEventListener("change", function() {

            const arquivo =
                this.files[0];

            if (arquivo) {

                preview.src =
                    URL.createObjectURL(arquivo);

                preview.style.display =
                    "block";
            }
        });
    }


    // =========================
    // 💰 RECOMPENSA
    // =========================
    const toggle =
        document.getElementById("toggleRecompensa");

    const valorBox =
        document.getElementById("valorBox");

    if (toggle && valorBox) {

        toggle.addEventListener("change", function() {

            if (this.checked) {

                valorBox.style.display =
                    "block";

            } else {

                valorBox.style.display =
                    "none";
            }
        });
    }

});