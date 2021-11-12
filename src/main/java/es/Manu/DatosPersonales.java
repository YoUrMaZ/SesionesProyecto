package es.Manu;


import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/DatosPersonales")
public class DatosPersonales extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

            HttpSession sesion = request.getSession(true);

                String Nombre = request.getParameter("Nombre");
                sesion.setAttribute("Nombre", Nombre);

                String Apellidos = request.getParameter("Apellidos");
                sesion.setAttribute("Apellidos", Apellidos);

                String FechaNacimiento = request.getParameter("FechaNacimiento");
                sesion.setAttribute("FechaNacimiento", FechaNacimiento);

                String Genero = request.getParameter("Genero");
                sesion.setAttribute("Genero", Genero);

                String Relacion = request.getParameter("Relacion");
                sesion.setAttribute("Relacion", Relacion);

                String Nacionalidad = request.getParameter("Nacionalidad");
                sesion.setAttribute("Nacionalidad", Nacionalidad);

                String rutaContext = request.getContextPath();
                String destino = "/DatosProfesionales.jsp";
                response.sendRedirect(rutaContext + destino);

    }
}

