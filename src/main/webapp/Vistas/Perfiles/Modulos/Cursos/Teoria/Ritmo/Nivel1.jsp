<!doctype html>
<html lang="en">
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <!-- Bootstrap CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <title>DALY ART & MUSIC</title>
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
               
                background-color: transparent;
            }

            .TituloContenido{
                
                margin-left: 3%;
                margin-top: 3%;
                font-size: 400%;

                
            }
            .TituloContenido1{
                
                margin-left: 3%;
                margin-top: 3%;
                width: 25%;
                font-size: x-large
                
            }
            
            .FigurasTitulo {
                
                margin-left: 20%;
                margin-top: 3%;
                font-size: 600%;
                
            }
            
            .FigurasTexto {
                
                margin-left: 25%;
                margin-top: 3%;
                width: 50%;
                font-size: x-large
                
            }
            
            .FigurasImagen {
                
                width: 50%;
                height: 200%;
                margin-right: 25%;
            }
            
            .FigurasTexto1 {
                
                margin-left: 15%;
                margin-top: 70%;
                width: 70%;
                font-size: xx-large
                
                
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
                
                margin-left: 40%;
                
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

        <h1 class="Titulo">Ritmo Nivel 1</h1>
        
         <div>
                <div class="ContenedorBoton p-2 bd-highlight w-100"> <a href=""><button type="button" class="botonesNA btn btn-lg btn-sm btn-block">SIGUIENTE</button></a></div>
         </div>

        <div class="Contenido">
            <h1 class="TituloContenido">Ritmo Nivel 1</h1>
            <div class="row">
                
                
                
                <div class="TituloContenido1 col-4">
                    
                     <p>El pulso en musica es una unidad basica que se emplea para medir el tiempo.
                     Se trata de una sucesion constante de pulsaciones que se repiten dividiendo 
                     el tiempo en partes iguales. Cada una de las pulsaciones asi como la sucesion de
                     los mismos reciben el nombre de pulso.</p>
                    
                </div><!-- comment -->
                <div class="TituloContenido1 col-4">
                    
                     <p>El pulso en musica es una unidad basica que se emplea para medir el tiempo.
                     Se trata de una sucesion constante de pulsaciones que se repiten dividiendo 
                     el tiempo en partes iguales. Cada una de las pulsaciones asi como la sucesion de
                     los mismos reciben el nombre de pulso.</p>
                    
                </div>
              
                <div class="col-4">
                  
                    <section id="metronomo" class="text-center mt-5 mx-auto" style="max-width: 10rem">
                        <!-- Informacion -->
                        <h1 id="ppm"></h1>
                        <h2>PPM</h2>
                        <!-- Controles -->
                        <div>
                            <p class="d-flex justify-content-between gap-1">
                                <!-- Botones para variar los PPM (Pulsaciones por minutos) -->
                                <button id="boton-decrecer-5-ppm" class="btn btn-secondary flex-grow-1">-5</button>
                                <button id="boton-decrecer-1-ppm" class="btn btn-secondary flex-grow-1">-</button>
                                <button id="boton-crecer-1-ppm" class="btn btn-secondary flex-grow-1">+</button>
                                <button id="boton-crecer-5-ppm" class="btn btn-secondary flex-grow-1">+5</button>
                            </p>
                            <p>
                                <!-- Boton para iniciar o pausar -->
                                <button id="boton-reproducir" class="d-block btn btn-primary w-100">Empezar</button>
                            </p>
                        </div>
                        <!-- Reproductor (ser invisible) -->
                        <audio id="audio-metronomo">
                            <!-- Para conseguir la mayor compatibilidad, se usa tanto OGG como MP3 -->
                            <source src="https://programadorwebvalencia.com/videos/blog/2019/11/tick.ogg" type="audio/ogg">
                            <source src="https://programadorwebvalencia.com/videos/blog/2019/11/tick.mp3" type="audio/mpeg">
                        </audio>
                    </section>
                    
                </div>
                
            </div>
            
            <h1 class="FigurasTitulo">FIGURAS MUSICALES Y SILENCIOS</h1>
            
            <p class="FigurasTexto">El pulso en musica es una unidad basica que se emplea para medir el tiempo.
                Se trata de una sucesion constante de pulsaciones que se repiten dividiendo 
                el tiempo en partes iguales. Cada una de las pulsaciones asi como la sucesion de
                los mismos reciben el nombre de pulso.</p>
            
            <img src="../../../../../../IMG/RITMO1.jpeg" class="FigurasImagen rounded float-end" alt="...">
            
            <p class="FigurasTexto1">El pulso en musica es una unidad basica que se emplea para medir el tiempo.
                Se trata de una sucesion constante de pulsaciones que se repiten dividiendo 
                el tiempo en partes iguales. Cada una de las pulsaciones asi como la sucesion de
                los mismos reciben el nombre de pulso.</p>

           
            
           
            
            

            
            
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


        
        <script>

                        //===
            
             let reproduciendo = false;
             let PPM = 50;
             let intervalo = undefined;
             const textoReproduciendose = "Empezar";
             const textoParado = "Pausar";
             const tituloPPM = document.querySelector('#ppm');
             const botonDecrecer5PPM = document.querySelector('#boton-decrecer-5-ppm');
             const botonDecrecer1PPM = document.querySelector('#boton-decrecer-1-ppm');
             const botonCrecer1PPM = document.querySelector('#boton-crecer-1-ppm');
             const botonCrecer5PPM = document.querySelector('#boton-crecer-5-ppm');
             const botonReproducir = document.querySelector('#boton-reproducir');
             const audioMetronomo = document.querySelector('#audio-metronomo');

            
             function renderizarCambios(ppm, isPlay) {
                 // Texto PPM
                 tituloPPM.textContent = ppm;
                 // Texto boton reproducir
                 botonReproducir.textContent = reproduciendo ? textoParado : textoReproduciendose;

                 return true;
             }

         
             function reproducirOPausar(ppm, audio, isPlay, intervaloActual) {
                 let miIntervalo;
                 // Para intervalo
                 clearInterval(intervaloActual);
                 // Empieza intervalo nuevo
                 if (isPlay) {
                     miIntervalo = setInterval(function() {
                         // Reproduce audio
                         audio.play();
                     }, PPMToMiliseconds(ppm));
                 }
                 return miIntervalo;
             }

             
             function PPMToMiliseconds(ppm) {
                 return (60 / ppm) * 1000;
             }

            
             function decrecerPPM(actualPPM, cantidad=1) {
                 const resultado = actualPPM - cantidad;
                 return resultado < 0 ? 0 : resultado;
             }

             
             function crecerPPM(actualPPM, cantidad=1) {
                 return actualPPM + cantidad;
             }

             
             function eventoReproducir(event) {
                 // Inicia o pausa
                 reproduciendo = !reproduciendo;
                 // Reproduce
                 intervalo = reproducirOPausar(PPM, audioMetronomo, reproduciendo, intervalo);
                 renderizarCambios(PPM, reproduciendo);
             }

            
             function eventoDecrecer5PPM(event) {
                 PPM = decrecerPPM(PPM, 5);
                 intervalo = reproducirOPausar(PPM, audioMetronomo, reproduciendo, intervalo);
                 renderizarCambios(PPM, reproduciendo);
             }

             
             function eventoDecrecer1PPM(event) {
                 PPM = decrecerPPM(PPM);
                 intervalo = reproducirOPausar(PPM, audioMetronomo, reproduciendo, intervalo);
                 renderizarCambios(PPM, reproduciendo);
             }

            
             function eventoCrecer1PPM(event) {
                 PPM = crecerPPM(PPM);
                 intervalo = reproducirOPausar(PPM, audioMetronomo, reproduciendo, intervalo);
                 renderizarCambios(PPM, reproduciendo);
             }

            
             function eventoCrecer5PPM(event) {
                 PPM = crecerPPM(PPM, 5);
                 intervalo = reproducirOPausar(PPM, audioMetronomo, reproduciendo, intervalo);
                 renderizarCambios(PPM, reproduciendo);
             }

            
             botonDecrecer5PPM.addEventListener('click', eventoDecrecer5PPM);
             botonDecrecer1PPM.addEventListener('click', eventoDecrecer1PPM);
             botonCrecer1PPM.addEventListener('click', eventoCrecer1PPM);
             botonCrecer5PPM.addEventListener('click', eventoCrecer5PPM);
             botonReproducir.addEventListener('click', eventoReproducir);

             
             renderizarCambios(PPM, reproduciendo); 
            
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