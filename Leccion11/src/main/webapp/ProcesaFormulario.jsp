<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Proceso formulario</title>
    </head>
    <body>
        <h1>Resultado de procesa el formulario</h1>
        Usuario: <%= request.getParameter("usuario") %>
        <br>
        Password: <%= request.getParameter("password") %>
        <br>
        <<a href="index.html">Regresar</a>               
                
    </body>
</html>
