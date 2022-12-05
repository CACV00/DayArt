/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;

/**
 *
 * @author daniel laiton
 */
public class Evaluaciones {
    
    String Estudiante;
    String Nivel;
    String Curso;
    int Score;

    public Evaluaciones(String Nivel, String Curso, int Score) {
        this.Nivel = Nivel;
        this.Curso = Curso;
        this.Score = Score;
    }

    public Evaluaciones() {
    }

    public Evaluaciones(String Estudiante, String Nivel, String Curso, int Score) {
        this.Estudiante = Estudiante;
        this.Nivel = Nivel;
        this.Curso = Curso;
        this.Score = Score;
    }

    public String getEstudiante() {
        return Estudiante;
    }

    public void setEstudiante(String Estudiante) {
        this.Estudiante = Estudiante;
    }

    public String getNivel() {
        return Nivel;
    }

    public void setNivel(String Nivel) {
        this.Nivel = Nivel;
    }

    public String getCurso() {
        return Curso;
    }

    public void setCurso(String Curso) {
        this.Curso = Curso;
    }

    public int getScore() {
        return Score;
    }

    public void setScore(int Score) {
        this.Score = Score;
    }
    
    
    
}
