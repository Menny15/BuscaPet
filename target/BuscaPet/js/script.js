// ================= PETS PADRÃO =================
const petsFixos = [
    { nome: "Bruno", raca: "SRD", cidade: "São Paulo" },
    { nome: "Tobias", raca: "Siames", cidade: "Rio de Janeiro" },
    { nome: "Mel", raca: "Golden Retriever", cidade: "Belo Horizonte" },
    { nome: "Thor", raca: "SRD", cidade: "Curitiba" }
];


// ================= EXIBIR PETS =================
function exibirPets(lista) {

    const container = document.getElementById("listaPets");
    if (!container) return;

    container.innerHTML = "";

    lista.forEach((pet, index) => {

        const isAnuncio = index >= petsFixos.length;

        container.innerHTML += `
        <div class="card">

            ${pet.imagem ? `<img src="${pet.imagem}" alt="pet">` : ""}

            <h3>${pet.nome || "Sem nome"}</h3>
            <p>${pet.raca || "Não informado"}</p>
            <p>${pet.cidade}</p>

            ${
                pet.recompensa && pet.recompensa !== "Sem recompensa"
                ? `<p class="recompensa">💰 ${pet.recompensa}</p>`
                : ""
            }

            <button class="btn-details" onclick="toggleDetalhes(${index})">
                Ver detalhes
            </button>

            <div id="detalhes-${index}" class="box-extra" style="display:none;">

                <p><strong>Tipo:</strong> ${pet.tipo || "-"}</p>
                <p><strong>Telefone:</strong> ${pet.telefone || "-"}</p>
                <p><strong>Espécie:</strong> ${pet.especie || "-"}</p>

                <p><strong>Gênero:</strong> ${
                    pet.genero
                    ? pet.genero.charAt(0).toUpperCase() + pet.genero.slice(1)
                    : "-"
                }</p>

                <p><strong>Descrição:</strong> ${pet.descricao || "Não informada"}</p>

                ${
                    isAnuncio
                    ? `<button class="btn-delete" onclick="excluirAnuncio(${index})">
                        Excluir anúncio
                       </button>`
                    : ""
                }

            </div>

        </div>
        `;
    });
}


// ================= BUSCAR =================
function buscarPets() {

    const input = document.getElementById("searchInput");
    if (!input) return;

    const texto = input.value.toLowerCase().trim();

    const anuncios = JSON.parse(localStorage.getItem("anuncios")) || [];
    const listaFinal = [...petsFixos, ...anuncios];

    if (texto === "") {
        exibirPets(listaFinal);
        return;
    }

    const filtrados = listaFinal.filter(p =>
        (p.nome || "").toLowerCase().includes(texto) ||
        (p.raca || "").toLowerCase().includes(texto) ||
        (p.cidade || "").toLowerCase().includes(texto)
    );

    exibirPets(filtrados);
}


// ================= TOGGLE DETALHES =================
function toggleDetalhes(index) {

    const box = document.getElementById(`detalhes-${index}`);
    if (!box) return;

    box.style.display = box.style.display === "block" ? "none" : "block";
}


// ================= EXCLUIR =================
function excluirAnuncio(index) {

    if (!confirm("Deseja excluir este anúncio?")) return;

    let anuncios = JSON.parse(localStorage.getItem("anuncios")) || [];

    // remove apenas anúncios (ignora os fixos)
    anuncios.splice(index - petsFixos.length, 1);

    localStorage.setItem("anuncios", JSON.stringify(anuncios));

    location.reload();
}


// ================= EVENTOS =================
document.addEventListener("DOMContentLoaded", () => {

    const anuncios = JSON.parse(localStorage.getItem("anuncios")) || [];

    // 🔥 ordem correta: fixos + anúncios
    const listaFinal = [...petsFixos, ...anuncios];

    exibirPets(listaFinal);

    // 🔍 BUSCAR
    const btnBuscar = document.getElementById("btnBuscar");
    if (btnBuscar) {
        btnBuscar.addEventListener("click", buscarPets);
    }

    const input = document.getElementById("searchInput");
    if (input) {
        input.addEventListener("keyup", (e) => {
            if (e.key === "Enter") buscarPets();
        });
    }

    // 🔐 REDIRECIONAR PARA LOGIN
    const botao1 = document.getElementById("botao1");
    const botao2 = document.getElementById("botao2");

    if (botao1) {
        botao1.addEventListener("click", () => {
            window.location.href = "login.jsp";
        });
    }

    if (botao2) {
        botao2.addEventListener("click", () => {
            window.location.href = "login.jsp";
        });
    }

});