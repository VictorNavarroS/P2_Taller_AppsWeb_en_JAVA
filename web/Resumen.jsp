<%-- 
    Document   : Resumen
    Created on : 02-sep-2017, 9:37:48
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
            th{
                border: 2px solid black;
                text-align: center;
            }
            td{
                border: 1px dotted black;
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
        <%
            String rutr = request.getParameter("rutR");
            String nombrer = request.getParameter("nombreR");
            String apellidosr = request.getParameter("apellidosR");
            String direccionr = request.getParameter("direccionR");
            int telefonor = Integer.parseInt(request.getParameter("telefonoR"));
            ResumenEnvio res = (ResumenEnvio) session.getAttribute("resumen");
            res.setRutReceptor(rutr);
            res.setNombreReceptor(nombrer);
            res.setApellidosReceptor(apellidosr);
            res.setDireccionReceptor(direccionr);
            res.setTelefonoReceptor(telefonor);
            session.setAttribute("resumen", res);

        %>
        <script>
            function guardar() {
                ResumenEnvio guardar=new ResumenEnvio();
            if (guardar.guardar(user,reg)>0){
            alert("Me haz dado un click");
            } else{
            alert("click");
            }}
        </script>
    </head>
    <body>
        <form >
            <h3><i>Resumen</i></h3>
            <table>            
                <tr ><th colspan="2">Informacion del Envio</th></tr>
                        <% ResumenEnvio user = (ResumenEnvio) session.getAttribute("resumen");
                            Regiones reg = (Regiones) session.getAttribute("regionelegida");
                            out.println("<tr><td> Descripcion : </td><td>" + user.getDescripcion() + "</td></tr>");
                            out.println("<tr><td> Peso : </td><td>" + user.getPeso() + "</td></tr>");
                            out.println("<tr><td> Region : </td><td>" + reg.getNombreRegion() + "</td></tr>");
                        %>             
                <tr><th colspan="2">Informacion de Emisor</th></tr>
                        <%
                            out.println("<tr><td> Rut: </td><td>" + user.getRutEmisor() + "</td></tr>");
                            out.println("<tr><td> Nombre : </td><td>" + user.getNombreEmisor() + "</td></tr>");
                            out.println("<tr><td> Apellidos : </td><td>" + user.getApellidosEmisor() + "</td></tr>");
                            out.println("<tr><td> Direccion : </td><td>" + user.getDireccionEmisor() + "</td></tr>");
                            out.println("<tr><td> Telefono : </td><td>" + user.getTelefonoEmisor() + "</td></tr>");
                        %>             
                <tr><th colspan="2">Informacion de Receptor</th></tr>
                        <%  out.println("<tr><td> Rut: </td><td>" + user.getRutReceptor() + "</td></tr>");
                            out.println("<tr><td> Nombre : </td><td>" + user.getNombreReceptor() + "</td></tr>");
                            out.println("<tr><td> Apellidos : </td><td>" + user.getApellidosReceptor() + "</td></tr>");
                            out.println("<tr><td> Direccion : </td><td>" + user.getDireccionReceptor() + "</td></tr>");
                            out.println("<tr><td> Telefono : </td><td>" + user.getTelefonoReceptor() + "</td></tr>");
                            out.println("<tr></tr>");
                            out.println("<br/>");
                            int total = (reg.getPrecioEnvio() * user.getPeso());
                            out.println("<tr><td> TOTAL : </td><td>" + total + "</td></tr>");
                            user.setTotal(total);
                        %>

            </table>

            <br/>
            <input class="enviar1" type="button" onclick='guardar()' name="enviar1" value="Guardar"/>
            <br/>
            <br/>
        </form>
    </body>
</html>
