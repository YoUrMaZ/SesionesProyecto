<%@ page import="jakarta.servlet.http.HttpSession" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<<<<<<< HEAD
<a href="DatosPersonales.jsp">
    <input type="button" value="1"/>
</a>
<a href="DatosProfesionales.jsp">
    <input type="button" value="2"/>
</a>
<a href="DatosBancarios.jsp">
=======
<a href="DatosPersonales.jsp">
    <input type="button" value="1"/>
</a>
<a href="DatosProfesionales.jsp">
    <input type="button" value="2"/>
</a>
<a href="DatosBancarios.jsp">
>>>>>>> 5ddb9bd (12-11-2021)
    <input type="button" value="3"/>
</a>
<a href="Resumen.jsp">
    <input type="button" value="Resumen"/>
</a>
<br/><br/>
<%
    HttpSession sesion = request.getSession(true);

%>
<form name="Resumen" action="Resumen">
    <fieldset>Datos personales<hr/>
    <p>Nombre: <%String Nombre = (String)sesion.getAttribute("Nombre"); out.println(Nombre);%> </p>

    <p>Apellidos: <%String Apellidos = (String)sesion.getAttribute("Apellidos"); out.println(Apellidos);%></p>

    <p>Fecha de nacimiento: <%String FechaNacimiento = (String)sesion.getAttribute("FechaNacimiento"); out.println(FechaNacimiento);%></p>

    <p>Genero: <%String Genero = (String) sesion.getAttribute("Genero"); out.println(Genero);%> </p>

    <p>Relacion: <%String Relacion = (String) sesion.getAttribute("Relacion"); out.println(Relacion);%> </p>

    <p>Nacionalidad: <%String Nacionalidad = (String) sesion.getAttribute("Nacionalidad"); out.println(Nacionalidad);%> </p>
    </fieldset>
    <br/><br/>
    <fieldset>Datos Profesionales<hr/>

    <p>Espec: <%String Espec = (String) sesion.getAttribute("Espec"); out.println(Espec);%> </p>

    <p>Salario: <%String Salario = (String) sesion.getAttribute("Salario"); out.println(Salario);%> </p>

    <p>AreaText: <%String AreaText = (String) sesion.getAttribute("AreaText"); out.println(AreaText);%></p>
    </fieldset>
    <br/><br/>
    <fieldset>Datos Bancarios<hr/>
        <p>Cuenta: <%String Cuenta = (String) sesion.getAttribute("Cuenta"); out.println(Cuenta);%> </p>
    </fieldset>
</form>
</body>
</html>
