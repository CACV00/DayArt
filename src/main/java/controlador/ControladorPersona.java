/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controlador;


import Dao.PersonaDao;
import Modelo.NombreCompleto;
import Modelo.Persona;
import Modelo.TipoDocumento;
import Modelo.Usuario;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author daniel laiton
 */
@WebServlet(name = "ControladorPersona", urlPatterns = {"/ControladorPersona"})
public class ControladorPersona extends HttpServlet {
    NombreCompleto p = new NombreCompleto();
    PersonaDao dao = new PersonaDao();
    Usuario u = new Usuario();
    TipoDocumento t = new TipoDocumento();
   
    int Co;
    int Cla;
    
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ControladorPersona</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ControladorPersona at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       String acceso = "";
       String action = request.getParameter("accion");
       if (action.equalsIgnoreCase("Autenticacion")){
           
           String Correo = request.getParameter("CorreoValidar");
           String Clave = request.getParameter("ClaveValidar");
           int Clave2 = Integer.parseInt(Clave);            
            u.setCorreo(Correo);
            u.setContraseña(Clave2);            
            Usuario usu = dao.validar(u);
            if(usu.getCorreo()!= null){
                
                if (usu.getRol()== 1){
                    
                    request.getRequestDispatcher("Vistas/Perfiles/PerfilUsuario/index.jsp").forward(request, response);
                    
                }else if (usu.getRol()== 2){
                
                    request.getRequestDispatcher("Vistas/Perfiles/PerfilMaestro/VistasCurso/index.jsp").forward(request, response);
                    
                }else if (usu.getRol()== 3){
                
                    request.getRequestDispatcher("Vistas/Perfiles/perfilAdmin/inscritosPorCurso.jsp").forward(request, response);
                    
                }
            
                
            }else {
            
                request.getRequestDispatcher("RegistroDocumento.jsp").forward(request, response);
                
            }
           
       }else if (action.equalsIgnoreCase("Ingreso")){
       
            request.getRequestDispatcher("Vistas/Ingreso.jsp").forward(request, response);
       }else if (action.equalsIgnoreCase("Registro")){
       
            request.getRequestDispatcher("Vistas/RegistroDocumento.jsp").forward(request, response);
       }else if (action.equalsIgnoreCase("Contacto")){
       
            request.getRequestDispatcher("Vistas/Contacto.jsp").forward(request, response);
       }else if (action.equalsIgnoreCase("RegistroDocumento")){
            Persona per = new Persona();
            String Documento = request.getParameter("DocumentoAdd");
            String TipoDocumento = request.getParameter("TipoDocumento");
            int Documento1 = Integer.parseInt(Documento);
            int TipoDocumento1 = Integer.parseInt(TipoDocumento);
            per.setNumDocumento(Documento1);
            per.setFkIdTipoDocumento(TipoDocumento1);
            request.getRequestDispatcher("Vistas/RegistroNombres.jsp").forward(request, response);
            dao.addDocumento(per);
       }else if (action.equalsIgnoreCase("RegistroNombres")){
            NombreCompleto nc = new NombreCompleto();
            String pNombre = request.getParameter("pNombreAdd");
            String sNombew = request.getParameter("sNombreAdd");
            String pApellido = request.getParameter("pApellidoAdd");
            String sApellido = request.getParameter("sApellidoAdd");
            nc.setNombres1(pNombre);
            nc.setNombres2(sNombew);
            nc.setApellidos1(pApellido);
            nc.setApellidos2(sApellido);
            request.getRequestDispatcher("Vistas/RegistroUsuarios.jsp").forward(request, response);
            dao.addNombreCompleto(nc);
       }else if (action.equalsIgnoreCase("RegistroUsuarios")){
            Usuario user = new Usuario();
            int idUduario = p.getFkpersona();
            String Correo = request.getParameter("CorreoAdd");
            String Contraseña = request.getParameter("ClaveAdd");
            int claveInt =Integer.parseInt(Contraseña);
            user.setCorreo(Correo);
            user.setContraseña(claveInt);
            user.setFk_idEstado(idUduario);
            request.getRequestDispatcher("Vistas/list.jsp").forward(request, response);
            dao.addUsuario(user);
       }
       
    }

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
