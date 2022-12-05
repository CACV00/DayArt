<%-- 
    Document   : Ingreso
    Created on : 4/12/2022, 8:53:17 a. m.
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
         <form action="ControladorPersona" method="get">
            
            <div>
                
                <div>
                    
                    <label>Correo Electronico </label>
                    
                </div>
                <div>
                    
                    <input name="CorreoValidar" >
                    
                </div>
                <div></div>
                
            </div><!-- Email -->
            
            <div>
                
                <div>
                    
                    <label>Contraseña</label>
                    
                </div>
                <div>
                    
                    <input name="ClaveValidar">
                    
                </div>
                <div></div>
                
            </div><!-- Clave -->
            
            <input type="submit" name="accion" value="Autenticacion">
            
        </form>
    </body>
</html>
