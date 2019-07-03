<%-- 
    Document   : baja
    Created on : 02-jul-2019, 19:51:29
    Author     : eibar
--%>

<%@page import="Model.Persona"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Baja</h1><br/>
        
        <form method="POST" action="BuscaServlet">
            Introduce el ID a buscar: <input type="number" name="id" placeholder="Buscar..." required>
            <input type="submit" value="Buscar">
        </form>
        <br />
        
        <% 
            if(request.getAttribute("nombre") == null) {
                out.print("\nNo se han encontrado resultados.");
            } else {
        %>
        
        <br/>
        <form method="POST" action="BorraServlet?id=<%= request.getAttribute("id") %>" onsubmit="return confirm('¿Estás Seguro?');">
            Nombre: <input type="text" name="nombre" value="<%= request.getAttribute("nombre") %>" readonly><br/><br/>
            Apellido Paterno: <input type="text" name="apaterno" value="<%= request.getAttribute("apaterno") %>" readonly><br/><br/>
            Apellido Materno: <input type="text" name="amaterno" value="<%= request.getAttribute("amaterno") %>" readonly><br/><br/>
            Fecha de Nacimiento: <input type="text" name="fechanac" value="<%= request.getAttribute("fechanac") %>" readonly><br/><br/>
            Percepción Económica: <input type="number" name="percepcion" value="<%= request.getAttribute("percepcion") %>" readonly><br/><br/><br/>
            
            <input type="submit" value="Borrar">
        </form>
            
        <%
            }
        %>
        
    </body>
</html>
