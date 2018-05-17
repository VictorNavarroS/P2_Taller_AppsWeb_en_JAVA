<%-- 
    Document   : informacion_receptor
    Created on : 02-sep-2017, 9:20:39
    Author     : TinTO
--%>

<%@page import="examen.library.ResumenEnvio"%>
<%@page import="examen.library.Regiones"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>   
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
           String rute= request.getParameter("rutE");
           String nombree= request.getParameter("nombreE");
           String apellidose= request.getParameter("apellidosE");
           String direccione= request.getParameter("direccionE");
           int telefonoe= Integer.parseInt(request.getParameter("telefonoE"));
            ResumenEnvio res = (ResumenEnvio) session.getAttribute("resumen");
            res.setRutEmisor(rute);
            res.setNombreEmisor(nombree);
            res.setApellidosEmisor(apellidose);
            res.setDireccionEmisor(direccione);
            res.setTelefonoEmisor(telefonoe);
            session.setAttribute("resumen", res);
            
        %>
        <form action="Resumen.jsp" method="post">
            <h3><i>Informacion Receptor</i></h3>
            <table>
                <tr><td>Rut :</td><td><input type="text" name="rutR"/></td></tr>
                <tr><td>Nombre : </td><td><input type="text" name="nombreR"/></td></tr>
                <tr><td>Apellidos : </td><td><input type="text" name="apellidosR"/></td></tr>
                <tr><td>Direccion : </td><td><input type="text" name="direccionR"/></td></tr>
                <tr><td>Telefono : </td><td><input type="text" name="telefonoR"/></td></tr>
            </table>
            <br/>
            <input class="enviar1" type="submit" name="enviar1" value="Siguiente"/>
            <br/>
            <br/>
        </form>
    </body>
</html>
