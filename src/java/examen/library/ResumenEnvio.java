package examen.library;

import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class ResumenEnvio {

    private String descripcion;
    private int peso;
    private int region;
    private String rutEmisor;
    private String nombreEmisor;
    private String apellidosEmisor;
    private String direccionEmisor;
    private int telefonoEmisor;
    private String rutReceptor;
    private String nombreReceptor;
    private String apellidosReceptor;
    private String direccionReceptor;
    private int telefonoReceptor;
    private int Total;

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public int getPeso() {
        return peso;
    }

    public void setPeso(int peso) {
        this.peso = peso;
    }

    public int getRegion() {
        return region;
    }

    public void setRegion(int region) {
        this.region = region;
    }

    public String getRutEmisor() {
        return rutEmisor;
    }

    public void setRutEmisor(String rutEmisor) {
        this.rutEmisor = rutEmisor;
    }

    public String getNombreEmisor() {
        return nombreEmisor;
    }

    public void setNombreEmisor(String nombreEmisor) {
        this.nombreEmisor = nombreEmisor;
    }

    public String getApellidosEmisor() {
        return apellidosEmisor;
    }

    public void setApellidosEmisor(String apellidosEmisor) {
        this.apellidosEmisor = apellidosEmisor;
    }

    public String getDireccionEmisor() {
        return direccionEmisor;
    }

    public void setDireccionEmisor(String direccionEmisor) {
        this.direccionEmisor = direccionEmisor;
    }

    public int getTelefonoEmisor() {
        return telefonoEmisor;
    }

    public void setTelefonoEmisor(int telefonoEmisor) {
        this.telefonoEmisor = telefonoEmisor;
    }

    public String getRutReceptor() {
        return rutReceptor;
    }

    public void setRutReceptor(String rutReceptor) {
        this.rutReceptor = rutReceptor;
    }

    public String getNombreReceptor() {
        return nombreReceptor;
    }

    public void setNombreReceptor(String nombreReceptor) {
        this.nombreReceptor = nombreReceptor;
    }

    public String getApellidosReceptor() {
        return apellidosReceptor;
    }

    public void setApellidosReceptor(String apellidosReceptor) {
        this.apellidosReceptor = apellidosReceptor;
    }

    public String getDireccionReceptor() {
        return direccionReceptor;
    }

    public void setDireccionReceptor(String direccionReceptor) {
        this.direccionReceptor = direccionReceptor;
    }

    public int getTelefonoReceptor() {
        return telefonoReceptor;
    }

    public void setTelefonoReceptor(int telefonoReceptor) {
        this.telefonoReceptor = telefonoReceptor;
    }

    public int getTotal() {
        return Total;
    }

    public void setTotal(int Total) {
        this.Total = Total;
    }

    public boolean guardar(ResumenEnvio r,Regiones re) {
        boolean exito = false;
        try {           
            Class.forName("com.mysql.jdbc.Driver");
            String strCon = "jdbc:mysql://localhost/Prueba2";
            Connection con = DriverManager.getConnection(strCon, "root", "tinto666");
            String sql = "insert into resumen (descripcion,peso,region,rutEmisor,nombreEmisor,apellidosEmisor,direccionEmisor,telefonoEmisor"
                    + ",rutReceptor,nombreReceptor,apellidosReceptor,direccionReceptor,telefonoReceptor,Total)values(?,?,?,?,?,?,?,?,?,?,?,?,?,?);";
            PreparedStatement smt = con.prepareStatement(sql);   
            String regione= ""+region;
            smt.setString(1, descripcion);
            smt.setInt(2, peso);
            smt.setString(3, regione);
            smt.setString(4, rutEmisor);
            smt.setString(5, nombreEmisor);
            smt.setString(6, apellidosEmisor);
            smt.setString(7, direccionEmisor);
            smt.setInt(8, telefonoEmisor);
            smt.setString(9, rutReceptor);
            smt.setString(10, nombreReceptor);
            smt.setString(11, apellidosReceptor);
            smt.setString(12, direccionReceptor);
            smt.setInt(13, telefonoReceptor);
            smt.setInt(14, Total);
            exito = smt.executeUpdate() > 0;
            smt.close();
            con.close();
            
        } catch (Exception e) {
            System.out.println("Error: " + e.getMessage());
        }
        return exito;
    }
}
