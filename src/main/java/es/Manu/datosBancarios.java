package es.Manu;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;


@WebServlet("/datosBancarios")
public class datosBancarios extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession sesion = request.getSession(true);

        String Cuenta = request.getParameter("Cuenta");
        sesion.setAttribute("Cuenta", Cuenta);

        String rutaContext = request.getContextPath();
        String destino = "/Resumen.jsp";
        response.sendRedirect(rutaContext + destino);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }
}


