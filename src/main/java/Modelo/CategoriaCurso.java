/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;

/**
 *
 * @author daniel laiton
 */
public class CategoriaCurso {
    
    int idCatCurso;
    String NombreCat;
    String Descripcion;

    public CategoriaCurso() {
    }

    public CategoriaCurso(String NombreCat, String Descripcion) {
        this.NombreCat = NombreCat;
        this.Descripcion = Descripcion;
    }

    public CategoriaCurso(int idCatCurso, String NombreCat, String Descripcion) {
        this.idCatCurso = idCatCurso;
        this.NombreCat = NombreCat;
        this.Descripcion = Descripcion;
    }

    public int getIdCatCurso() {
        return idCatCurso;
    }

    public void setIdCatCurso(int idCatCurso) {
        this.idCatCurso = idCatCurso;
    }

    public String getNombreCat() {
        return NombreCat;
    }

    public void setNombreCat(String NombreCat) {
        this.NombreCat = NombreCat;
    }

    public String getDescripcion() {
        return Descripcion;
    }

    public void setDescripcion(String Descripcion) {
        this.Descripcion = Descripcion;
    }
    
    
    
}
