// ================= PETS ENCONTRADOS =================
const petsEncontrados = [
    { nome: "Bolt", raca: "Labrador", cidade: "Gama", telefone: "61999991111", especie: "Cachorro", genero: "Macho", descricao: "Encontrado perto de uma praça.", tipo: "Encontrado", imagem: "imagens/Bolt.webp" },
    { nome: "Luna", raca: "Poodle", cidade: "Sobradinho", telefone: "61988882222", especie: "Cachorro", genero: "Fêmea", descricao: "Muito dócil e calma.", tipo: "Encontrado", imagem: "imagens/Luna.webp" },
    { nome: "Mingau", raca: "Persa", cidade: "Santa Maria", telefone: "61977773333", especie: "Gato", genero: "Macho", descricao: "Usava coleira azul.", tipo: "Encontrado", imagem: "imagens/Mingau.webp" },
    { nome: "Mel", raca: "SRD", cidade: "Planaltina", telefone: "61966664444", especie: "Cachorro", genero: "Fêmea", descricao: "Muito brincalhona.", tipo: "Encontrado", imagem: "imagens/Mel.webp" },
    { nome: "Fred", raca: "Egeu", cidade: "Samambaia", telefone: "61955555555", especie: "Cachorro", genero: "Macho", descricao: "Encontrado sozinho na rua.", tipo: "Encontrado", imagem: "imagens/Fred.webp" }
];

// ================= MOSTRAR PETS =================
function mostrarEncontrados() {
    const container = document.getElementById("listaEncontrados");
    if (!container) return;

    container.innerHTML = "";

    petsEncontrados.forEach((pet, index) => {
        const card = document.createElement("div");
        card.classList.add("card");

        card.innerHTML = `
            <img src="${pet.imagem || 'imagens/default.webp'}" alt="${pet.nome}">
            <div class="status-encontrado">PET ENCONTRADO</div>
            <h3>${pet.nome}</h3>
            <p>${pet.raca}</p>
            <p>${pet.cidade}</p>
            <button class="btn-details">Ver detalhes</button>
            <div class="detalhes-box">
                <p><strong>Tipo:</strong> ${pet.tipo}</p>
                <p><strong>Telefone:</strong> ${pet.telefone}</p>
                <p><strong>Espécie:</strong> ${pet.especie}</p>
                <p><strong>Gênero:</strong> ${pet.genero}</p>
                <p><strong>Descrição:</strong> ${pet.descricao}</p>
            </div>
        `;

        container.appendChild(card);

        // 🔹 Evento exclusivo para cada card
        const btn = card.querySelector(".btn-details");
        const detalhes = card.querySelector(".detalhes-box");

        btn.addEventListener("click", () => {
            // alterna apenas o card clicado
            const isOpen = detalhes.style.display === "block";
            // fecha todos os detalhes
            document.querySelectorAll(".detalhes-box").forEach(d => d.style.display = "none");
            // abre somente o clicado se estava fechado
            detalhes.style.display = isOpen ? "none" : "block";
        });
    });
}

// ================= INICIAR =================
document.addEventListener("DOMContentLoaded", mostrarEncontrados);