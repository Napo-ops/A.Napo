<%-- 
    Document   : login
    Created on : 25/04/2020, 07:54:03 PM
    Author     : Juan Carlos
--%>

<%  Boolean respuesta = (Boolean) request.getAttribute("respuesta");
    String username = (String) session.getAttribute("username");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        <%=respuesta%>
        <br>
        <%=username%>
        <h1>COMPRAR</h1>

        <form method="post" action="boleta.jsp">
            <label>NombreP: </label>
            <select name="producto">
                <option value="tv">TV</option>
                <option value="radio">Radio</option>
                <option value="tostadora">Tostadora</option>

            </select>
            <br>
            <br>

            <label>Precio: </label>
              <select name="precio">
                <option value="800">800</option>
                <option value="250">250</option>
                <option value="100">100</option>

            </select>
            <br>
            <br>


            <label>Cantidad: </label>
            <input type="text" name="cantidad">
            <br>
            <br>

            <label>codigoP: </label>
             <select name="codigo">
                <option value="trentino">TRENTINO</option>
                <option value="examenparcial">EXAMEN PARCIAL</option>
                <option value="pandemia">PANDEMIA</option>

            </select>
            <br>
            <br>
            <input type="submit" name="boton" value="Comprar">
        </form>


    </body>
</html>
