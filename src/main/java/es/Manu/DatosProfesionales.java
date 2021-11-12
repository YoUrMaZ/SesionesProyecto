package es.Manu;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/DatosProfesionales")
public class DatosProfesionales extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession sesion = request.getSession(true);

        String Espec = request.getParameter("Espec");
        sesion.setAttribute("Espec", Espec);

        String Salario = request.getParameter("Salario");
        sesion.setAttribute("Salario", Salario);

        String AreaText = request.getParameter("AreaText");
        sesion.setAttribute("AreaText", AreaText);

        String rutaContext = request.getContextPath();
        String destino = "/DatosBancarios.jsp";
        response.sendRedirect(rutaContext + destino);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
