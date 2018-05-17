<%-- 
    Document   : index
    Created on : 02-sep-2017, 9:00:14
    Author     : TinTO
--%>

<%@page import="java.util.ArrayList"%>
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
            td.selector{
                text-align: left;
            }

        </style>
    </head>
    <body>

        <form action="informacion_emisor.jsp" method="post">
            <h3><i>Informacion Del Envio</i></h3>
            <table>
                <tr><td>Descripcion :</td><td><input type="text" name="descripcion"/></td></tr>
                <tr><td>Peso : </td><td><input type="text" name="peso"/></td></tr>
                <tr><td> Region a Enviar :</td><td class='selector'><select name="region" >  
                            <%
                                Regiones ob = new Regiones();
                                ArrayList<Regiones> lista = ob.getLista();
                                for (int i = 0; i < lista.size(); i++) {
                                    Regiones aux = lista.get(i);
                                    out.println("<option value='" + aux.getId() + "'>" + aux.getNombreRegion() + "</option>");
                                }
                            %>
                        </select><br/></td></tr>

            </table>
            <br/>
            <input class="enviar1" type="submit" name="enviar1" value="Siguiente"/>
            <br/>
            <br/>
        </form>
    </body>
</html>
