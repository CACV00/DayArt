/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;

/**
 *
 * @author daniel laiton
 */
public class Inscritos {
    
    int idProgreso;
    String estudiante;
    String Curso;

    public Inscritos() {
    }

    public Inscritos(String estudiante, String Curso) {
        this.estudiante = estudiante;
        this.Curso = Curso;
    }

    public Inscritos(int idProgreso, String estudiante, String Curso) {
        this.idProgreso = idProgreso;
        this.estudiante = estudiante;
        this.Curso = Curso;
    }

    public int getIdProgreso() {
        return idProgreso;
    }

    public void setIdProgreso(int idProgreso) {
        this.idProgreso = idProgreso;
    }

    public String getEstudiante() {
        return estudiante;
    }

    public void setEstudiante(String estudiante) {
        this.estudiante = estudiante;
    }

    public String getCurso() {
        return Curso;
    }

    public void setCurso(String Curso) {
        this.Curso = Curso;
    }
    
    
    
}
