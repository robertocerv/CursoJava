
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP con expresiones</title>
    </head>
    <body>
        <h1>jsp con expresiones</h1>
        <br>
        Concatenacion: <%= "Saludos"+ " " + "JSP" %>
        <br>
        Operacion  matematica: <%= 2*3/2 %> 
        <br>
        Sesson id: <%= session.getId() %>
        <br>
        <br>
        <<a href="index.html">Regresar</a>
    </body>
</html>
