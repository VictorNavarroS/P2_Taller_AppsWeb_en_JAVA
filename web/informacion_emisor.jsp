<%-- 
    Document   : informacion_emisor
    Created on : 02-sep-2017, 9:20:26
    Author     : TinTO
--%>

<%@page import="examen.library.ResumenEnvio"%>
<%@page import="java.util.ArrayList"%>
<%@page import="examen.library.Regiones"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Informacion de Emisor</title>
        <style>
            table{   
                text-align: center;
                margin-left: auto;
                margin-right: auto;
            }
            td{
                text-align: right;
            }
            form{
                border: 2px solid black;
                border-radius: 2px;
                margin-left: auto;
                margin-right: auto;
                width: 500px;
                text-align: center;
            }
            input.enviar1{

                margin-left: 45%;
            }
        </style>
    </head>
    <body>
        <%
            String descripcion = request.getParameter("descripcion");
            int peso = Integer.parseInt(request.getParameter("peso"));
            int region = Integer.parseInt(request.getParameter("region"));
            Regiones ob = new Regiones();
            ArrayList<Regiones> lista = ob.getLista();
            for (int i = 0; i < lista.size(); i++) {
                Regiones aux = lista.get(i);
                if (aux.getId() == region) {
                    session.setAttribute("regionelegida", aux);
                }
            }
            ResumenEnvio res = new ResumenEnvio();
            res.setDescripcion(descripcion);
            res.setPeso(peso);
            res.setRegion(region);
            session.setAttribute("resumen", res);

        %>
        <form action="informacion_receptor.jsp" method="post">
            <h3><i>Informacion Emisor</i></h3>
            <table>
                <tr><td>Rut :</td><td><input type="text" name="rutE"/></td></tr>
                <tr><td>Nombre : </td><td><input type="text" name="nombreE"/></td></tr>
                <tr><td>Apellidos : </td><td><input type="text" name="apellidosE"/></td></tr>
                <tr><td>Direccion : </td><td><input type="text" name="direccionE"/></td></tr>
                <tr><td>Telefono : </td><td><input type="text" name="telefonoE"/></td></tr>
            </table>
            <br/>
            <input class="enviar1" type="submit" name="enviar1" value="Siguiente"/>
            <br/>
            <br/>
        </form>
    </body>
</html>
