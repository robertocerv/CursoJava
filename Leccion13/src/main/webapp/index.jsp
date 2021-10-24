
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Ejemplo inclusion estatica</title>
    </head>
    <body>
        <h1>Ejemplo inclusion estatica</h1>
        <br>
        <<ul>
            <li> <%@include file="paginas/noticias1.html" %> </li>
            <li> <%@include file="paginas/noticias2.jsp" %> </li>
        </ul>
        <br>
        <br>
        <br>
    </body>
</html>
