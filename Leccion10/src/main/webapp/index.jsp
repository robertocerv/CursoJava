<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Hola Mundo JSP</title>
    </head>
    
        <h1>Hola Mundo JSP</h1>
        <ul>
            <li> <% out.print("Hola Mundo con scriplets"); %> </li>
            <li>${"Hola mundo con expression language (EL)"}</li>
            <li><%= "Hola Mundo con Expresiones" %></li>
            <li><c:out value="Hola Mundo con JSTL"/></li>
        </ul>

    
</html>
