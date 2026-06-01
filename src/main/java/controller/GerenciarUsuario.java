package controller;

import dao.UsuarioDAO;
import model.Usuario;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/GerenciarUsuario")

public class GerenciarUsuario extends HttpServlet {

    // ================= GET =================

    @Override
    protected void doGet(
            HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        response.sendRedirect(
                "login.jsp"
        );
    }

    // ================= POST =================

    @Override
    protected void doPost(
            HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html; charset=UTF-8");
        response.setCharacterEncoding("UTF-8");

        String acao =
                request.getParameter("acao");

        UsuarioDAO dao =
                new UsuarioDAO();

        try {

            // ================= CADASTRAR =================

            if (acao.equals("cadastrar")) {

                Usuario u =
                        new Usuario();

                u.setNome(
                        request.getParameter("nome")
                );

                u.setEmail(
                        request.getParameter("email")
                );

                u.setSenha(
                        request.getParameter("senha")
                );

                u.setTelefone(
                        request.getParameter("telefone")
                );

                dao.cadastrar(u);

                response.sendRedirect(
                        "login.jsp"
                );
            }

            // ================= LOGIN =================

            else if (acao.equals("login")) {

                String email =
                        request.getParameter("email");

                String senha =
                        request.getParameter("senha");

                Usuario u =
                        dao.login(email, senha);

                if (u != null) {

                    HttpSession sessao =
                            request.getSession();

                    sessao.setAttribute(
                            "usuarioLogado",
                            u
                    );

                    response.sendRedirect(
                            "index.jsp"
                    );

                } else {

                    response.getWriter().println(
                            "Email ou senha inválidos!"
                    );
                }
            }

        } catch (Exception e) {

            response.getWriter().println(
                    "Erro: " + e.getMessage()
            );
        }
    }
}
