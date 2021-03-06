<!DOCTYPE html>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
        <script src="https://kit.fontawesome.com/4858b2e4d2.js" crossorigin="anonymous"></script>

        <title>Control Clientes</title>
    </head>
    <body>
        <%--Cabecero--%>
        <jsp:include page="/WEB-INF/paginas/comunes/cabecero.jsp"/>
        <%--Botones de Naviegación--%>
        <jsp:include page="/WEB-INF/paginas/comunes/BotonesNavegacion.jsp"/>

        <%--Listado Clientes--%>
        <jsp:include page="/WEB-INF/paginas/cliente/listadoClientes.jsp"/>

        <%--Pie de pagina--%>
        <jsp:include page="/WEB-INF/paginas/comunes/piePagina.jsp"/>


        <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>


    </body>
</html>
