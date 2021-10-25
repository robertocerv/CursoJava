<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Despliegue de variables </title>
    </head>
    <body>
        <h1>Despliegue de variables </h1>
        Variables en alcance de request: ${mensaje}
        <br/>
        <br/>
        Variable ne almacen de sesion:
        <br/>
        <--<!-- usar los nombres del objeto siempre en minuscula -->
        Rectangulo: base ${rectangulo.base}, altura ${rectangulo.altura}, area: ${rectangulo.area}
        <br/>
        <br/>
        <a href="${pageContext.request.contextPath}/index.jsp">Regresar</a>
    </body>
</html>
