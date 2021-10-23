<%-- Se realiza un import de la clase creada y de la clase java  --%>
<%@page import="utilerias.Conversiones, java.util.Date" %>
<%-- Se le indica que se va  a devolver un archivo tipo excel  --%>
<%@page contentType="application/vnd.ms-excel" %>
<%-- la siguiente directiva redirige a la pagina de errores cuando se produce un error --%>
<%@page errorPage="/WEB-INF/manejoErrores.jsp" %>

<%-- se indica el nombre  del archivo al descargar --%>
<%
    String nombreArchivo="reporte.xls";
    response.setHeader("Content-Disposition","inline;filename="+nombreArchivo);
%>
<!DOCTYPE html>
<html>
    <head>
        <title>Reporte Excel</title>
    </head>
    <body>
        <h1>Reporte Excel</h1>
        <br>
        <table border="1">
            <tr>
                <th>Curso</th>
                <th>Descripcion</th>
                <th>Fecha</th>
            </tr>
            <tr>
                <%-- como en el import se llamo a la clase conversiones, se puede usar su constructor y todas
                los metodos que contenga--%>
                <th>1. Fundamentos de Java</th>
                <th>Aprenderemos la sintaxis basica de Java</th>
                <th><%= Conversiones.format(new Date()) %></th>
            </tr>
            <tr>
                <%-- Se realiza una sobrecarga para que la pagina falle --%>
                <th>2. Programacion de Java</th>
                <th>Practica de conceptos POO</th>
                <th><%= Conversiones.format("500") %></th>
            </tr>
        </table>
    </body>
</html>
