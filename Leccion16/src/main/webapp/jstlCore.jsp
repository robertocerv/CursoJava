<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>JSTL CORE</title>
    </head>
    
        <h1>JSTL CORE</h1> 
        <%-- Manipulacion de variables --%>
        <%-- Definimos la variable nombre --%>
        <c:set var="nombre" value="Ernesto"/>
        <%-- Desplegamos el valor de la variable nombre con expression language (EL) --%>
        Variable nombre: <c:out value="${nombre}"/>
        <br/>
        variable con codigo html:
        <c:out value="<h4>Hola</h4>" escapeXml="false"/> <%-- escapeXml="false" fuerza a aplicar las etiquetas html --%>
        <br/>
        <%-- uso de if --%>
        <c:set var="bandera" value="true" />
        <c:if   test="${bandera}">
            La bandera es verdadera
        </c:if>
        <%-- uso de switch --%>
        <br/>
        <c:if test="${param.opcion!=null}">
            <c:choose>
                <c:when test="${param.opcion==1}">
                <br/>
                Opcion 1 seleccionada
                </c:when>
                <c:when test="${param.opcion==2}">
                <br/>
                Opcion 2 seleccionada
                </c:when>
                <c:otherwise>
                <br/>
                Opcion desconocida ${param.opcion}
                </c:otherwise>
            </c:choose>
        </c:if>
        <br/>
        <% 
            String nombres[] ={"Claudia","Pedro","Juan"};
            request.setAttribute("nombres", nombres);
        %>
        <br/>
        Lista de nombre:
        <br/>
        <ul>
            <c:forEach var="persona" items="${nombres}">                
                <li>Nombre: ${persona}</li>
            </c:forEach>
        </ul>
        <br/>
        <a href="index.jsp">Regresar</a>
</html>
