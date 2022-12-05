/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;

/**
 *
 * @author daniel laiton
 */
public class Niveles {
    
    int idNiveles;
    String Descripcion;

    public Niveles() {
    }

    public Niveles(String Descripcion) {
        this.Descripcion = Descripcion;
    }

    public Niveles(int idNiveles, String Descripcion) {
        this.idNiveles = idNiveles;
        this.Descripcion = Descripcion;
    }

    public int getIdNiveles() {
        return idNiveles;
    }

    public void setIdNiveles(int idNiveles) {
        this.idNiveles = idNiveles;
    }

    public String getDescripcion() {
        return Descripcion;
    }

    public void setDescripcion(String Descripcion) {
        this.Descripcion = Descripcion;
    }
    
    
    
}
