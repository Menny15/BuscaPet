<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="model.Usuario" %>

<h2>Lista de Usuários</h2>

<a href="cadastrarUsuario.jsp">
    Novo Usuário
</a>

<br><br>

<table border="1">

<tr>
    <th>ID</th>
    <th>Email</th>
    <th>Senha</th>
    <th>Código</th>
    <th>Verificado</th>
    <th>Ações</th>
</tr>

<%

List<Usuario> lista =
    (List<Usuario>)
    request.getAttribute("lista");

if (lista != null) {

    for (Usuario u : lista) {

%>

<tr>

<td><%= u.getId() %></td>

<td><%= u.getEmail() %></td>

<td><%= u.getSenha() %></td>

<td><%= u.getCodigo() %></td>

<td><%= u.isVerificado() %></td>

<td>

<a href="GerenciarUsuario?acao=alterar&id=<%= u.getId() %>">
Editar
</a>

|

<a href="GerenciarUsuario?acao=excluir&id=<%= u.getId() %>">
Excluir
</a>

</td>

</tr>

<%
    }
}
%>

</table>
