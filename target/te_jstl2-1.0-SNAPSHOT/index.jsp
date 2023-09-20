<%@page import="com.emergentes.modelo.Persona"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSTL2</title>
    </head>
    <body>
        <%
            if (session.getAttribute("listaper") == null) {
                ArrayList<Persona> lista = new ArrayList<Persona>();
                // Agregamos lista a la coleccion
                lista.add(new Persona(1, "Judith Huallpa", "60558148", "Judith@gmail.com"));
                lista.add(new Persona(2, "Juan Diaz", "66467903", "juan1@gmail.com"));
                lista.add(new Persona(3, "Ricardo Perez", "60453403", "ricky78@gmail.com"));
                //colocamos la lista como un atributo de session
                session.setAttribute("listaper", lista);

            }
        %>


        <h1>Ejemplos de JSTL Core</h1>
        <ul>
            <li><a href="jstl_if.jsp">Ejemplo del if</a></li>
            <li><a href="jstl_choose.jsp">Provando el choose</a></li>
            <li><a href="jstl_foreach.jsp">Recoriendo una coleccion con foreach</a></li>
        </ul>
    </body>
</html>