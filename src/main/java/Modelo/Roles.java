/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;

/**
 *
 * @author daniel laiton
 */
public class Roles {
    
    int idRol;
    String NombreRol;

    public Roles() {
    }

    public Roles(int idRol, String NombreRol) {
        this.idRol = idRol;
        this.NombreRol = NombreRol;
    }

    public Roles(String NombreRol) {
        this.NombreRol = NombreRol;
    }

    public int getIdRol() {
        return idRol;
    }

    public void setIdRol(int idRol) {
        this.idRol = idRol;
    }

    public String getNombreRol() {
        return NombreRol;
    }

    public void setNombreRol(String NombreRol) {
        this.NombreRol = NombreRol;
    }
    
    
    
}
