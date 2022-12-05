<!DOCTYPE html>
<html lang="es">
<head>
  <title>DALYART</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="CSS/Botones de colapso.css">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">

</head>
<body style="margin-left: 10%; margin-right: 10%">
    
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
        </style>

    <div class="bg-dark" style="text-align: center;border: 1px solid black; color: white;  ">
        <h1>DALYART & MUSIC</h1>
        <h4>Sistema de Informacion Formacion Musical</h4>
    </div>
    
    <div class="row" style="padding-bottom: 17%;background-image: url(IMG/fondojpg.jpg); background-repeat: no-repeat; background-size: 100%; margin-left: 1%;margin-right: 1%">
        <div class="container" style="margin-right: 80%">

            <div class="col-2" > 

                <img style="width: 150px; " src="IMG/logomarcadeagua.png" alt="alt"/>

            </div>
            <div class="col-5"></div> 
            <div class="col-5"></div> 


        </div>
        
        <div style="border: 1px solid black"></div>
        <div style="margin-left:70%;">
            <div class="row" style="font-size: larger">
                
                <div class="col-4"><a class="nav-link " href="ControladorPersona?accion=Contacto" style="color:white; ">Contacto</a></div> 
                <div class="col-4"> <a class="nav-link" href="ControladorPersona?accion=Registro"  style="color:white;">Registro</a></div> 
                <div class="col-4"><a class="nav-link" href="ControladorPersona?accion=Ingreso" style="color:white ;">Ingreso</a></div> 
                
            </div> 
        </div><!-- comment -->
      
        
        
   


        <button type="button" class="collapsible">Sobre Nosotros</button>
        <div class="content">
            <p>DALY, contribuye al mejoramiento del proceso de formacion integral de los estudiantes, puesto que crea ambientes agradables donde se les permite a nivel general desarrollar 
                sus dotes artisticos; brindando espacios con profesores de musica donde puedan fortalecer sus conocimientos; de igual forma un espacio donde los maestros se puedan desenvolver 
                de forma asertiva son sus estudiantes mediante su metodologia de estudios que deseen plantear referente al area de enfasis que desee..</p>
        </div>


        <button type="button" class="collapsible">Mision</button>
        <div class="content">
            <p> Somos una empresa que se dedica a gestionar la ensenanza de la musica; brindando un espacio digital donde, tanto estudiantes como profesores puedan interactuar. 
                Buscamos transmitir valores como la disciplina, la autoconstruccion, la responsabilidad, generar sentido de pertenencia hacia los proyectos propios, un espiritu 
                de mejora continua y capacidad de adaptacion.</p>
        </div>
        <button type="button" class="collapsible">Vision</button>
        <div class="content">
            <p>

                En tres años seremos una empresa reconocida por brindar espacios de ensenanza, en el entorno musical en diferentes idiomas a nivel global.  

            </p>


        </div>
   </div>
        

        <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="IMG/canto.jpg" class="d-block w-100" alt="...">
                </div>
                <div class="carousel-item">
                    <img src="IMG/PIANO3.jpg" class="d-block w-100" alt="...">
                </div>
                <div class="carousel-item">
                    <img src="IMG/Guitarra2.jpg" class="d-block w-100" alt="...">
                </div><!-- comment -->
                <div class="carousel-item">
                    <img src="IMG/Bateria2.jpg" class="d-block w-100" alt="...">
                </div>
                
            </div>
            <button class="carousel-control-prev" type="button" data-target="#carouselExampleControls" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-target="#carouselExampleControls" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </button>
            
            
        </div>
        
        
        <div class="d-flex justify-content-between bd-highlight mb-3" style="background-color: black; margin-top: 2%">
    <div class="p-2 bd-highlight">

        <img src="IMG/logomarcadeagua.png" class="rounded float-end w-50 h-100" alt="...">

    </div>
    <div class="p-2 bd-highlight" style="color: black;"> </div>
 

<!--=====================================================
FIN CONTENEDOR
=====================================================-->
<div class=" bg-dark text-white text-center" style="padding: 3%">
  <p>Footer</p>
</div><!-- comment -->
</div>
        <script>
        var coll = document.getElementsByClassName("collapsible");
        var i;

        for (i = 0; i < coll.length; i++) {
          coll[i].addEventListener("click", function() {
            this.classList.toggle("active");
            var content = this.nextElementSibling;
            if (content.style.display === "block") {
              content.style.display = "none";
            } else {
              content.style.display = "block";
            }
          });
        }
        </script>

 <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js" integrity="sha384-+sLIOodYLS7CIrQpBjl+C7nPvqq+FbNUBDunl/OZv93DB7Ln/533i8e/mZXLi/P+" crossorigin="anonymous"></script><!-- comment -->

</body>
</html>