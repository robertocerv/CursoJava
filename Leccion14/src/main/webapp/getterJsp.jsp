<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Leer datos  rectangulo</title>
    </head>
    <body>
        <h1>Leer datos  rectangulo</h1>
        <jsp:useBean id="rectangulo" class="beans.Rectangulo" scope="session" />
        <br/>
        Valor Base <jsp:getProperty name="rectangulo" property="base" />
        <br/>
        Valor Altura <jsp:getProperty name="rectangulo" property="altura" />
        <br/>
        Valor Area <jsp:getProperty name="rectangulo" property="area" />
        <br/>
        <a href="index.jsp">Regresar al inicio</a>

    </body>
</html>
