/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;

/**
 *
 * @author daniel laiton
 */
public class EstadoCurso {
    
    int idEstadoCurso;
    String Descripcion;

    public EstadoCurso(int idEstadoCurso, String Descripcion) {
        this.idEstadoCurso = idEstadoCurso;
        this.Descripcion = Descripcion;
    }

    public EstadoCurso() {
    }

    public int getIdEstadoCurso() {
        return idEstadoCurso;
    }

    public void setIdEstadoCurso(int idEstadoCurso) {
        this.idEstadoCurso = idEstadoCurso;
    }

    public String getDescripcion() {
        return Descripcion;
    }

    public void setDescripcion(String Descripcion) {
        this.Descripcion = Descripcion;
    }
    
    
    
}
