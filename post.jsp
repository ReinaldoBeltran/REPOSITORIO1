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
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
            <div class="container">

                <a class="navbar-brand" href="#">SOCIAL UFPS</a>

                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item active">
                            <a class="nav-link" href="inicio.html">Inicio
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


            <div class="card mb-4">
                <h5 class="card-header">Realizar publicación</h5>

                <div class="card-body">
                    <h2 class="card-title">La red social para los estudiantes de la UFPS</h2>

                    <%
                        String codigo = (String) request.getParameter("codigo");
                    %>
                    <form action="crearPublicacion.jsp?codigo=<%=codigo%>" method="POST">
                        
                    <p>
                        <label for="input">Titulo:    </label>
                        <input name="titulo" type="text" id="input">
                    </p>

                    <p>
                        <label for="input">Link imagen: </label>	
                        <input name="url" type="text" id="input" >
                    </p>

                    <p>
                        <label for="input">Texto:    </label>
                        <input name="texto" type="text" id="input" >
                    </p>   

                    <div>
                        <button type="submit" class="btn btn-primary">Publicar</button>
                    </div>
                    
                    </form>

                    <p class="card-text">Creada para estudiantes de la universidad francisco de Paula Santander con fines de que todos los estudiantes tengan un lugar donde expresarse y dar a conocer en el campo de la universidad.</p>

                </div>
                <div class="card-footer text-muted">
                    Creada Marzo 2020
                    <a href="#">Conocer mas</a>
                </div>
            </div>


            <div class="row">


                <!-- Sidebar Widgets Column -->
                <div class="col-md-4">

                    <!-- Search Widget -->


                    <!-- Blog Entries Column -->
                    <div class="col-md-8">

                        <h1 class="my-4">
                            <!-- <small>by UFPS</small> -->
                        </h1>

                        <!-- Blog Post -->


                    </div>





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
