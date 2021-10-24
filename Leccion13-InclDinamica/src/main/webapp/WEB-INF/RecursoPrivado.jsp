<% 
    String colorFondo=request.getParameter("colorFondo");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    </head>
    <body bgcolor='<%= colorFondo %>' >
        texto desde recurso privado
    </body>
</html>
