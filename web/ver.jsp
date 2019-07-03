<%-- 
    Document   : ver
    Created on : 02-jul-2019, 20:45:35
    Author     : eibar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Ver</h1><br/>
        
        <form action="#">
            Nombre: <input type="text" name="nombre" value="<%= request.getAttribute("nombre") %>" readonly><br/><br/>
            Apellido Paterno: <input type="text" name="apaterno" value="<%= request.getAttribute("apaterno") %>" readonly><br/><br/>
            Apellido Materno: <input type="text" name="amaterno" value="<%= request.getAttribute("amaterno") %>" readonly><br/><br/>
        </form>
    </body>
</html>
