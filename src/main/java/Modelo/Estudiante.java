/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;

/**
 *
 * @author daniel laiton
 */
public class Estudiante {
    
    int idPersona;
    String Nombre;
    int Rol;

    public Estudiante() {
    }

    public Estudiante(String Nombre, int Rol) {
        this.Nombre = Nombre;
        this.Rol = Rol;
    }

    public Estudiante(int idPersona, String Nombre, int Rol) {
        this.idPersona = idPersona;
        this.Nombre = Nombre;
        this.Rol = Rol;
    }

    public int getIdPersona() {
        return idPersona;
    }

    public void setIdPersona(int idPersona) {
        this.idPersona = idPersona;
    }

    public String getNombre() {
        return Nombre;
    }

    public void setNombre(String Nombre) {
        this.Nombre = Nombre;
    }

    public int getRol() {
        return Rol;
    }

    public void setRol(int Rol) {
        this.Rol = Rol;
    }
    
    
    
}
