
package Dao;

import Modelo.CategoriaCurso;
import Modelo.Curso;
import Modelo.EstadoCurso;
import Modelo.Estudiante;
import Modelo.Evaluaciones;
import Modelo.Inscritos;
import Modelo.Niveles;
import Modelo.NombreCompleto;
import Modelo.Persona;
import Modelo.PromediosCursos;
import Modelo.Roles;
import Modelo.TipoDocumento;
import Modelo.Usuario;
import controlador.PersonaCrud;
import java.util.List;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;

public class PersonaDao implements PersonaCrud {
conexion cn = new conexion();
Connection con;
PreparedStatement ps;
ResultSet rs;
NombreCompleto p = new NombreCompleto();
Usuario u = new Usuario();

    @Override
    public List listarNombreCompleto() {
       ArrayList<NombreCompleto>list=new ArrayList<>();
       String SQL_SELECT = "SELECT * FROM dalyart.nombrecompleto;";
       try {
         con = cn.getConnection();
            ps = con.prepareStatement(SQL_SELECT);
            rs = ps.executeQuery();
            while (rs.next()) {
            
            NombreCompleto NC = new NombreCompleto();
            NC.setIdNombres(rs.getInt("idnombrecompleto"));
            NC.setNombres1(rs.getString("pNombre"));
            NC.setNombres2(rs.getString("sNombre"));
            NC.setApellidos1(rs.getString("pApellido"));
            NC.setApellidos2(rs.getString("sApellido"));
            NC.setFkpersona(rs.getInt("fk_idPersona"));
            list.add(NC);
                
                }
            } catch (Exception e) {
             System.out.print("Error listar Persona" + e.getMessage() );
            }
            return list;
       }
    
     @Override
    public List listarDocumento() {
        ArrayList<TipoDocumento>list=new ArrayList<>();
       String SQL_SELECT = "SELECT * FROM dalyart.tipodocumento;";
       try {
         con = cn.getConnection();
            ps = con.prepareStatement(SQL_SELECT);
            rs = ps.executeQuery();
            while (rs.next()) {
            
            TipoDocumento TIP = new TipoDocumento();
            TIP.setIdTipoDocumento(rs.getInt("idTipoDocumento"));
            TIP.setAbreviatura(rs.getString("abreviatura"));
            TIP.setDescripcion(rs.getString("descripcion"));           
            list.add(TIP);
                
                }
            } catch (Exception e) {
             System.out.print("Error listar Persona" + e.getMessage() );
            }
            return list;
    }
    
    @Override
    public List listarPersona() {
       ArrayList<Persona>list=new ArrayList<>();
       String SQL_SELECT = "SELECT * FROM dalyart.persona;";
       try {
         con = cn.getConnection();
            ps = con.prepareStatement(SQL_SELECT);
            rs = ps.executeQuery();
            while (rs.next()) {
            
            Persona per = new Persona();
            per.setIdPersona(rs.getInt("idPersona"));
            per.setNumDocumento(rs.getInt("numDocumento"));
            per.setFkIdTipoDocumento(rs.getInt("fk_idTipoDocumento"));           
            list.add(per);
                
                }
            } catch (Exception e) {
             System.out.print("Error listar Persona" + e.getMessage() );
            }
            return list;
    }
    
    @Override
    public List listarInscritos() {
        
         ArrayList<Inscritos>list=new ArrayList<>();
       String SQL_SELECT = "SELECT progreso.idProgreso, concat(nombrecompleto.pNombre, \" \", nombrecompleto.pApellido) AS estudiante, curso.nombre AS Curso FROM progreso INNER JOIN nombrecompleto ON progreso.fk_idpersona = nombrecompleto.fk_idPersona INNER JOIN curso ON curso.idCurso = progreso.fk_idCurso;";
       try {
         con = cn.getConnection();
            ps = con.prepareStatement(SQL_SELECT);
            rs = ps.executeQuery();
            while (rs.next()) {
            
            Inscritos insc = new Inscritos();
            insc.setIdProgreso(rs.getInt("idProgreso"));
            insc.setEstudiante(rs.getString("estudiante"));
            insc.setCurso(rs.getString("Curso"));           
            list.add(insc);
                
                }
            } catch (Exception e) {
             System.out.print("Error listar Persona" + e.getMessage() );
            }
            return list;
        
    }
    
     @Override
    public List listarPromediosCurso() {
        ArrayList<PromediosCursos>list=new ArrayList<>();
       String SQL_SELECT = "SELECT curso.nombre, count(progreso.fk_idCurso) AS Inscritos, AVG(progreso.Score) AS promedio from curso INNER JOIN progreso ON curso.idCurso = progreso.fk_idCurso GROUP BY fk_idCurso;";
       try {
         con = cn.getConnection();
            ps = con.prepareStatement(SQL_SELECT);
            rs = ps.executeQuery();
            while (rs.next()) {
            
            PromediosCursos promcur = new PromediosCursos();
            promcur.setNomreCurso(rs.getString("nombre"));
            promcur.setInscritosPorCurso(rs.getInt("Inscritos"));
            promcur.setPromedioPorCurso(rs.getDouble("promedio"));           
            list.add(promcur);
                
                }
            } catch (Exception e) {
             System.out.print("Error listar Persona" + e.getMessage() );
            }
            return list;
    }
    
     @Override
    public List listarEvaluaciones() {
         ArrayList<Evaluaciones>list=new ArrayList<>();
       String SQL_SELECT = "SELECT concat(nombrecompleto.pNombre, \" \", nombrecompleto.pApellido) AS Estudiante, nivel.nombre AS Nivel, curso.nombre AS Curso, progreso.Score FROM progreso INNER JOIN nivel ON progreso.fk_IdNivel = nivel.idNivel INNER JOIN curso ON progreso.fk_idCurso = curso.idCurso INNER JOIN nombrecompleto ON progreso.fk_idpersona = nombrecompleto.idnombrecompleto;";
       try {
         con = cn.getConnection();
            ps = con.prepareStatement(SQL_SELECT);
            rs = ps.executeQuery();
            while (rs.next()) {
            
            Evaluaciones eval = new Evaluaciones();
            eval.setEstudiante(rs.getString("Estudiante"));
            eval.setNivel(rs.getString("Nivel"));
            eval.setCurso(rs.getString("Curso"));           
            eval.setScore(rs.getInt("Score"));           
            list.add(eval);
                
                }
            } catch (Exception e) {
             System.out.print("Error listar Persona" + e.getMessage() );
            }
            return list;
    }

    @Override
    public List listarUsuarios() {
       ArrayList<Usuario>list=new ArrayList<>();
       String SQL_SELECT = "SELECT * FROM dalyart.usuario;";
       try {
         con = cn.getConnection();
            ps = con.prepareStatement(SQL_SELECT);
            rs = ps.executeQuery();
            while (rs.next()) {
            
            Usuario user = new Usuario();
            user.setIdUsuario(rs.getInt("idUsuario"));
            user.setCorreo(rs.getString("correo"));
            user.setContraseña(rs.getInt("contraseña"));           
            user.setFkpersona(rs.getInt("fk_idPersona"));           
            user.setRol(rs.getInt("fk_idRol"));           
            user.setFk_idEstado(rs.getInt("fk_idEstado"));           
            list.add(user);
                
                }
            } catch (Exception e) {
             System.out.print("Error listar Persona" + e.getMessage() );
            }
            return list;
    }
    
    @Override
    public List listarEstudiante() {
        ArrayList<Estudiante>list=new ArrayList<>();
       String SQL_SELECT = "SELECT nombrecompleto.fk_idPersona ,concat(nombrecompleto.pNombre, \" \", nombrecompleto.pApellido)  AS Nombre, usuario.fk_idRol FROM nombrecompleto INNER JOIN usuario ON nombrecompleto.fk_idPersona = usuario.fk_idPersona WHERE usuario.fk_idRol = '1';";
       try {
         con = cn.getConnection();
            ps = con.prepareStatement(SQL_SELECT);
            rs = ps.executeQuery();
            while (rs.next()) {
            
            Estudiante est = new Estudiante();
            est.setIdPersona(rs.getInt("fk_idPersona"));
            est.setNombre(rs.getString("Nombre"));
            est.setRol(rs.getInt("fk_idRol"));         
            list.add(est);
                
                }
            } catch (Exception e) {
             System.out.print("Error listar Persona" + e.getMessage() );
            }
            return list;
    }
    @Override
    public List listarRol() {
        ArrayList<Roles>list=new ArrayList<>();
       String SQL_SELECT = "SELECT * FROM dalyart.roles;";
       try {
         con = cn.getConnection();
            ps = con.prepareStatement(SQL_SELECT);
            rs = ps.executeQuery();
            while (rs.next()) {
            
            Roles rol = new Roles();
            rol.setIdRol(rs.getInt("idRoles"));
            rol.setNombreRol(rs.getString("rol"));          
            list.add(rol);
                
                }
            } catch (Exception e) {
             System.out.print("Error listar Persona" + e.getMessage() );
            }
            return list;
    }
    
    @Override
    public List listarEstado() {
       ArrayList<EstadoCurso>list=new ArrayList<>();
       String SQL_SELECT = "SELECT * FROM dalyart.estadocurso;";
       try {
         con = cn.getConnection();
            ps = con.prepareStatement(SQL_SELECT);
            rs = ps.executeQuery();
            while (rs.next()) {
            
            EstadoCurso esta = new EstadoCurso();
            esta.setIdEstadoCurso(rs.getInt("idEstadoCurso"));
            esta.setDescripcion(rs.getString("descripcion"));          
            list.add(esta);
                
                }
            } catch (Exception e) {
             System.out.print("Error listar Persona" + e.getMessage() );
            }
            return list;
    }
    @Override
    public List listarNiveles() {
        ArrayList<Niveles>list=new ArrayList<>();
       String SQL_SELECT = "SELECT * FROM dalyart.nivel;";
       try {
         con = cn.getConnection();
            ps = con.prepareStatement(SQL_SELECT);
            rs = ps.executeQuery();
            while (rs.next()) {
            
            Niveles nivel = new Niveles();
            nivel.setIdNiveles(rs.getInt("idNivel"));
            nivel.setDescripcion(rs.getString("nombre"));          
            list.add(nivel);
                
                }
            } catch (Exception e) {
             System.out.print("Error listar Persona" + e.getMessage() );
            }
            return list;
    }
    
    
    @Override
    public List listarCatalogoCurso() {
        ArrayList<CategoriaCurso>list=new ArrayList<>();
       String SQL_SELECT = "SELECT * FROM dalyart.categoriacurso;";
       try {
         con = cn.getConnection();
            ps = con.prepareStatement(SQL_SELECT);
            rs = ps.executeQuery();
            while (rs.next()) {
            
            CategoriaCurso catCur = new CategoriaCurso();
            catCur.setIdCatCurso(rs.getInt("idCatCurso"));
            catCur.setNombreCat(rs.getString("nombre"));          
            catCur.setDescripcion(rs.getString("descripcion"));          
            list.add(catCur);
                
                }
            } catch (Exception e) {
             System.out.print("Error listar Persona" + e.getMessage() );
            }
            return list;
    }
    @Override
    public List listarCursos() {
        ArrayList<Curso>list=new ArrayList<>();
       String SQL_SELECT = "SELECT * FROM dalyart.curso;";
       try {
         con = cn.getConnection();
            ps = con.prepareStatement(SQL_SELECT);
            rs = ps.executeQuery();
            while (rs.next()) {
            
            Curso Cur = new Curso();
            Cur.setIdCurso(rs.getInt("idCurso"));
            Cur.setNombreCurso(rs.getString("nombre"));          
            list.add(Cur);
                
                }
            } catch (Exception e) {
             System.out.print("Error listar Persona" + e.getMessage() );
            }
            return list;
    }

    @Override
    public NombreCompleto list(int i) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    

    @Override
    public boolean addNombreCompleto(NombreCompleto nc) {
        System.out.println("@Maestros " + nc );
        String SQLADD = "INSERT INTO nombrecompleto (pNombre, sNombre, pApellido, sApellido, fk_idPersona) VALUES (?, ?, ?, ?,(SELECT count(persona.idPersona) FROM persona));";
        
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(SQLADD);
            ps.setString(1, nc.getNombres1());
            ps.setString(2, nc.getNombres2());
            ps.setString(3, nc.getApellidos1());
            ps.setString(4, nc.getApellidos2());
            ps.executeUpdate();
        } catch (SQLException ex) {
            
            
            
        } 
    return false;
    }

    @Override
    public boolean addDocumento(Persona per) {
        System.out.println("@Maestros " + per );
        String SQLADD = "INSERT INTO persona (numDocumento, fk_idTipoDocumento) VALUES (?, ?);";
        
        
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(SQLADD);
            ps.setInt(1, per.getNumDocumento());
            ps.setInt(2, per.getFkIdTipoDocumento());
            ps.executeUpdate();
        } catch (SQLException ex) {
            
            
            
        } 
    return false;
    }

    @Override
    public boolean addUsuario(Usuario user) {
        System.out.println("@Maestros " + user );
        String SQLADD = "INSERT INTO usuario (correo, contraseña, fk_idPersona, fk_idRol, fk_idEstado) VALUES (?, ?, (SELECT count(persona.idPersona) FROM persona), '1', '1');";
        
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(SQLADD); 
            ps.setString(1, user.getCorreo());
            ps.setInt(2, user.getContraseña());
            ps.executeUpdate();
        } catch (SQLException ex) {
            
            
            
        } 
    return false;
    }

    @Override
    public boolean edit(NombreCompleto nc) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public boolean eliminar(int idPersona) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public Usuario validar(Usuario user) {
        Usuario usu = new Usuario();
        String SQLvalidar = "select * FROM usuario WHERE correo = ? AND contraseña = ?;";
        con = cn.getConnection();
        try {
            int r = 0;
            ps = con.prepareStatement(SQLvalidar);
            ps.setString(1, user.getCorreo());
            ps.setInt(2, user.getContraseña());
            rs = ps.executeQuery();
            while (rs.next()) {
                
                usu.setIdUsuario(rs.getInt("idUsuario"));
                usu.setCorreo(rs.getString("correo"));
                usu.setContraseña(rs.getInt("contraseña"));
                usu.setFkpersona(rs.getInt("fk_idPersona"));
                usu.setRol(rs.getInt("fk_idRol"));
                usu.setFk_idEstado(rs.getInt("fk_idEstado"));
            }
           
            

        } catch (SQLException ex) {

        }
        return usu;
    }


        

   

    
     
}
