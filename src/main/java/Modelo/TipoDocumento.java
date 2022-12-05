/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;

/**
 *
 * @author daniel laiton
 */
public class TipoDocumento {
    
    int idTipoDocumento;
    String Abreviatura;
    String Descripcion;

    public TipoDocumento() {
    }

    public TipoDocumento(int idTipoDocumento, String Abreviatura, String Descripcion) {
        this.idTipoDocumento = idTipoDocumento;
        this.Abreviatura = Abreviatura;
        this.Descripcion = Descripcion;
    }

    public TipoDocumento(String Abreviatura, String Descripcion) {
        this.Abreviatura = Abreviatura;
        this.Descripcion = Descripcion;
    }

    public int getIdTipoDocumento() {
        return idTipoDocumento;
    }

    public void setIdTipoDocumento(int idTipoDocumento) {
        this.idTipoDocumento = idTipoDocumento;
    }

    public String getAbreviatura() {
        return Abreviatura;
    }

    public void setAbreviatura(String Abreviatura) {
        this.Abreviatura = Abreviatura;
    }

    public String getDescripcion() {
        return Descripcion;
    }

    public void setDescripcion(String Descripcion) {
        this.Descripcion = Descripcion;
    }

   

   
        
}
