
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>EL y variables implicitas</title>
    </head>
    <body>
        <h1>EL y variables implicitas</h1>
        <ul>
            <li>Nombre de la aplicacion ${pageContext.request.contextPath}</li> <%-- contextPath se refiere a 
            llamar a getContextPath, ya que en los javabeans no es necesario escribir
            el get, el hace una conversion implicita todo en minuscula y eliminando la palabra get--%>
            <li>navegador ${header["user-Agent"]}</li>
            <li>id sesion: ${cookie.JSESSIONID.value}</li>
            <li>Web Server: ${pageContext.servletContext.serverInfo}</li>
            <li>Valor parametro: ${param.usuario}</li> <!-- el parametro se paso a traves de la URL (do get) -->
            <li>Valor parametro: ${param["usuario"]}</li> <!-- igual a la de arriba con la otra sintaxis -->
        </ul>
        <br/>
        <br/>
        <a href="index.jsp">regresar</a>
    </body>
</html>
