<%!
// Declaramos una variable asi como su metodo get
private String usuario ="Alberto";

public String getUsuario(){
    return this.usuario;
}
//Declaramos un contador de visitas
private int contadorVisitas=1;    
    
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Uso Declaraciones con JSP</title>
    </head>
    <body>
        <h1>Uso Declaraciones con JSP</h1>
        Valor usuario por medio del atributo: <%= this.usuario %>
        <br>
        Valor usuario por medio del metodo: <%= this.getUsuario() %>
        <br>
        contador Visitas: <%= this.contadorVisitas++ %>
        
    </body>
</html>
