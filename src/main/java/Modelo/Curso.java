/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;

/**
 *
 * @author daniel laiton
 */
public class Curso {
    
    int idCurso;
    String NombreCurso;

    public Curso() {
    }

    public Curso(String NombreCurso) {
        this.NombreCurso = NombreCurso;
    }

    public Curso(int idCurso, String NombreCurso) {
        this.idCurso = idCurso;
        this.NombreCurso = NombreCurso;
    }

    public int getIdCurso() {
        return idCurso;
    }

    public void setIdCurso(int idCurso) {
        this.idCurso = idCurso;
    }

    public String getNombreCurso() {
        return NombreCurso;
    }

    public void setNombreCurso(String NombreCurso) {
        this.NombreCurso = NombreCurso;
    }
    
    
    
}
