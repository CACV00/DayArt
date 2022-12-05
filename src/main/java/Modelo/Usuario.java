
package Modelo;


public class Usuario {
    
private int idUsuario;
private String Correo;
private int Contraseña;
private int fkpersona;
private int Rol;
private int fk_idEstado;

    public Usuario() {
    }

    public Usuario(int idUsuario, String Correo, int Contraseña, int fkpersona, int Rol, int fk_idEstado) {
        this.idUsuario = idUsuario;
        this.Correo = Correo;
        this.Contraseña = Contraseña;
        this.fkpersona = fkpersona;
        this.Rol = Rol;
        this.fk_idEstado = fk_idEstado;
    }

    public Usuario(String Correo, int Contraseña, int fkpersona, int Rol, int fk_idEstado) {
        this.Correo = Correo;
        this.Contraseña = Contraseña;
        this.fkpersona = fkpersona;
        this.Rol = Rol;
        this.fk_idEstado = fk_idEstado;
    }

    public int getIdUsuario() {
        return idUsuario;
    }

    public void setIdUsuario(int idUsuario) {
        this.idUsuario = idUsuario;
    }

    public String getCorreo() {
        return Correo;
    }

    public void setCorreo(String Correo) {
        this.Correo = Correo;
    }

    public int getContraseña() {
        return Contraseña;
    }

    public void setContraseña(int Contraseña) {
        this.Contraseña = Contraseña;
    }

    public int getFkpersona() {
        return fkpersona;
    }

    public void setFkpersona(int fkpersona) {
        this.fkpersona = fkpersona;
    }

    public int getRol() {
        return Rol;
    }

    public void setRol(int Rol) {
        this.Rol = Rol;
    }

    public int getFk_idEstado() {
        return fk_idEstado;
    }

    public void setFk_idEstado(int fk_idEstado) {
        this.fk_idEstado = fk_idEstado;
    }

   


   
    


  
}
