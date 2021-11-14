<%@ page import="jakarta.servlet.http.HttpSession" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>DatosPersonales</title>
</head>
<%
    HttpSession sesion = request.getSession(true);
    String[] genero = {"Hombre", "Mujer", "Otro"};
    String[] relacion = {"Pareja", "Hijos"};
    String[] nacionalidades = {"Española", "Francesa", "Italiana", "Portuguesa"};
    String Nombre = " ";
    String Apellidos = " ";
    String FechaNacimiento = " ";
%>
<body>
<a href="DatosPersonales.jsp">
    <input type="button" value="1"/>
</a>
<a href="DatosProfesionales.jsp">
    <input type="button" value="2"/>
</a>
<a href="DatosBancarios.jsp">
    <input type="button" value="3"/>
</a>
<a href="Resumen.jsp">
    <input type="button" value="Resumen"/>
</a>

<br/><br/>

<fieldset>Datos personales
    <hr/>
    <form name="Formulario_datos" method="post" action="DatosPersonales">
        <label>
            <input type="text" name="Nombre" size="30" placeholder="Nombre" value="<%if (sesion.getAttribute("Nombre") != null){
                out.println(sesion.getAttribute("Nombre"));
            }else {
                out.println(Nombre);
            }
                %>" required>

        </label>
        <label>Apellidos
            <input type="text" name="Apellidos" size="30" placeholder="apellidos" value="<%if (sesion.getAttribute("Apellidos") != null){
                out.println(sesion.getAttribute("Apellidos"));
            }else {
                out.println(Apellidos);
            }
                %>" required>
        </label>
        <br/><br/>
        <label>fecha de nacimiento
            <input type="date" name="FechaNacimiento" value="<%if (sesion.getAttribute("FechaNacimiento") != null){
                out.println(sesion.getAttribute("FechaNacimiento"));
            }else {
                out.println(FechaNacimiento);
            }
                 %>" size="80" required>
            <br/><br/>
                <%
            for (String generos : genero) {
                if (generos.equals(sesion.getAttribute("Genero"))) {
                    out.println("<label> " + generos);
                    out.println("<input type=\"radio\" name=\"Genero\" value=\"" + generos + "\" checked/>");
                    out.println("</label>");
                } else {
                    out.println("<label> " + generos);
                    out.println("<input type=\"radio\" name=\"Genero\" value=\"" + generos + "\" />");
                    out.println("</label>");
                }
            }
        %>
        <br/><br/>
        <%
            for (String datosParejas : relacion) {
                if (datosParejas.equals(sesion.getAttribute("Relacion"))) {
                    out.println("<label> " + datosParejas);
                    out.println(" <input type=\"checkbox\" name=\"Relacion\" value=\"" + datosParejas + "\" checked/>");
                    out.println("</label>");
                } else {
                    out.println("<label> " + datosParejas);
                    out.println("<input type=\"checkbox\" name=\"Relacion\" value=\"" + datosParejas + "\" />");
                    out.println("</label>");
                }
            }
        %>
        <br/><br/>
        <%
            out.println("<select name=\"Nacionalidad\">");
            for (String datosNacionalidades : nacionalidades) {
                if (datosNacionalidades.equals(sesion.getAttribute("Nacionalidad"))) {
                    out.println("<option selected value=\"" +datosNacionalidades +"\">" + datosNacionalidades + "</option>");
                } else {
                    out.println("<option value=\"" + datosNacionalidades + "\">" + datosNacionalidades + "</option>");
                }
            }
            out.println("</select>");
        %>
        <br/><br/>
        <input type="submit" value="Grabar informacion e ir al paso 2-Datos Profesionales"/>
    </form>
</fieldset>
</body>
</html>