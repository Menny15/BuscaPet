const form =
    document.getElementById("formLogin");

form.addEventListener("submit", function(e) {

    e.preventDefault();

    let email =
        document.getElementById("emailLogin").value;

    let senha =
        document.getElementById("senhaLogin").value;

    if (
        email === "admin@gmail.com" &&
        senha === "123"
    ) {
        window.location.href =
            "index.jsp";

    } else {

        alert("Dados inválidos!");
    }
});
    