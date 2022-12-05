
<%-- 
    Document   : RegistroUsuarios
    Created on : 4/12/2022, 9:36:26 a. m.
    Author     : daniel laiton
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <form action="ControladorPersona" method="get">
            
            <div>
                
                <div>
                    
                    <label>Primer Nombre</label>
                    
                </div>
                <div>
                    
                    <input name="CorreoAdd" >
                    
                </div>
                <div></div>
                
            </div><!-- Primer Nombre -->
            <div>
                
                <div>
                    
                    <label></label>
                    
                </div>
                <div>
                    
                    <input name="ClaveAdd" >
                    
                </div>
                <div></div>
                
            </div><!-- Segundo Nombre -->
            
            
            <input type="submit" name="accion" value="RegistroUsuarios">
            
        </form>
    </body>
</html>
