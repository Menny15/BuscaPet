package controller;

import dao.PetDAO;
import model.Pet;

import java.io.File;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;


@WebServlet("/GerenciarPet")
@MultipartConfig(
    fileSizeThreshold = 1024 * 1024,
    maxFileSize = 1024 * 1024 * 5,
    maxRequestSize = 1024 * 1024 * 10
)

public class GerenciarPet extends HttpServlet {

    @Override
    protected void doGet(
            HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        response.setCharacterEncoding("UTF-8");

        String acao =
                request.getParameter("acao");
        
        System.out.println("NOME: " + request.getParameter("nome"));
        System.out.println("ESPECIE: " + request.getParameter("especie"));
        System.out.println("RACA: " + request.getParameter("raca"));
        System.out.println("GENERO: " + request.getParameter("genero"));
        System.out.println("CIDADE: " + request.getParameter("cidade"));
        System.out.println("TIPO: " + request.getParameter("tipo_anuncio"));
        System.out.println("TELEFONE: " + request.getParameter("telefone"));
        System.out.println("DESCRICAO: " + request.getParameter("descricao"));

        PetDAO dao =
                new PetDAO();

        try {

            // SE NÃO TIVER AÇÃO
            if (acao == null) {

                request.setAttribute(
                        "lista",
                        dao.getLista()
                );

                RequestDispatcher rd =
                        request.getRequestDispatcher(
                                "perdidos.jsp"
                        );

                rd.forward(
                        request,
                        response
                );

                return;
            }

            switch (acao) {

                case "listar":

                    request.setAttribute(
                            "lista",
                            dao.getLista()
                    );

                    RequestDispatcher rd1 =
                            request.getRequestDispatcher(
                                    "listarPets.jsp"
                            );

                    rd1.forward(
                            request,
                            response
                    );

                    break;

                case "perdidos":

                    request.setAttribute(
                            "lista",
                            dao.getLista()
                    );

                    RequestDispatcher rd3 =
                            request.getRequestDispatcher(
                                    "perdidos.jsp"
                            );

                    rd3.forward(
                            request,
                            response
                    );

                    break;

                case "excluir":

                    int idExcluir =
                            Integer.parseInt(
                                    request.getParameter("id")
                            );

                    dao.deletar(idExcluir);

                    response.sendRedirect(
                            "GerenciarPet?acao=perdidos"
                    );

                    break;

                case "alterar":

                    int idAlterar =
                            Integer.parseInt(
                                    request.getParameter("id")
                            );

                    Pet p =
                            dao.getCarregarPorId(idAlterar);

                    request.setAttribute(
                            "pet",
                            p
                    );

                    RequestDispatcher rd2 =
                            request.getRequestDispatcher(
                                    "cadastrarPet.jsp"
                            );

                    rd2.forward(
                            request,
                            response
                    );

                    break;
            }

        } catch (Exception e) {

            response.setContentType("text/html; charset=UTF-8");
            response.getWriter().println(
                    "Erro: " + e.getMessage()
            );
        }
    }

    @Override
    protected void doPost(
            HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        response.setCharacterEncoding("UTF-8");

        Pet p = new Pet();
        
        p.setNome(request.getParameter("nome"));
        p.setEspecie(request.getParameter("especie"));
        p.setRaca(request.getParameter("raca"));
        p.setGenero(request.getParameter("genero"));
        p.setCidade(request.getParameter("cidade"));
        p.setTipoAnuncio(request.getParameter("tipo_anuncio"));
        p.setTelefone(request.getParameter("telefone"));
        p.setDescricao(request.getParameter("descricao"));

        try {

            // FOTO
            Part arquivo =
                    request.getPart("foto");

            String nomeArquivo = "";

            if (arquivo != null &&
                arquivo.getSize() > 0) {

                nomeArquivo =
                        arquivo.getSubmittedFileName();
            }

            // CAMINHO DA PASTA
            String caminho =
                    getServletContext()
                    .getRealPath("/imagens");

            File pasta =
                    new File(caminho);

            // CRIA PASTA
            if (!pasta.exists()) {

                pasta.mkdirs();
            }

            // SALVA FOTO
            if (!nomeArquivo.equals("")) {

                arquivo.write(
                        caminho + File.separator + nomeArquivo
                );

                p.setFoto(nomeArquivo);
            }

            // ID
            String id =
                    request.getParameter("id");

            if (id != null &&
                !id.equals("")) {

                p.setId(
                        Integer.parseInt(id)
                );
            }
            PetDAO dao =
                    new PetDAO();

            // SALVAR NO BANCO
            dao.gravar(p);

            // REDIRECIONA PARA PERDIDOS
         response.sendRedirect("GerenciarPet?acao=perdidos");
         
        } catch (Exception e) {

            response.setContentType("text/html; charset=UTF-8");
            response.getWriter().println(
                    "Erro: " + e.getMessage()
            );
        }
    }
}
