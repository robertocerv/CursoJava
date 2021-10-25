<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Ejemplo MVC 2</title>
    </head>
    <body>
        <h1>Ejemplo MVC 2</h1>
        <br/>        
        <div style="color: red">${mensaje}</div>
        <br/>
        <a href="${pageContext.request.contextPath}/ServletControlador">Link al controlador sin parametros</a>
        <br/>
        <br/>
        <a href="${pageContext.request.contextPath}/ServletControlador?accion=agregaVariables">Link al controlado para agregar variables</a>
        <br/>
        <br/>
        <a href="${pageContext.request.contextPath}/ServletControlador?accion=listarVariables">Link al controlado para listar variables</a>
    </body>
</html>