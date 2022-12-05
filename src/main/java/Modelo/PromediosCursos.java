/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;

/**
 *
 * @author daniel laiton
 */
public class PromediosCursos {
    
    String NomreCurso;
    int InscritosPorCurso;
    double promedioPorCurso;

    public PromediosCursos() {
    }

    public PromediosCursos(int InscritosPorCurso, double promedioPorCurso) {
        this.InscritosPorCurso = InscritosPorCurso;
        this.promedioPorCurso = promedioPorCurso;
    }

    public PromediosCursos(String NomreCurso, int InscritosPorCurso, double promedioPorCurso) {
        this.NomreCurso = NomreCurso;
        this.InscritosPorCurso = InscritosPorCurso;
        this.promedioPorCurso = promedioPorCurso;
    }

    public String getNomreCurso() {
        return NomreCurso;
    }

    public void setNomreCurso(String NomreCurso) {
        this.NomreCurso = NomreCurso;
    }

    public int getInscritosPorCurso() {
        return InscritosPorCurso;
    }

    public void setInscritosPorCurso(int InscritosPorCurso) {
        this.InscritosPorCurso = InscritosPorCurso;
    }

    public double getPromedioPorCurso() {
        return promedioPorCurso;
    }

    public void setPromedioPorCurso(double promedioPorCurso) {
        this.promedioPorCurso = promedioPorCurso;
    }


    
}
