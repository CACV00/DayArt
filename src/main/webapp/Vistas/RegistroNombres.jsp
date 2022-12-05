<%-- 
    Document   : RegistroNombres
    Created on : 4/12/2022, 9:36:10 a. m.
    Author     : daniel laiton
--%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="Modelo.Persona"%>
<%@page import="Dao.PersonaDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="ControladorPersona" method="get">
            
         
            <div>
                
                <div>
                    
                    <label>Primer Nombre</label>
                    
                </div>
                <div>
                    
                    <input name="pNombreAdd" >
                    
                </div>
                <div></div>
                
            </div><!-- Primer Nombre -->
            <div>
                
                <div>
                    
                    <label></label>
                    
                </div>
                <div>
                    
                    <input name="sNombreAdd" >
                    
                </div>
                <div></div>
                
            </div><!-- Segundo Nombre -->
            <div>
                
                <div>
                    
                    <label></label>
                    
                </div>
                <div>
                    
                    <input name="pApellidoAdd" >
                    
                </div>
                <div></div>
                
            </div><!-- Primer Apellido-->
            <div>
                
                <div>
                    
                    <label></label>
                    
                </div>
                <div>
                    
                    <input name="sApellidoAdd" >
                    
                </div>
                <div></div>
                
            </div><!-- Segundo Apellido-->
            
            <input type="submit" name="accion" value="RegistroNombres">
            
        </form>
    </body>
</html>
