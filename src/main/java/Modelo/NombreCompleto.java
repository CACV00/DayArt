package Modelo;


public class NombreCompleto {

    private int idNombres;
    private String nombres1;
    private String nombres2;
    private String apellidos1;
    private String apellidos2;
    private int fkpersona;

    public NombreCompleto(int idNombres, String nombres1, String nombres2, String apellidos1, String apellidos2, int fkpersona) {
        this.idNombres = idNombres;
        this.nombres1 = nombres1;
        this.nombres2 = nombres2;
        this.apellidos1 = apellidos1;
        this.apellidos2 = apellidos2;
        this.fkpersona = fkpersona;
    }

    public NombreCompleto() {
    }

    public NombreCompleto(String nombres1, String nombres2, String apellidos1, String apellidos2, int fkpersona) {
        this.nombres1 = nombres1;
        this.nombres2 = nombres2;
        this.apellidos1 = apellidos1;
        this.apellidos2 = apellidos2;
        this.fkpersona = fkpersona;
    }

    public int getIdNombres() {
        return idNombres;
    }

    public void setIdNombres(int idNombres) {
        this.idNombres = idNombres;
    }

    public String getNombres1() {
        return nombres1;
    }

    public void setNombres1(String nombres1) {
        this.nombres1 = nombres1;
    }

    public String getNombres2() {
        return nombres2;
    }

    public void setNombres2(String nombres2) {
        this.nombres2 = nombres2;
    }

    public String getApellidos1() {
        return apellidos1;
    }

    public void setApellidos1(String apellidos1) {
        this.apellidos1 = apellidos1;
    }

    public String getApellidos2() {
        return apellidos2;
    }

    public void setApellidos2(String apellidos2) {
        this.apellidos2 = apellidos2;
    }

    public int getFkpersona() {
        return fkpersona;
    }

    public void setFkpersona(int fkpersona) {
        this.fkpersona = fkpersona;
    }


    

}
