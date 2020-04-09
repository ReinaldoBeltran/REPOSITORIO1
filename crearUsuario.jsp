<%-- 
    Document   : crearUsuario
    Created on : 8/04/2020, 04:04:27 PM
    Author     : Johan
--%>

<%@page import="Default.Usuario"%>
<%@page import="Default.RedSocialDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%
            String nombre = (String) request.getParameter("nombre");
            String codigo = (String) request.getParameter("codigo");
            Integer cod = Integer.parseInt(codigo);
            String pass = (String) request.getParameter("pass");
            String email = (String) request.getParameter("email");
            
            Usuario u = new Usuario(cod,nombre,email,pass);
            RedSocialDAO r = new RedSocialDAO(u);
            
            r.registrarUsuario();
            
            response.sendRedirect("index.html?"+"UsuarioCreadoConExito");
        %>
    </head>
</html>
