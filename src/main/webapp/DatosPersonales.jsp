<%@ page import="jakarta.servlet.http.HttpSession" %>
<<<<<<< HEAD
=======
<%@ page import="java.util.Date" %>
<%@ page import="java.io.PrintWriter" %>
>>>>>>> 5ddb9bd (12-11-2021)
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>DatosPersonales</title>
</head>
<body>
<<<<<<< HEAD
<%
    HttpSession sesion = request.getSession(true);
=======

<%
    HttpSession sesion = request.getSession(true);
    String[] genero = {"Hombre", "Mujer", "Otro"};
    String[] relacion = {"Pareja", "Hijos"};
    String[] nacionalidades = {"Española", "Francesa", "Italiana", "Portuguesa"};
    String Nombre = " ";
    String Apellidos = " ";
    String FechaNacimiento = " ";

>>>>>>> 5ddb9bd (12-11-2021)
%>

<a href="DatosPersonales.jsp">
    <input type="button" value="1"/>
</a>
<a href="DatosProfesionales.jsp">
    <input type="button" value="2"/>
</a>
<<<<<<< HEAD
<a href="DatosBancarios.jsp">
=======
<a href="DatosBancarios.jsp">
>>>>>>> 5ddb9bd (12-11-2021)
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
<<<<<<< HEAD
            <input type="text" name="Nombre" size="30" placeholder="Nombre" value="<%String Nombre = (String)sesion.getAttribute("Nombre"); out.println(Nombre);%>" required>
        </label>
        <label>Apellidos
            <input type="text" name="Apellidos" size="30" placeholder="apellidos" value="<%String Apellidos = (String)sesion.getAttribute("Apellidos"); out.println(Apellidos);%>" required>
        </label>
        <br/><br/>
        <label>fecha de nacimiento
            <input type="date" name="FechaNacimiento" value="<%String FechaNacimiento = (String)sesion.getAttribute("FechaNacimiento"); out.println(FechaNacimiento);%>" size="80"  required>
=======
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
>>>>>>> 5ddb9bd (12-11-2021)
        </label>
        <br/>
        <br/>
        Genero ->
<<<<<<< HEAD
        <label>Mujer
            <input type="radio" name="Genero" value="Mujer"/>
        </label>
        <label>Hombre
            <input type="radio" name="Genero" value="Hombre"/>
        </label>
        <label> Otro
            <input type="radio" name="Genero" value="Otro"/>
        </label>
        <br/><br/>
        <label>Casado o Pareja de Hecho
            <input type="checkbox" name="Relacion" value="Pareja">
        </label>
        <label> Hijos
            <input type="checkbox" name="Relacion" value="Hijos">
        </label>
        <br/><br/>
        Nacionalidades
        <select name="Nacionalidad">
            <option>Española</option>
            <option>Francesa</option>
            <option>Italiana</option>
            <option>Portuguesa</option>
        </select>
=======

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

>>>>>>> 5ddb9bd (12-11-2021)
        <br/><br/>
        <input type="submit" value="Grabar informacion e ir al paso 2-Datos Profesionales"/>
    </form>
</fieldset>
</body>
</html>
