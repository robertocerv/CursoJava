
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Ejemplo Inclusion Dinamica</title>
    </head>
    <body>
        <h1>Ejemplo Inclusion Dinamica</h1>
        <br> 
        <jsp:include page="paginas/RecursoPublico.jsp"/>
        <br> 
        <jsp:include page="WEB-INF/RecursoPrivado.jsp"> 
            <jsp:param name="colorFondo" value="blue"/>
        </jsp:include>
        <br> 
        <br> 
        <br> 
    </body>
</html>
