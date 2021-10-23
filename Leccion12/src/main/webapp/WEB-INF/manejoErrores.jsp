<La siguiente directiva asigna este  jsp como manejo de errores y crea un enlace al objeto implicito exception
    importante ponerla en true--%>
<%@page isErrorPage="true" %>
<%-- se realizara un import de java.io.PrintWriter para enviar el mensaje de error --%>
<%@page import="java.io.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Manejo de Excepciones</title>
    </head>
    <body>
        <h1>ERROR</h1>
        <BR>
        ocurrio una excepcion: <%= exception.getMessage() %>
        <BR>
        <TEXTAREA cols="30" rows="5">
            <% exception.printStackTrace(new PrintWriter(out)); %>
        </TEXTAREA>
    </body>
</html>
