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
    <body  style="margin-left: 10%; margin-right: 10%; background-image: url(../../../../../../IMG/fondo1.jpeg); background-repeat: no-repeat; background-size: cover ">

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

            }

            .Contenido {

                width: 100%;
                padding-bottom: 10%;
                background-color: transparent;
                padding-left: 20%;
                padding-right:20%;
            }
            
            .botonesNA {

                background-color:#83141C;
                font-weight:bold;
                border: 3px solid black;
                color:white;
                margin-left: 39%;
                width: 20%;
               
            }
            
            .ContenedorBoton {
                
                margin-left: 50%;
                
            }


        </style>

        <header>

            <div class="d-flex justify-content-around bd-highlight mb-3 w-100" style="background-color: #83141C;" >
                <div class="p-2 bd-highlight" ><img style="" src="../../../../../../IMG/logomarcadeagua.png" class="rounded float-end w-50 h-100" alt="..."></div>
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

        <h1 class="Titulo">Armonia Nivel 1</h1>
        
        <div class="Notificacion text-end" style="margin-right: 8%;">

            <a class="fcc-btn "style="color: #0E582D;" href="PERFIL.HTML">USUARIO(NOMBRE)</a> 

            <img src="../../../../../../IMG/NOTIFICACION2.jpg" class="img-campana "  id="img-notificacion" alt="">

            <div>
                <div class="ContenedorBoton p-2 bd-highlight w-100"> <a href=""><button type="button" class="botonesNA btn btn-lg btn-sm btn-block">SIGUIENTE</button></a></div>
                <div class="ContenedorBoton p-2 bd-highlight w-100"> <a href=""><button type="button" class="botonesNA btn btn-lg btn-sm btn-block ">ANTERIOR</button></a></div>
            </div>
        </div>

        <div class="Contenido">

            <h1>ACORDE</h1>
            
            <p>En musica y teoria musical, un acorde consiste en un conjunto de tres 
                o mas notas diferentes, que consituyen una unidad armonica. En determinados 
                contextos, un acorde tambien puede ser percibido como tal aunque no suenen todas 
                sus notas.

                <br><!-- comment -->
                <br> 
                <br>
                Un acorde esta formado por su primera (Tonica), su tercera y su quinta. La octava 
                es la misma nota que la primera, pero suena mas aguda. La diferencia entre un acorde 
                mayor y un acorde menor reside en su tercera. Por ejemplo en un acorde de sol mayor 
                su tercera mayor es SI.
                
                <br><!-- comment -->
                <br> 
                <br>

                De esta forma partiendo desde DO(C), la tercera mayor seria MI(E) y la quita justa 
                SOL(G) como podemos observar en el grafico a continuacion.</p>
            
            <img src="../../../../../../IMG/ARMONIA1.jpeg" class="rounded float-start " alt="..." style=" width: 72%; margin-left: 17%;">
            
            <h1>TRIADA</h1>
            
            <p>En armonia moderna se denomina triada a tres notas puestas armonicamente las 
                cuales forman un acorde tonal.

                <br><!-- comment -->
                <br> 
                <br>
                Tipos de acordes triada
                Acorde mayor o triada mayor. Se llama asi al que tiene una tercera mayor y una quinta justa.
                Acorde menor o triada menor. Con la tercera menor y la quinta justa.
                Acorde aumentado o triada aumentada. Se forman con una tercera mayor y una quinta aumentada.
                Acordes disminuidos o triadas disminuidas.</p>
            
            <img src="../../../../../../IMG/ARMONIA2.jpeg" class="rounded float-start " alt="..." style=" width: 72%; margin-left: 17%;">
            <img src="../../../../../../IMG/ARMONIA3.jpeg" class="rounded float-start " alt="..." style=" width: 72%; margin-left: 17%;">

        </div>


        <div class="d-flex justify-content-between bd-highlight mb-3 mt-5" style="background-color: black;">
            <div class="p-2 bd-highlight">

                <img src="../../../../../../IMG/logomarcadeagua.png" class="rounded float-end w-50 h-100" alt="...">

            </div>
            <div class="p-2 bd-highlight" style="color: black;">
                <!--footer-->
                <footer class="py-3 my-4">
                    <ul class="nav justify-content-center border-bottom pb-3 mb-3" >
                        <li class="nav-item"><a href="#" class="nav-link px-2 text-muted">Menu Principal</a></li>
                        <li class="nav-item"><a href="#" class="nav-link px-2 text-muted">Contacto</a></li>


                    </ul>
                    <p class="text-center text-muted">© 2022 Dalyart&music.com</p>
                </footer>

            </div>
            <div class="p-2 bd-highlight"></div>
        </div>


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