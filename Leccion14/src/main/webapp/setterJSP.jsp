<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Modificar rectangulo</title>
    </head>
    <body>
        <h1>Modificar rectangulo</h1>
        <jsp:useBean id="rectangulo" class="beans.Rectangulo" scope="session" />
        Modificar atributos
        <br/>
        <br/>
        <%
            int baseValor=5;
            int alturaValor=10;
        %>    
        <jsp:setProperty name="rectangulo" property="base" value="<%=baseValor %>" />
        <jsp:setProperty name="rectangulo" property="altura" value="<%=alturaValor %>" />
        <br/>
        Nuevo valor de base: <%=baseValor %>
        <br/>
        Nuevo Valor altura <%=alturaValor %>
        <br/>
        <a href="index.jsp">Regresar al inicio</a>
    </body>
</html>
