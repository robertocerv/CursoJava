<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP con Scriplets</title>
    </head>
    
        <h1>JSP con Scriplets</h1>
        <%-- Scriplet para enviar información al navegador --%> 
        <%
            out.print("Saludos desde un scriptlet");
        %>
        <%-- Scriplet manipulas los objetos implicitos --%> 
        <%
            String nombreAplicacion=request.getContextPath();
            out.print("nombre de la aplicacion "+nombreAplicacion);
        %>
        <br>
        <%
            if(session !=null && session.isNew()){
        %>
            La sesion si es nueva
        <%
            } else if(session !=null){
        %>
            La sesion No es nueva
        <%
            }
        %>
    </body>
</html>
