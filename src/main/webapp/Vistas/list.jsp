<%-- 
    Document   : list
    Created on : 4/12/2022, 9:46:58 a. m.
    Author     : daniel laiton
--%>

<%@page import="Modelo.NombreCompleto"%>
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
        
        <table border="1">
            <thead>
                <tr>
                    <th>idUsuarios</th>
                    <th>Nombre</th>
                    <th>Apellido</th>
                    <th>Documento</th>
                    
                    <th>Acciones</th>
                </tr>
            </thead>
        <%

            PersonaDao dao = new PersonaDao();
            List<NombreCompleto>list = dao.listarNombreCompleto();
            Iterator<NombreCompleto>iter=list.iterator();
            NombreCompleto per = null;
            while(iter.hasNext()){
                
                per=iter.next();
            

        %>
        <tbody>
                <tr>
                    <td><%=per.getIdNombres()%></td>
                    <td><%=per.getNombres1()%></td>
                    <td><%=per.getNombres2()%></td>
                    <td><%=per.getApellidos1()%></td>
                    <td><%=per.getApellidos2()%></td>
                    <td><%=per.getFkpersona()%></td>
                  
                    <td>
                        
                        <a href="ControladorUsuario?accion=editar&id=<%=per.getIdNombres()%>">Editar</a>
                        <a href="url">Remover</a>
                        
                    </td>
                    
                </tr>
                
                <%}%>
            </tbody>
          </table>
       
    </body>
</html>
