<%@ page import="java.io.PrintWriter" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="jakarta.servlet.http.HttpSession" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Datos Profesionales</title>
</head>
<body>
<%
    HttpSession sesion = request.getSession(true);
    String[] departamentos = {"Marketing", "finanzas", "invvestigacion"};
    String Salario = " ";
%>
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
<form name="Formulario_profesional" action="DatosProfesionales" method="post">
    <fieldset>Datos Profesionales
        <hr/>

        <%
            out.println("<select name=\"Espec\">");
            for (String departamento : departamentos) {
                if (departamento.equals(sesion.getAttribute("Espec"))) {
                    out.println("<option selected value=\"" + departamento + "\">" + departamento + "</option>");
                } else {
                    out.println("<option value=\"" + departamento + "\">" + departamento + "</option>");
                }
            }
            out.println("</select>");
        %>
        <br/><br/>
        <input name="Salario" type="number" value="<%if (sesion.getAttribute("Salario") != null){
            out.println(sesion.getAttribute("Salario"));
        }else {
            out.println(Salario);
        }
        %>" step="0.01"/>

        <label>Salario
        </label>

        <br/><br/>
        Comentarios
        <textarea name="AreaText"></textarea>
        <br/><br/>
        <input type="submit" value="Grabar informacion e ir al paso 3 - Datos bancarios"/>
    </fieldset>
</form>


</body>
</html>
