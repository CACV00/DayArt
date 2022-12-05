<%@page import="Modelo.EstadoCurso"%>
<%@page import="Modelo.Roles"%>
<%@page import="Modelo.Usuario"%>
<%@page import="Modelo.Persona"%>
<%@page import="Modelo.NombreCompleto"%>
<%@page import="Modelo.Evaluaciones"%>
<%@page import="Modelo.PromediosCursos"%>
<%@page import="java.util.Iterator"%>
<%@page import="Modelo.Inscritos"%>
<%@page import="java.util.List"%>
<%@page import="Dao.PersonaDao"%>
<!doctype html>
<html lang="en">
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">

        <title>DALY ART & MUSIC</title>
    </head>
    <body  style="margin-left: 10%; margin-right: 10%; background-image: url(../../../IMG/fondo1.jpeg); background-repeat: no-repeat; background-size: cover ">

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
                border: 3px solid black;
                background-color: white;
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
                border: 1px solid #ccc;
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


            /* Popup container */
            .popup {
                position: relative;
                display: inline-block;
                cursor: pointer;
            }

            /* The actual popup (appears on top) */
            .popup .popuptext {
                visibility: hidden;
                width: 160px;
                background-color: #555;
                color: #fff;
                text-align: center;
                border-radius: 6px;
                padding: 8px 0;
                position: absolute;
                z-index: 1;
                bottom: 125%;
                left: 50%;
                margin-left: -80px;
            }

            /* Popup arrow */
            .popup .popuptext::after {
                content: "";
                position: absolute;
                top: 100%;
                left: 50%;
                margin-left: -5px;
                border-width: 5px;
                border-style: solid;
                border-color: #555 transparent transparent transparent;
            }

            /* Toggle this class when clicking on the popup container (hide and show the popup) */
            .popup .show {
                visibility: visible;
                -webkit-animation: fadeIn 1s;
                animation: fadeIn 1s
            }

            /* Add animation (fade in the popup) */
            @-webkit-keyframes fadeIn {
                from {
                    opacity: 0;
                }
                to {
                    opacity: 1;
                }
            }

            @keyframes fadeIn {
                from {
                    opacity: 0;
                }
                to {
                    opacity:1 ;
                }
            }
        </style>

        <header>

            <div class="d-flex justify-content-around bd-highlight mb-3 w-100" style="background-color: #83141C;" >
                <div class="p-2 bd-highlight" ><img style="" src="../../../IMG/logomarcadeagua.png" class="rounded float-end w-50 h-100" alt="..."></div>
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

        <h1 class="Titulo">Listados por Curso</h1>

        <div class="Contenido">




            <!-- Tab links -->
            <div class="tab">
                <button class="tablinks" onclick="InfoTab(event, 'Inscripciones')">Inscripciones</button>
                <button class="tablinks" onclick="InfoTab(event, 'Cursos')">Cursos</button>
                <button class="tablinks" onclick="InfoTab(event, 'Evaluaciones')">Evaluaciones</button>
                <button class="tablinks" onclick="InfoTab(event, 'Usuarios')">Usuarios</button>
                <button class="tablinks" onclick="InfoTab(event, 'NuevoMaestro')">NuevoMaestro</button>

            </div>

            <!-- Tab content -->
            <div id="Inscripciones" class="tabcontent">
                <h3>Listado de estudiantes por curso</h3>

                <button onclick="exportTableToExcel('Inscripciones')">Tabla de excel</button>
                <table border="1">
                    <thead>
                        <tr>
                            <th>idProgreso</th>
                            <th>estudiante</th>
                            <th>Curso</th>
                            <th>Detalles</th>

                            <th>Acciones</th>
                        </tr>
                    </thead>
                    <%

                        PersonaDao daoinsc = new PersonaDao();
                        List<Inscritos> listinsc = daoinsc.listarInscritos();
                        Iterator<Inscritos> iterinsc = listinsc.iterator();
                        Inscritos insc = null;
                        while (iterinsc.hasNext()) {

                            insc = iterinsc.next();

                    %>
                    <tbody>
                        <tr>
                            <td><%=insc.getIdProgreso()%></td>
                            <td><%=insc.getEstudiante()%></td>
                            <td><%=insc.getCurso()%></td>


                            <td>

                                <a href="ControladorUsuario?accion=ListarCalificaciones&id=<%=insc.getIdProgreso()%>">Editar</a>
                                <a href="url">Remover</a>

                            </td>

                        </tr>

                        <%}%>
                    </tbody>
                </table>


            </div>

            <div id="Cursos" class="tabcontent">
                <h3>Listado de Cursos</h3>
                <button onclick="exportTableToExcel('Cursos')">Tabla de excel</button>
                <table border="1">
                    <thead>
                        <tr>
                            <th>Nombre Curso</th>
                            <th>Inscritos</th>
                            <th>Promedio</th>
                            <th>Detalles</th>


                        </tr>
                    </thead>
                    <%

                        PersonaDao daoperpro = new PersonaDao();
                        List<PromediosCursos> listperpro = daoperpro.listarPromediosCurso();
                        Iterator<PromediosCursos> iterperpro = listperpro.iterator();
                        PromediosCursos perpro = null;
                        while (iterperpro.hasNext()) {

                            perpro = iterperpro.next();


                    %>
                    <tbody>
                        <tr>
                                <td><%=perpro.getNomreCurso()%></td>
                                <td><%=perpro.getInscritosPorCurso()%></td>
                                <td><%=perpro.getPromedioPorCurso()%></td>


                            <td>

                                <a href="ControladorUsuario?accion=ListarCalificaciones&id=<%=perpro.getNomreCurso()%>">Editar</a>
                                <a href="url">Remover</a>

                            </td>

                        </tr>

                        <%}%>
                    </tbody>
                </table>

            </div>

            <div id="Evaluaciones" class="tabcontent">
                <h3>Listado de Evaluaciones</h3>
                <button onclick="exportTableToExcel('Evaluaciones')">Tabla de excel</button>
                <label for="cars">Seleccione el curso</label>
                <table border="1">
                    <thead>
                        <tr>
                            <th>Estudiante</th>
                            <th>Nivel</th>
                            <th>Curso</th>
                            <th>Score</th>



                        </tr>
                    </thead>
                    <%

                        PersonaDao evallistdao = new PersonaDao();
                        List<Evaluaciones> evallist = evallistdao.listarEvaluaciones();
                        Iterator<Evaluaciones> iterevallist = evallist.iterator();
                        Evaluaciones listeval = null;
                        while (iterevallist.hasNext()) {

                            listeval = iterevallist.next();
                    %>
                    <tbody>
                        <tr>
                                <td><%=listeval.getEstudiante()%></td>
                                <td><%=listeval.getNivel()%></td>
                                <td><%=listeval.getCurso()%></td>
                                <td><%=listeval.getScore()%></td>


                            <td>

                                <a href="ControladorUsuario?accion=ListarCalificaciones&id=<%=perpro.getNomreCurso()%>">Editar</a>
                                <a href="url">Remover</a>

                            </td>

                        </tr>

                        <%}%>
                    </tbody>
                </table>

            </div><!-- comment -->

            <div id="Usuarios" class="tabcontent">
                <h3>Listado de Usuarios</h3>
                <button onclick="exportTableToExcel('Usuarios')">Tabla de excel</button>
                <table border="1">
                    <thead>
                        <tr>
                            <th>idUsuarios</th>
                            <th>Nombre</th>
                            <th>Apellido</th>
                            <th>No. Usuario</th>


                            <th>Acciones</th>
                        </tr>
                    </thead>
                    <%

                        PersonaDao dao = new PersonaDao();
                        List<NombreCompleto> list = dao.listarNombreCompleto();
                        Iterator<NombreCompleto> iter = list.iterator();
                        NombreCompleto per = null;
                        Persona per2 = null;
                        while (iter.hasNext()) {

                            per = iter.next();


                    %>
                    <tbody>
                        <tr>
                            <td><%=per.getIdNombres()%></td>
                            <td><%=per.getNombres1()%> <%=per.getNombres2()%></td>
                            <td><%=per.getApellidos1()%><%=per.getApellidos2()%></td>
                            <td><%=per.getFkpersona()%></td>

                            <td>

                                <a href="ControladorUsuario?accion=editar&id=<%=per.getIdNombres()%>">Editar</a>
                                <a href="url">Remover</a>

                            </td>

                        </tr>

                        <%}%>
                    </tbody>
                </table>

            </div>

            <div id="NuevoMaestro" class="tabcontent">
                <h3>Crear un nuevo maestro</h3>

                
                               


            </div><!-- comment -->
            
</div>



        <div class="d-flex justify-content-between bd-highlight mb-3 mt-5" style="background-color: black;">
            <div class="p-2 bd-highlight">

                <img src="../../../IMG/logomarcadeagua.png" class="rounded float-end w-50 h-100" alt="...">

            </div>
            <div class="p-2 bd-highlight" style="color: black;">
                <!--footer-->
                <footer class="py-3 my-4">
                    <ul class="nav justify-content-center border-bottom pb-3 mb-3" >
                        <li class="nav-item"><a href="#" class="nav-link px-2 text-muted">Menu Principal</a></li>
                        <li class="nav-item"><a href="#" class="nav-link px-2 text-muted">Contacto</a></li>


                    </ul>
                    <p class="text-center text-muted">2022 Dalyart&music.com</p>
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

function exportTableToExcel(tableID, filename = ''){
    var downloadLink;
    var dataType = 'application/vnd.ms-excel';
    var tableSelect = document.getElementById(tableID);
    var tableHTML = tableSelect.outerHTML.replace(/ /g, '%20');
    
    // Specify file name
    filename = filename?filename+'.xls':'excel_data.xls';
    
    // Create download link element
    downloadLink = document.createElement("a");
    
    document.body.appendChild(downloadLink);
    
    if(navigator.msSaveOrOpenBlob){
        var blob = new Blob(['ufeff', tableHTML], {
            type: dataType
        });
        navigator.msSaveOrOpenBlob( blob, filename);
    }else{
        // Create a link to the file
        downloadLink.href = 'data:' + dataType + ', ' + tableHTML;
    
        // Setting the file name
        downloadLink.download = filename;
        
        //triggering the function
        downloadLink.click();
    }
}
 
 // When the user clicks on <div>, open the popup
function myFunction() {
  var popup = document.getElementById("myPopup");
  popup.classList.toggle("show");
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