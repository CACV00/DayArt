/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;

/**
 *
 * @author daniel laiton
 */
public class Persona {
    
    int idPersona;
    int numDocumento;
    int fkIdTipoDocumento;

    public Persona() {
    }

    public Persona(int idPersona, int numDocumento, int fkIdTipoDocumento) {
        this.idPersona = idPersona;
        this.numDocumento = numDocumento;
        this.fkIdTipoDocumento = fkIdTipoDocumento;
    }

    public Persona(int numDocumento, int fkIdTipoDocumento) {
        this.numDocumento = numDocumento;
        this.fkIdTipoDocumento = fkIdTipoDocumento;
    }

    public int getIdPersona() {
        return idPersona;
    }

    public void setIdPersona(int idPersona) {
        this.idPersona = idPersona;
    }

    public int getNumDocumento() {
        return numDocumento;
    }

    public void setNumDocumento(int numDocumento) {
        this.numDocumento = numDocumento;
    }

    public int getFkIdTipoDocumento() {
        return fkIdTipoDocumento;
    }

    public void setFkIdTipoDocumento(int fkIdTipoDocumento) {
        this.fkIdTipoDocumento = fkIdTipoDocumento;
    }
    
}
