package examen.library;

import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class Regiones {
    
private int id;
private String nombreRegion;
private int precioEnvio;

    public int getPrecioEnvio() {
        return precioEnvio;
    }

    public void setPrecioEnvio(int precioEnvio) {
        this.precioEnvio = precioEnvio;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNombreRegion() {
        return nombreRegion;
    }

    public void setNombreRegion(String nombreRegion) {
        this.nombreRegion = nombreRegion;
    }
    
     public ArrayList<Regiones> getLista() {
        ArrayList<Regiones> lista = new ArrayList<>();
        try {
            Class.forName("com.mysql.jdbc.Driver");
            String strCon = "jdbc:mysql://localhost/Prueba2";
            Connection con = DriverManager.getConnection(strCon, "root", "tinto666");
            String sql = "select * from regiones ";
            PreparedStatement smt = con.prepareStatement(sql);
            ResultSet res = smt.executeQuery(sql);
            while (res.next()) {
                Regiones ob = new Regiones();
                ob.setId(res.getInt("id"));
                ob.setNombreRegion(res.getString("nombre"));
                ob.setPrecioEnvio(res.getInt("valor"));
                lista.add(ob);
            }
            res.close();
            smt.close();
            con.close();

        } catch (Exception ex) {
            System.out.println("Error: " + ex.getMessage());
        }
        return lista;
    }
}
