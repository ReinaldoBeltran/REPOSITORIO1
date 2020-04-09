<%@page import="Default.*"%>
<%@page import="java.util.LinkedList"%>
<%@page import="java.util.Collections"%>
<!DOCTYPE html>
<html lang="en">

    <head>

        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>Social UFPS </title>

        <!-- Bootstrap core CSS -->
        <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

        <!-- Custom styles for this template -->
        <link href="css/blog-home.css" rel="stylesheet">

    </head>

    <body>

        <!-- Navigation -->
        <nav class="navbar navbar-expand-lg navbar-dark bg-danger fixed-top">
            <div class="container">

                <a class="navbar-brand" href="#">SOCIAL UFPS</a>

                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item active">
                            <a class="nav-link" href="inicio.jsp">Inicio
                                <span class="sr-only">(current)</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="index.html">SALIR
                                <span class="sr-only">(current)</span>
                            </a>
                        </li>

                        <li class="nav-item">
                            <a class="nav-link" href="contactar.html">Contactar</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>

        <!-- Page Content -->
        <div class="container">

            <div class="row">


                <!-- Sidebar Widgets Column -->
                <div class="col-md-4">

                    <!-- Search Widget -->
                    <div class="card my-4">
                        <h5 class="card-header">Perfil</h5>
                        <div class="card-body">

                            <div class="list-group">
                                <%
                                    String codigo = (String)session.getAttribute("codigo");
                                    int cod = Integer.parseInt(codigo);
                                    RedSocialDAO r = new RedSocialDAO();
                                    Usuario u = r.buscarUsuario(cod);
                                %>
                                <a href="#" class="list-group-item list-group-item-action list-group-item-secondary">Nombre: <%out.println(u.getNombre());%></a>
                                <a href="#" class="list-group-item list-group-item-action list-group-item-secondary">Codigo: <%out.println(codigo);%></a>
                                <a href="#" class="list-group-item list-group-item-action list-group-item-secondary">Correo: <%out.println(u.getCorreo());%></a>
                            </div>

                        </div>
                    </div>

                    <div class="card my-4">
                        <h5 class="card-header">Publicar</h5>
                        <div class="card-body">
                            You can put anything you want inside of these side widgets. They are easy to use, and feature the new Bootstrap 4 card containers!
                            <br>
                            <a href="post.jsp?codigo=<%=codigo%>" class="btn btn-success">Crear publibicacion</a>
                        </div>
                    </div>
                    <!-- Categories Widget -->
                    <div class="card my-4">
                        <h5 class="card-header">Categories</h5>
                        <div class="card-body">
                            <div class="row">
                                <div class="col-lg-6">
                                    <ul class="list-unstyled mb-0">
                                        <li>
                                            <a href="#">Web Design</a>
                                        </li>
                                        <li>
                                            <a href="#">HTML</a>
                                        </li>
                                        <li>
                                            <a href="#">Freebies</a>
                                        </li>
                                    </ul>
                                </div>
                                <div class="col-lg-6">
                                    <ul class="list-unstyled mb-0">
                                        <li>
                                            <a href="#">JavaScript</a>
                                        </li>
                                        <li>
                                            <a href="#">CSS</a>
                                        </li>
                                        <li>
                                            <a href="#">Tutorials</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Side Widget -->


                </div>

                <!-- Blog Entries Column -->
                <div class="col-md-8">

                    <h1 class="my-4">
                        <!-- <small>by UFPS</small> -->
                    </h1>

                    <!-- Blog Post -->

                    <%
                        LinkedList <Publicacion> p = new LinkedList();
                        p = r.publicaciones();
                        Collections.reverse(p);
                        try {
                        for (Publicacion pub : p){
Integer code = pub.getCodigo();
                            Usuario n = r.buscarUsuario(code);
%>

                    <div class="card mb-4">
                        <h5 class="card-header"><%out.println(n.getNombre());%></h5>
                        <img class="card-img-top" src="<%out.println(pub.getPic());%>" alt="Card image cap">
                        <div class="card-body">
                            <h2 class="card-title"><%out.println(pub.getTitulo());%></h2>
                            <p class="card-text"><%out.println(pub.getTexto());%></p>

                        </div>
                        <div class="card-footer text-muted">
                            Fecha de Publicacion: <%out.println(pub.getFecha());%>
                            <a href="#">Conocer más</a>
                        </div>
                    </div>
                    <%
                            }
                        } catch (Exception e)
                        {
                            out.println("error");
                        }
                    %>

                </div>



            </div>
            <!-- /.row -->

        </div>
        <!-- /.container -->

        <!-- Footer -->
        <footer class="py-5 bg-dark">
            <div class="container">
                <p class="m-0 text-center text-white">Copyright &copy; Website 2020</p>
            </div>
            <!-- /.container -->
        </footer>

        <!-- Bootstrap core JavaScript -->
        <script src="vendor/jquery/jquery.min.js"></script>
        <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    </body>

</html>
