<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Alcance de las variables</title>
    </head>
    <body>
        <h1>Alcance de las variables</h1>
        
        <br/>
        variable request:
        Base: ${rectanguloRequest.base}
        Altura: ${rectanguloRequest.altura}
        Area: ${rectanguloRequest.area}
        <br/>
        <br/>
        variable en el scope de sesion
        Base: ${rectanguloSesion.base}
        Altura: ${rectanguloSesion.altura}
        Area: ${rectanguloSesion.area}
        <br/>
        <br/>
        variable en el scope de aplicacion
        Base: ${rectanguloAplicacion.base}
        Altura: ${rectanguloAplicacion.altura}
        Area: ${rectanguloAplicacion.area}
        <br/>
        <br/>
        <a href="${pageContext.request.contextPath}/index.jsp">Regresar</a>
    </body>
</html>
