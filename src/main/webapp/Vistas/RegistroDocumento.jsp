<%-- 
    Document   : Registro
    Created on : 4/12/2022, 9:33:00 a. m.
    Author     : daniel laiton
--%>

<%@page import="Modelo.Usuario"%>
<%@page import="Modelo.TipoDocumento"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="Dao.PersonaDao"%>
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
            
           
            <input type="number" name="DocumentoAdd">
            <select name="TipoDocumento">
                     <option value="1">Seleccione un maestro</option>
                     <%
                     
                        PersonaDao dao = new PersonaDao();
                        List<Usuario>list=dao.listar();
                        Iterator<Usuario> iter= list.iterator();
                        Usuario usu = null;
                        while(iter.hasNext()){
                            
                            usu = iter.next();
                        

                     %>
                     <option value="<%=usu.get()%>"><%=TIP.getDescripcion()%></option>
                
                 <%}%>
            </select>    
            
            <input type="submit" name="accion" value="RegistroDocumento">
            
        </form>
    </body>
</html>
