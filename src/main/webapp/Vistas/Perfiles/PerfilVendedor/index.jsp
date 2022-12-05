<!doctype html>
<html lang="en">
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">

        <title>Hello, world!</title>
    </head>
    <body  style="margin-left: 10%; margin-right: 10%; background-image: url(../../../../../IMG/fondo1.jpeg); background-repeat: no-repeat; background-size: cover ">

        <style>
            .collapsible {
                background-color: #777;
                color: white;
                cursor: pointer;
                padding: 18px;
                width: 7%;
                border: none;
                text-align: left;
                outline: none;
                font-size: 15px;
            }

            .active, .collapsible:hover {
                background-color: #555;
            }

            .content {
                padding: 0 18px;
                display: none;
                overflow: hidden;
                background-color: #f1f1f1;
            }

            nav {

                margin-left: 40%

            }

            .Titulo {

                text-align: center;
                margin-top: 2%;
                color: white;
                background-color: black;
                width: 25%;
                margin-left: 37%;

            }

            .Contenido {

                width: 80%;
                margin-left: 10%;
                margin-top: 5%;


                padding: 5%;
            }


            .ContenedorBoton {

                margin-top: 5%;
                margin-left: 38%;

            }

            .botonesNA{


                background-color:#83141C;
                font-weight:bold;
                border: 3px solid black;
                color:white;

                width: 20%;


            }

            .tab {
                overflow: hidden;
                border: 1px solid #ccc;
                background-color: #f1f1f1;

            }

            /* Style the buttons that are used to open the tab content */
            .tab button {
                background-color: inherit;
                float: left;
                border: none;
                outline: none;
                cursor: pointer;
                padding: 14px 16px;
                transition: 0.3s;
            }

            /* Change background color of buttons on hover */
            .tab button:hover {
                background-color: #ddd;
            }

            /* Create an active/current tablink class */
            .tab button.active {
                background-color: #ccc;
            }

            /* Style the tab content */
            .tabcontent {
                display: none;
                padding: 6px 12px;

                border-top: none;
            }


            th {

                border: 1px solid black;
                width: 20%

            }

            td {

                border: 1px solid black;
                width: 20%

            }
        </style>

        <header>

            <div class="d-flex justify-content-around bd-highlight mb-3 w-100" style="background-color: #83141C;" >
                <div class="p-2 bd-highlight" ><img style="" src="../../../../../IMG/logomarcadeagua.png" class="rounded float-end w-50 h-100" alt="..."></div>
                <div class="p-2 pe-5 ps-5 bd-highlight w-100 fw-bold fst-italic" style="color: black;"><h1>DALY ART & MUSIC</h1></div>
                <div class="bd-highlight pe-5 ps-5 w-50" style="background-color: black; padding-left: 5%;  "> 


                    <a class="botonesHeader fcc-btn " href="index logeado.jsp" style="color: white;">Volver al menu principal</a>
                    <br>
                    <a class="botonesHeader fcc-btn " href="cursos.jsp" style="color: white;">Volver a cursos</a>
                    <br>
                    <a class="botonesHeader fcc-btn " href="contenido.jsp" style="color: white;">Volver al contenido</a>
                    <br>
                    <a class="botonesHeader fcc-btn " href="index.jsp" style="color: white;">Cerrar sesion</a>


                </div>
            </div>


        </header>

        <h1 class="Titulo">Listados</h1>

        <div class="Contenido" >


            <!-- Tab links -->
            <div class="tab">
                <button class="tablinks" onclick="InfoTab(event, 'Estudiantes')">Estudiantes</button>
                <button class="tablinks" onclick="InfoTab(event, 'Cliente')">Cliente</button>

            </div>

            <!-- Tab content -->
            <div id="Estudiantes" class="tabcontent">
                <h3>Listado de ventas</h3>

                <h3>esta opcion se encuentra bajo desarrollo</h3>

            </div>

            <div id="Cliente" class="tabcontent">

               
                        
                   
                 
                        <p>Detalles de compra</p>
                        <form action="action" >
                            <table style="width: 100%;">
                                <tr>
                                    <th>Header</th>
                                    <th>Header2</th>
                                    <th>Header2</th>
                                    <th>Header2</th>
                                </tr>
                                <tr>
                                    <td>Cell1</td>
                                    <td>Cell2</td>
                                    <td>Cell2</td>
                                    <td>Cell2</td>
                                </tr>
                                <tr>
                                    <td>Cell3</td>
                                    <td>Cell4</td>
                                    <td>Cell4</td>
                                    <td>Cell4</td>
                                </tr>
                            </table>
                            <input type="submit" value="Generar Venta">
                            <input type="submit" value="Cancelar">
                        </form>

                        <p>Datos de cliente</p>
                        <form style="position: absolute">

                            <p>No. de cliente<input type="text" name="nombrecompleto"></p>

                            <p>

                                Correo electronico<br>

                                <input type="text" name="nombrecompleto">

                            </p>

                            <input type="submit" value="Buscar">
                        </form>
                        <form style="position: relative; margin-left:80% ">
                 
                            <input type="text" name="Producto" placeholder="Codigo del producto"></p>
                            <input type="submit" value="Buscar">
                            <input type="text" name="NombreProducto">

                            <p>

                                <br>



                        </p>

                    </form>
                    
                    <form action="action" >
                            <table style="width: 100%;">
                                <tr>
                                    <th>Header</th>
                                    <th>Header2</th>
                                    <th>Header2</th>
                                    <th>Header2</th>
                                </tr>
                                <tr>
                                    <td>Cell1</td>
                                    <td>Cell2</td>
                                    <td>Cell2</td>
                                    <td>Cell2</td>
                                </tr>
                                <tr>
                                    <td>Cell3</td>
                                    <td>Cell4</td>
                                    <td>Cell4</td>
                                    <td>Cell4</td>
                                </tr>
                            </table>
                            <input type="submit" value="Generar Venta">
                            <input type="submit" value="Cancelar">
                        </form>


                </div>





            </div>


        </div>












    </div>

    <div class="ContenedorBoton p-2 bd-highlight w-100"> <a href=""><button type="button" class="botonesNA btn btn-lg btn-sm btn-block">SIGUIENTE</button></a></div>

    <div class="d-flex justify-content-between bd-highlight mb-3 mt-5" style="background-color: black;">
        <div class="p-2 bd-highlight">

            <img src="../../../../../IMG/logomarcadeagua.png" class="rounded float-end w-50 h-100" alt="...">

        </div>
        <div class="p-2 bd-highlight" style="color: black;">
            <!--footer-->
            <footer class="py-3 my-4">
                <ul class="nav justify-content-center border-bottom pb-3 mb-3" >
                    <li class="nav-item"><a href="#" class="nav-link px-2 text-muted">Menu Principal</a></li>
                    <li class="nav-item"><a href="#" class="nav-link px-2 text-muted">Contacto</a></li>


                </ul>
                <p class="text-center text-muted">ÃÂ© 2022 Dalyart&music.com</p>
            </footer>

        </div>
        <div class="p-2 bd-highlight"></div>
    </div>


    <script>

        function InfoTab(evt, TabInfo) {
            // Declare all variables
            var i, tabcontent, tablinks;

            // Get all elements with class="tabcontent" and hide them
            tabcontent = document.getElementsByClassName("tabcontent");
            for (i = 0; i < tabcontent.length; i++) {
                tabcontent[i].style.display = "none";
            }

            // Get all elements with class="tablinks" and remove the class "active"
            tablinks = document.getElementsByClassName("tablinks");
            for (i = 0; i < tablinks.length; i++) {
                tablinks[i].className = tablinks[i].className.replace(" active", "");
            }

            // Show the current tab, and add an "active" class to the button that opened the tab
            document.getElementById(TabInfo).style.display = "block";
            evt.currentTarget.className += " active";
        }




    </script>

    <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: jQuery and Bootstrap Bundle (includes Popper) -->
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>

    <!-- Option 2: Separate Popper and Bootstrap JS -->

    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js" integrity="sha384-+sLIOodYLS7CIrQpBjl+C7nPvqq+FbNUBDunl/OZv93DB7Ln/533i8e/mZXLi/P+" crossorigin="anonymous"></script>

</body>
</html>