<%@ page import="java.io.PrintWriter" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="jakarta.servlet.http.HttpSession" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    HttpSession sesion = request.getSession(true);
    String Cuenta = " ";
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

<form name="Formulario_bancario" action="datosBancarios" method="post">
    <fieldset>Datos Bancarios<hr/>
    <label>Cuenta corriente
        <input type="text" name="Cuenta" value="<%if (sesion.getAttribute("Cuenta") != null){
                out.println(sesion.getAttribute("Cuenta"));
            }else {
                out.println(Cuenta);
            }
                %>" maxlength="24" size="70"/>
    </label>
    <br/><br/>
        <input type="submit" value="Grabar informacion e ir al resumen final"/>
    </fieldset>
</form>


</body>
</html>
