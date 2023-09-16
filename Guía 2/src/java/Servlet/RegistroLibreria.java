/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 *
 * @author ivanp
 */
@WebServlet(name = "RegistroLibreria", urlPatterns = {"/RegistroLibreria"})
public class RegistroLibreria extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Registro de Libro</title>");
            out.println("<style>");
            out.println("body {");
            out.println("background-color:#00FFFF;;");
            out.println("</style>");
            out.println("</head>");
            out.println("<body>");

            String titulo = request.getParameter("titulo");
            String autor = request.getParameter("autor");
            String genero = request.getParameter("genero");
            String descripcion = request.getParameter("descripcion");
            String precio = request.getParameter("precio");
            String stock = request.getParameter("stock");

            String mensaje = "Registro exitoso de libro"; // Puedes personalizar este mensaje

            out.println("<h1>" + mensaje + "</h1>");
            out.println("<strong>Título: </strong> " + titulo);
            out.println("<br><strong>Autor: </strong>" + autor);
            out.println("<br><strong>Género: </strong>" + genero);
            out.println("<br><strong>Descripción: </strong>" + descripcion);
            out.println("<br><strong>Precio: </strong>" + precio);
            out.println("<br><strong>Stock: </strong>" + stock);

            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }
}
